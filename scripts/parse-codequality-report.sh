#!/bin/bash
REPORT=markdownlint-cli2-codequality.json
ERRORS=()
MSG=""

generate_message() {
    MSG+="## ⚠️ Pipeline Failure - Markdown Lint Errors\n\n"
    MSG+="Markdown Lint has reported errors and as a result the pipeline has failed.  Once the pipeline completes you'll find the code quality report above which can link you to where the error is in your code.  Additionally below you'll find a table of the errors.  The table has links to the markdown lint rules so you can find more information on how to fix the issue(s).\n\n"
    generate_table
    generate_addition_messages
    MSG+="If you need more help please reach out on Slack in [#mr-buddies](https://gitlab.slack.com/archives/CLM8K5LF4) or [#handbook](https://gitlab.slack.com/archives/C81PT2ALD)."
}

generate_table() {
    MSG+="| Rule | File | Line | Error | Help |\n"
    MSG+="|------|------|------|-------|------|\n"
    for i in $(seq 0 $(($(yq 'length' $REPORT -o yaml)-1))); do
      ERROR=$(yq ".[$i].check_name" $REPORT -o yaml | cut -d '/' -f 1)
      DESCRIPTION=$(yq ".[$i].description" $REPORT -o yaml | cut -d ':' -f 2-)
      URL="https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md#$ERROR"
      FILE=$(yq ".[$i].location.path" $REPORT -o yaml)
      LINE=$(yq ".[$i].location.lines.begin" $REPORT -o yaml)
      LOC="https://gitlab.com/gitlab-com/content-sites/handbook/-/blob/$CI_COMMIT_SHA/$FILE#L$LINE"
      ERRORS+=( $ERROR )
      MSG+="| [$ERROR]($URL) | [$FILE]($LOC) | [$LINE]($LOC) | $DESCRIPTION | [➡️]($URL) |\n"
    done
    MSG+="\n"
}

generate_addition_messages() {
    eval ERRORS=($(printf "%q\n" "${ERRORS[@]}" | sort -u))
    for e in ${ERRORS[@]}; do
        case $e in
            MD009)          MSG+="> 🛑 You have a Trailing spaces error.  The [practical handbook edits handbook](https://handbook.gitlab.com/handbook/practical-handbook-edits/) provides more tips, for example [removing trailing whitespaces](https://handbook.gitlab.com/handbook/practical-handbook-edits/#remove-trailing-whitespaces-in-a-merge-request).\n\n"
            ;;
        esac
    done
}

help() {
    cat << EOF
Markdown Lint MR message generator

This script generates a message to post to MRs when there are markdown errors.

Options:
    -r  --report        The report file to process
    -h  --help          Shows this help message
EOF
exit 0
}

while getopts r:h: flag
do
    case "${flag}" in
        r) REPORT=${OPTARG};;
        h) help;;
    esac
done

if ! yq > /dev/null; then
    echo "Error: You need to have yq install.  Exiting..."
    exit 1
fi

if [ ! -f "$REPORT" ]; then
    echo "Error: unable to find report file ($REPORT).  Exiting..."
    exit 1
fi

if ! yq $REPORT -o yaml > /dev/null; then
    echo "Error: YQ is unable to read file.  Exiting..."
    exit $?
fi

generate_message
echo -e $MSG
