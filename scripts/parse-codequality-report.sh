#!/bin/sh
echo "Markdown Lint has reported errors and as a result the pipeline has failed.  Above you'll find the code quality report which can link you to where the error is in your code.  Additionally below you'll find a table of the errors.  The table has links to the markdown lint rules so you can find more information on how to fix the issue(s).\n" > /tmp/msg
echo "| Rule | File | line | Error | Help |" >> /tmp/msg
echo "|------|------|------|-------|------|" >> /tmp/msg
for i in $(seq 0 $(($(yq 'length' gl-code-quality-report.json -o yaml)-1))); do
    ERROR=$(yq ".[$i].check_name" gl-code-quality-report.json -o yaml | cut -d '/' -f 1)
    DESCRIPTION=$(yq ".[$i].description" gl-code-quality-report.json -o yaml | cut -d ':' -f 2-)
    URL="https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md#$ERROR"
    FILE=$(yq ".[$i].location.path" gl-code-quality-report.json -o yaml)
    LINE=$(yq ".[$i].location.lines.begin" gl-code-quality-report.json -o yaml)
    echo "| [$ERROR]($URL) | $FILE | $LINE | $DESCRIPTION | [❓➡️]($URL) |" >> /tmp/msg
done
echo "\nIf you need more help please reach out on Slack in [#mr-buddies](https://gitlab.slack.com/archives/CLM8K5LF4) or [#handbook](https://gitlab.slack.com/archives/C81PT2ALD)." >> /tmp/msg
cat /tmp/msg
