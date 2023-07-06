#!/bin/sh

echo Performing word count on the Handbook...
WORDCOUNT=$(find content/handbook -type f \( -name "*.md" -or -name "*.md.erb" \) -exec cat {} + | wc -w)
echo Performing page count on the Handbook...
PAGECOUNT=$(find content/handbook -type f | wc -l)
TODAY=$(date +%Y-%m-%d)

mr_count () {
    echo Updating counts for the handbook.
    COUNT_FILE=data/handbook-count.csv
    # Append latest data
    echo $TODAY,$WORDCOUNT,$PAGECOUNT,Live Count,,, >> $COUNT_FILE
}

quarterly_count () {
    echo Updating the quartly count for the handbook.
    COUNT_FILE=data/handbook-count.csv
    echo $TODAY,$WORDCOUNT,$PAGECOUNT,,,, >> $COUNT_FILE
}

legacy_handbook_count () {
    echo Starting www-gitlab-com quartly count
    COUNT_FILE=data/about-count.csv
    REPO="https://gitlab.com/gitlab-com/www-gitlab-com.git"
    # Clone legacy repo
    echo "Cloning the www-gitlab-com repo"
    git clone $REPO /tmp/www-gitlab-com
    echo Performing word count...
    LEGACY_WORD_COUNT=$(find /tmp/www-gitlab-com/sites/handbook/source/handbook -type f \( -name "*.md" -or -name "*.md.erb" \) -exec cat {} + | wc -w)
    echo Performing page count...
    LEGACY_PAGE_COUNT=$(grep -l -r "\- TOC" /tmp/www-gitlab-com/* | wc -l)
    echo $TODAY,$LEGACY_WORD_COUNT,$LEGACY_PAGE_COUNT,,,, >> $COUNT_FILE
    echo www-gitlab-com quarterly count complete.
}

push_to_main () {
    git config --global user.email "${GIT_USER_EMAIL:-$CI_EMAIL}"
    git config --global user.name "${GIT_USER_NAME:-$CI_USERNAME}"
    git commit -m "Update handbook word and page counts"
    git push origin "${CI_COMMIT_BRANCH}"
}

if [ "$RUN_TYPE" = "quarterly" ]; then
    quarterly_count
    legacy_handbook_count
    push_to_main
else
    mr_count
fi
