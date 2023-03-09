#!/usr/bin/python3
#
# This simple script allows us to create issues using the glab client from the
# contents of a yaml file.
#
# To run the script:
#
#
import os
import subprocess
import sys
import argparse
import yaml

# Global Options
epic = None
interactive = False
milestone = None

def process_issues(issues, replace, parent=None):
   global epic, interactive, milestone
   # Validate every issue has a title
   for issue in issues:
      if not "title" in issue:
         print("There are issues without a title.  Please fix and try again")
         exit(1)

   for issue in issues:
      glab_cmd = ["glab", "issue", "create", "--no-editor", "-y"]
      title = issue['title']

      description = ""
      if 'description' in issue:
         description = issue['description']
         # Replace any words we need to replace
         if replace and len(replace) > 0:
            for r in replace:
               key, value = r.split("=")
               title = title.replace("{" + key + "}", value)
               if 'description' in issue:
                  description = description.replace("{" + key + "}", value)

      if epic:
         description += f"\n/epic &{epic}"
      # Build the command-line for the glab command
      glab_cmd.append("-t")
      glab_cmd.append(f"{title}")
      if 'description' in issue or epic:
         glab_cmd.append("-d")
         glab_cmd.append(f"{description}")
      if "assignee" in issue:
         glab_cmd.append("-a")
         glab_cmd.append(f"{issue['assignee']}")
      if "label" in issue:
         glab_cmd.append("-l")
         glab_cmd.append(f"{issue['label']}")
      if milestone:
         glab_cmd.append("-m")
         glab_cmd.append(f"{milestone}")
      if parent:
         glab_cmd.append("--linked-issues")
         glab_cmd.append(f"{parent}")
         if 'link-type' in issue:
            glab_cmd.append("--link-type")
            glab_cmd.append(f"{issue['link-type']}")

      cmd_output = subprocess.run(glab_cmd, stdout=subprocess.PIPE)

      if interactive:
         while True:
            user_input = input("Do one, do all or Print Output: (One/All/Print/Quit) ")
            if user_input.lower() in "one":
               break;
            elif user_input.lower() in "all":
               do_all=True
               break;
            elif user_input.lower() in "print":
               print(cmd_output.stdout.decode('utf-8'))
            elif user_input.lower() in "quit":
               print("Stopping issue creation...")
               exit(0)
            else:
               print("Unknown option...")

      if issue.get("issues", None):
         print(f"Sub issues found... Number of subissues = {len(issue['issues'])}")
         parent_issue_id = cmd_output.stdout.decode('utf-8').split('/issues/')[1].strip()
         print(f"Parent = {parent_issue_id}")
         process_issues(issue['issues'], replace, parent_issue_id)

def main(argv):
   global epic, interactive, milestone

   # Argument parsing
   argParser = argparse.ArgumentParser()
   argParser.add_argument("-i", "--interactive",
      help="Don't ask questions, just udo everything in the yamlfile",
      action='store_true')
   argParser.add_argument("-f", "--yaml-file",
      help="The yaml file to turn in to GitLab issues", required=True)
   argParser.add_argument("-e", "--epic", type=int,
      help="The epic to associate with issues (this will append /epic &<epic number> to your issue)")
   argParser.add_argument("-r", "--replace",
      help="Format <key>=<value> - This replaces {key} found in the yaml file with value",
      action='append', default=[])
   argParser.add_argument("-t", "--token",
      help="GitLab Personal Access token to pass to glab", required=True)
   argParser.add_argument("-m", "--milestone",
      help="Associated a milestone with all issues created (This should be the milestone id)", default=None)
   args = argParser.parse_args()

   os.environ['GITLAB_TOKEN'] = args.token
   epic = args.epic
   milestone = args.milestone
   interactive = args.interactive

   # Road YAML File
   f = open(args.yaml_file)
   issues_file = yaml.safe_load(f)

   # Process issues in yaml file
   process_issues(issues_file['issues'], args.replace)

if __name__ == "__main__":
   main(sys.argv[1:])
