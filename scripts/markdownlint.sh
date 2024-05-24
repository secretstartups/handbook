if ! [ -f markdownlint-cli2-codequality.json ]; then
  echo "[]" > markdownlint-cli2-codequality.json
fi

BRANCH_POINT=$(git merge-base origin/$CI_MERGE_REQUEST_TARGET_BRANCH_NAME origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME)

git diff --name-only $BRANCH_POINT origin/$CI_MERGE_REQUEST_SOURCE_BRANCH_NAME | grep '\.md$' | xargs markdownlint-cli2