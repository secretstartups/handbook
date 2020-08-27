---
layout: markdown_page
title: Cloud Image Process
---

### Goal

Create a clear process, which outlines ownership throughout each sub-flow, with a breakdown of mid-level tasks, order of execution, timelines for delivery and standards for process management.

### Owners

- Strategic Partnerships - Relationship, direction & project
- Omnibus team - Packing and maintaining
- Partner Marketing team - Announcements and promotions

**Due to lack of available resources in the packaging team, Eliran Mesika, Director
of Strategic Partnerships, will be the temporary maintainer of the available cloud images. Once hiring
will complete for the packaging team they will reinstate their ownership as maintainers of the images.**

### Project Building Blocks

- Progress Tracking: GitLab issue
- Project Storage: Omnibus repository
- Documentation: Omnibus section documentation
- Partnership Details & Contacts: dedicated partnership Google Doc
- Credential Management of Cloud Services: GitLab Images 1Password vault
- Marketing Resources: need information of where logos are stored (to add to the process)

### First Time Images

- Project Owner: Strategic Partnerships

1. Introduction & Scope - initiated by Strategic Partnerships:
    1. Create issue for first time image
    1. Gathering of documentation on integrating with the Cloud Partner
    1. Understand joint marketing efforts opportunities for collaboration on launch
    1. Set up GitLab account on Cloud Partner’s system
    1. Optional: Initiate technical call with Omnibus team member and partner tech/product lead (at request of Omnibus team)
    1. Introduce Partner Marketing to marketing contacts from Cloud Partner
1. Technical Implementation - led by Omnibus team:
    1. Scope level of effort
    1. Update issue with Assignee and Due Date
    1. Upload image to cloud service - see it through partner testing:
        1. Follow-up with Cloud Partner’s support team, if needed
        1. If Cloud Partner’s support team is unresponsive, escalate to Strategic Partnerships
    1. Create new section in documentation - align MR with marketing launch
1. Marketing - led by Partner Marketing:
    1. Create marketing issue
    1. Align on joint marketing activities with partner marketing from Cloud Partner:
        1. Joint blog posts (on GitLab and Cloud Partner blogs)
        1. Social network burst
    1. Write image description that will be part of the image on the cloud service (seek assistance from technical writer if necessary)
    1. Align release to market with Product Lead from Cloud Partner
    1. Customer story/quote - locate an existing GitLab customer who would use this feature for a marketing quote or story

Process flow: step 1 must be complete before step 2 & 3 begin. Steps 2 & 3 can start and progress simultaneously.

### Maintaining Existing Images

If an omnibus package has been uploaded - maintenance won’t be necessary for version or security updates.

- Image update/maintenance catalysts:
    - New release
        - Timeline: an image update should be released within 3 business days following the release
    - Security vulnerability update
- Implementation - led by Omnibus team:
    - Create new issue
    - Update image
    - Update documentation
- Technical Info - led by marketing:
    - Update image description and documentation on cloud partner platform

### AWS Image

- Documentation on [AWS AMIs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html)
- Login to [AWS console](https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#Instances:sort=publicIp)
- Creating a new image:
    - Create a new instance and choose the Ubuntu AMI
    - Install GitLab-ee or GitLab-ce via omnibus (change to the appropriate version CE/EE in the commands below):
        - `curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash`
        - `sudo apt-get install gitlab-ce`
        - `gitlab-ctl reconfigure`
    - [Create the new AMI from this instance](http://docs.aws.amazon.com/AWSToolkitVS/latest/UserGuide/tkv-create-ami-from-instance.html)
        - Make the AMI public, change the properties in the console when you right click on this AMI

### AWS Marketplace Offering

- We're already signed up as a seller so there's not need to sign up again.
- To upload new products to AWS follow these steps:
    - Use the [Self Service Listings (SSL)](https://aws.amazon.com/marketplace/management/products/?) tool in the [AWS Marketplace Management Portal](https://aws.amazon.com/marketplace/management/tour/) by navigating to the “Listings” tab.  Choose a pricing model (BYOL for us), complete the metadata including your [shared and scanned AMI](https://aws.amazon.com/marketplace/management/manage-products/?#/manage-amis.unshared)
    - Submit to AWS Marketplace for review before publishing.
    - Monitor the status of your submission by visiting the Self-Service Listings dashboard.
    - Once the listing information has been provided (either through SSL or through email), and AMI ID have been received, the AWS operations team will begin processing the request. If they encounter any issues or when the product page is ready for review, they will contact you via the e-mail alias [aws-marketplace-seller-ops@amazon.com](mailto:aws-marketplace-seller-ops@amazon.com).
    - With any questions you can refer to the [Seller Guide](http://awsmp-loadforms.s3.amazonaws.com/AWS_Marketplace_-_Seller_Guide.pdf) as a reference and if you are unable to find an answer, you can [email](mailto:aws-marketplace-sellers@amazon.com) their support.

### Azure Image

- Manage the account and details on the [publisher portal](https://publish.windowsazure.com/), choose 'Personal' account
    to continue the login.
- Once logged in, you can view the images and the marketing information for the account there
- [How to publish an offer to the Azure Marketplace](https://azure.microsoft.com/en-us/documentation/articles/marketplace-publishing-getting-started/)

1. Create the image:
    - [General non-technical prerequisites](https://azure.microsoft.com/en-us/documentation/articles/marketplace-publishing-pre-requisites/)
    - [VM image technical prerequisites](https://azure.microsoft.com/en-us/documentation/articles/marketplace-publishing-vm-image-creation-prerequisites/)
    - [VM image publishing guide](https://azure.microsoft.com/en-us/documentation/articles/marketplace-publishing-vm-image-creation/)
    - Instructions on adding the marketing content of the image can be found [here](https://azure.microsoft.com/en-us/documentation/articles/marketplace-publishing-push-to-staging/)
1. [Test the image](https://azure.microsoft.com/en-us/documentation/articles/marketplace-publishing-vm-image-test-in-staging/)
1. [Deploy the image to the marketplace](https://azure.microsoft.com/en-us/documentation/articles/marketplace-publishing-push-to-production/)
1. [Getting support as a publisher from MS](https://azure.microsoft.com/en-us/documentation/articles/marketplace-publishing-get-publisher-support/)
