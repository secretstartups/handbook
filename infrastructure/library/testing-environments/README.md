<!-- 
	This will serve as the description for the Epic - https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/42.
	It will not appear as part of the blueprint. I believe the MR is the best place to get feedback on the draft.
 -->

**Progress:** 0%

**Blueprint:** https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/18636


# Acceptance Criteria

## Data Integrity

- [ ] Develop scheduled automation that instantiates a database from production backups, scrubs the data, and makes it available as a snapshot for use in testing environments.
	- [ ] Ensure the process treats all replicated data as production data with all the necessary precautions to safeguard our customers’ intellectual property.
	- [ ] Scrub and sanitize the production data leaving no traces of identifiable information that could identify our customers and their projects.
	- [ ] Scale down the clean data to N% the size of the full dataset, keeping proportional relationships, and make it available for use by any member of engineering.
- [ ] Create a process with the Delivery team that refreshes the staging database on a set schedule.
- [ ] Provide on-the-fly provisioning of a scaled down database using Docker images and volumes.


## The Full-Sized Testing Environment: Staging

We’ll refer to the staging environment as “Staging”.

- Staging should be permanently addressable, but should not run indefinitely.
- Staging should meet–or exceed!–the size of the production environment: measuring both data and infrastructure resources.
- Staging should be architected to mirror our production infrastructure.


# Dependencies

Our success partially depends on the delivery of database replicas by
[\[KR\]\[Availability\] Implement 4 significant availability features to improve database reliability (autovacuum, masterless backups, pgrepack, replica on ZFS)].

