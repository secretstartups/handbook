#!/bin/zsh

# Stop on error
set -e

#Set up 1password and glab
export OP_PLUGIN_ALIASES_SOURCED=1
alias glab="op plugin run -- glab"

# Globals
HANDBOOK_REPO=$(git rev-parse --show-toplevel)

# Command line options
DUBDUBDUB_REPO=$(git rev-parse --show-toplevel)/../www-gitlab-com
IS_HANDBOOK=false
SECTION=job-families
DIRECTORY_TO_SPLIT=job-families
BRANCH_NAME=add-$SECTION-to-handbook
TITLE="Job Families"
ICON="fa-solid fa-users"

if [[ $HANDBOOK == true ]]; then
    DIRECTORY_TO_SPLIT=sites/handbook/source/handbook/$SECTION
    NEW_SECTION=content/handbook/$SECTION
else
    DIRECTORY_TO_SPLIT=sites/uncategorized/source/$SECTION
    NEW_SECTION=content/$SECTION
fi

# check for directories
if [ ! -d $DUBDUBDUB_REPO ]; then
    echo Unable located the dubdubdub directory $DUBDUBDUB_REPO.
    exit 1
fi

# Make sure we're on Master and we have have all the latest commits for handbook
echo "Making sure both repos are up to date..."
cd $HANDBOOK_REPO
git checkout main
git pull
# Make sure we're on Master and we have have all the latest commits for dubdubdub
cd $DUBDUBDUB_REPO
git checkout master
git pull

# Prepare directories
echo "Making a copy of the www-gitlab-com repo directory..."
mkdir /tmp/gitlab-migration
cp -r $DUBDUBDUB_REPO /tmp/gitlab-migration/www-gitlab-com
cd /tmp/gitlab-migration/www-gitlab-com

# subtree split the directories
echo "Performing git subtree split... this might take a few minutes..."
git remote rm origin
git filter-branch --subdirectory-filter $DIRECTORY_TO_SPLIT -- --all
git filter-branch -f --index-filter 'git ls-files -s | sed -e "s/\t\"*/&$SECTION\//" |
    GIT_INDEX_FILE=$GIT_INDEX_FILE.new \
        git update-index --index-info &&
 mv "$GIT_INDEX_FILE.new" "$GIT_INDEX_FILE"' HEAD

# Clean up everything outside of the content and .git directories
echo "Cleaning up www-gitlab-com repo before commit and migration..."
for i in $(/bin/ls -a); do
    case $i in
    .)              continue
                    ;;
    ..)             continue
                    ;;
    .git)           continue
                    ;;
    $SECTION)      continue
                    ;;
    *)
        rm -rf $i
    esac
done

# Migrate the content from dubdubdub to handbook using git pull
# This preserves the git history of all the files we're pulling in
echo "Performing migration from www-gitlab-com copy to handbook..."
cd $HANDBOOK_REPO
git checkout -b $BRANCH_NAME
git remote add $SECTION /tmp/gitlab-migration/www-gitlab-com
git pull $SECTION master --allow-unrelated-histories
git mv $SECTION content/

echo "Creating index page for new content..."
# Create an index page so we can view the content
cat << EOF > content/$SECTION/_index.md
---
title: $TITLE
cascade:
  type: docs
menu:
  main:
    name: $TITLE
    pre: '<i class="$ICON"></i>'
---
EOF

# Do a find and replace on all handbook and company links
if [[ $HANDBOOK == false ]]; then
  echo "Finding and replacing broken handbook links..."
  find . -type f -name "*.md" -print0 | xargs -0 sed -i '' -e 's~](/handbook~](https://about.gitlab.com/handbook~g'
fi
if [[ $SECTION != "company" ]]; then
  echo "Finding and replacing broken company links..."
  find . -type f -name "*.md" -print0 | xargs -0 sed -i '' -e 's~](/company~](https://about.gitlab.com/company~g'
fi

# Run markdownlint to try to fix as many errors as possible
echo "Runnig markdownlint in fix mode..."
sed -i '' -e 's~"fix": false,~"fix": true,~g' .markdownlint-cli2.jsonc
sed -i '' -e 's~fix: false~fix: true~g' .markdownlint.yaml
# Disable fail on error as we're expecting markdown lint to still have errors
set +e
docker run -v ${PWD}:/workdir davidanson/markdownlint-cli2:next -f "content/**/*.md"
set -e
sed -i '' -e '$ d' .markdownlint.yaml
sed -i '' -e 's~"fix": true,~"fix": false,~g' .markdownlint-cli2.jsonc
sed -i '' -e 's~fix: true~fix: false~g' .markdownlint.yaml

# Commit the result and raise an MR against the new handbook repo
echo "Commiting changes and rasing a new MR..."
git add .
git commit -m "Migrate $SECTION from www-gitlab-com to handbook"

# Raise the MR using glab cli
TITLE="Migrated $SECTION from www-gitlab-com to here"
DESCRIPTION="
This MR is the result of a subtree split and git pull from www-gitlab-com.  We have run markdown lint in fix mode
to fix most markdown liniting errors although a number will still persist.  We have updated links which point to
\`/handbook\` and \`/company\` to point to the full URLs on the Handbook.
"
HANDBOOK_MR_OUTPUT=$(glab mr create --push --no-editor -y -b main -a jamiemaynard -l "handbook::operations" -t "$TITLE" -d "$DESCRIPTION")
echo $HANDBOOK_MR_OUTPUT

echo "Moving on to clean up of www-gitlab-com repo..."
cd $DUBDUBDUB_REPO
# Setup redirects in dubdubdub
echo "Setting up redirects in www-gitlab-com..."
git checkout -b removing-$SECTION-and-adding-redirects
# Replace existing redirects with new URL
gsed -i -e "s~target: /$SECTION~target: https://handbook.gitlab.com/$SECTION~g" data/redirects.yml
# Add new redirects for migrated content
for d in $(find $DIRECTORY_TO_SPLIT -type d | gsed -e "s+$DIRECTORY_TO_SPLIT+$SECTION+g"); do
  target_url="https://handbook.gitlab.com/$d"
  if [[ $(grep $target_url data/redirects.yml) ]]; then
    gsed -i -e "s~  target: $target_url~    - /$d\n    - /$d/\n  target: $target_url~" data/redirects.yml
  else
    cat << EOF >> data/redirects.yml
- sources:
    - /$d
  target: $target_url
  comp_op: "^~"
EOF
  fi
done

# Remove old content and replace with a README.md
echo "Removing migrated content from www-gitlab-com..."
git rm -r $DIRECTORY_TO_SPLIT/*
cat << EOF > README.md
# $TITLE has been migrated

This handbook content has been migrated to the new handbook site and as such this directory
has been locked from further changes.  If you are looking for this content in the reposity
you can find it at:

https://gitlab.com/gitlab-com/content-sites/handbook/content/$NEW_SECTION

If you need help or assitance with this please reach out to @jamiemaynard (Develop/Handbooks) or
@marshall007 (DRI Content Sites).  Alternatively ask your questions on slack in [#handbook](https://gitlab.slack.com/archives/C81PT2ALD)

EOF

echo "Committing changes and raising a new MR on www-gitlab.com..."
git add .
git commit -m "Removed migrated $SECTION handbook content"
TITLE="Remove and clean up $SECTION following migration"
DESCRIPTION="
This MR adds redirects for the $SECTION section of the handbook that has been migrated.
It removes all migrated code and replaces the content with a README.md advising
where this section of the handbooks code has moved to and where to get help.
"
WWW_MR_OUTPUT=$(glab mr create --push --no-editor -y -b master -a jamiemaynard -l "handbook::operations" -t "$TITLE" -d "$DESCRIPTION")
echo $WWW_MR_OUTPUT

echo "Cleaning up the copy of www-gitlab-com repo..."
rm -rf /tmp/gitlab-migration

cat << EOF
Migration complete...

Please complete the following tasks:

[ ] In www-gitlab-com please lock $DIRECTORY_TO_SPLIT in the GitLab frontend
[ ] Review the MR in handbook for the new content
    $HANDBOOK_MR_OUTPUT
[ ] Fix outstanding markdown lint errors
[ ] Merge MR for handbook
[ ] Review the MR in www-gitlab-com for the removal of the old content and merge
    $WWW_MR_OUTPUT
[ ] Advise on Slack the content has been successful migrated
EOF
