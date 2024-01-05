#!/bin/sh

PUBLIC_DATA_DIR="data/public"
PUBLIC_HANDBOOK_REF=${PUBLIC_HANDBOOK_REF:-"master"}

mkdir -p "$PUBLIC_DATA_DIR"

# Download the data files from the public handbook repo
data_files="\
addressable_markets.yml \
domain_expertise.yml \
sections.yml \
stages.yml \
projects.yml"

for file in $data_files; do
	echo "fetching $file ..."
	wget -qO "$PUBLIC_DATA_DIR/$file" "https://gitlab.com/gitlab-com/www-gitlab-com/-/raw/${PUBLIC_HANDBOOK_REF}/data/${file}"
done

# Download the team.yml file direct from the public handbook website.
# The combined team.yml is generated, so it's not checked in the repo.
# See www-gitlab-com/doc/team_database.md for more details.
echo "fetching team.yml..."
wget -qO "$PUBLIC_DATA_DIR/team.yml" "https://about.gitlab.com/company/team/team.yml"
