---
layout: handbook-page-toc
title: "Compliance for Your Average Human"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Principle of Compliance

Everything we do matters. At GitLab, we comply with the policies and procedures because it is the right thing to do and because we value integrity. Some people attempt to find so many loopholes in the rules that they actually alter the underlying principle of the matter. But at GitLab, principles matter, and we are serious about compliance.  

## Confidential Information

There are three primary categories of company secrets discussed here: 
* Trade Secrets
* Confidential Information
* Personally Identifiable Information 

Collectively, these things are classified as [RED in our Data Classification Policy](/handbook/engineering/security/data-classification-standard.html#red).  The “Red” designation is for the most sensitive, restricted business information that requires heightened internal controls by limiting access to only those authorized individuals with a need-to-know. 

**Trade Secrets** are those extra bits of information that set our company apart.  It’s that stuff that is so cutting edge that we don’t even want to get a patent on it for fear of letting others know the technology.  If you patent something, the secret ingredients are laid out for the world to see like some crazy technological recipe. Competitors quickly mobilize for comparable product offerings.  But where there is a trade secret, competitors are left in the dark. However, once you release a trade secret – there is no protection.  It is all out there for the world to exploit; this is why we have employees sign non-disclosures. 

Another set of secrets include **Confidential Information**.  This is more than the general confidential stuff.  This includes the provocative business data that helps us run strategically and includes business development plans/strategies, non-public financial information, third party data and government protected information.  (Trade Secrets technically fall under this category but given its unique stature, it gets celebrity status.)  Failing to protect heightened confidential information could cause all sorts of bad feelings with GDPR, EUCI, SOX, EUEC, DOJ, DOC, SEC, OAIC and others.  In other words, if you fail to execute proper controls and restraint, you will be attacked by nothing short of alphabet soup with a badge. 

Other secrets include **Personally Identifiable Information (PII)**.  This is any information that links a particular piece of sensitive information to a specific person. There are various types of PII.  
* Protected Health Information (PHI) which is defined in HIPAA and includes sensitive information about a person’s health or medical condition
* Personal Credit Information (PCI) which includes credit card information
* Personally Identifiable Financial Information (PIFI) which includes banking information, account numbers, and account information

How do you protect PII?  Consider the guidelines in the [Data Classification Policy](/handbook/engineering/security/data-classification-standard.html) and apply it to all of the PII listed above.

Unauthorized disclosure of Red, restricted information, could cause serious adverse impact to GitLab, its clients, business partners, and suppliers. All GitLab team members work to ensure proper protection for all data classified as Red.  

### Personal Credit Information (PCI)

Credit card information falls into the bucket of Personal Credit Information (PCI).  PCI requires heightened levels of protection - much like Personal Health Information (PHI), Personal Identifiable Information (PII), Personal Financial Information (PFI) and other Sensitive Information.  PCI is restricted information with a data classification of Red. PCI isn’t only governed by law; it is also heavily regulated by the credit card industry. Failure to properly handle credit card or bank information could result in the company not being able to process credit card orders.  Nobody wants to resort to checks – that is sooo 1980’s.  So, please, keep in mind - and apply - the Data Classification requirements for a Red level when dealing with PCI, PHI, PFI, PII, trade secrets. 

The fundamental requirements for PCI are:
1. Must have a maintained firewall;
2. Custom passwords and unique security measures;
3. Secure/encrypt cardholder data at rest;
4. Encrypt any cardholder data transmitted;
5. Current, active and updated anti-virus must be installed;
6. Secured systems and applications must be sustained;
7. Access is on a need-to-know basis only;
8. Unique data identifiers are required for anyone who has access to cardholder data;
9. Physical access to cardholder data must be restricted;
10. Access to cardholder data needs to be logged and reported;
11. Ensure that security system and process tests are run frequently; and
12. There should be policies around all of the above.

When dealing with PCI, at no time should an entire credit card number be visible in its full form.  Generally, only the last four numbers of a card should be maintained.  Please make sure that there is no credit information ever jotted down on sticky notes, files, napkins, etc.  If you are aware of any credit card numbers that are not secure, please alert Compliance. 

## CAN-SPAM

Controlling the Assault of Non-Solicited Pornography and Marketing Act (CAN-SPAM) came into effect in the United States in 2003 and impacts all mass electronic marketing communications. Other countries have similar e-mail spam laws. 

CAN-SPAM sets forth certain requirements that must be honored when sending out mass emails and other marketing materials. 

**Keep the header honest.**  The reader needs to be able to identify who is sending them messages.  The email address of the sender should properly denote GitLab as the sender of the company material.  

**Keep the subject line honest.**  Don’t mislead the reader or otherwise use deceitful or inaccurate subject lines to compel someone to open the email. Be honest, impactful and short.  You can create urgency but, most importantly, create value.  In fact, the more authentic and clear the email, the less likely it is to be marked as spam or junk mail.

**Acknowledge that it is an ad.**  This doesn’t mean that you have to go over the top and begin each Subject Line with “Hello, I am an advertisement.”  It just means that the sender has to know it is marketing material sent by GitLab. Put it in the subject line or put it in the body - just put it somewhere. 

**Include location**  There needs to be a valid business address listed in the emails.  This helps ensure that the recipient has a clear and legal point of reference to double check the authenticity of the sender.

**Opt-out options are not oppressive.**  When people receive mail that they don’t want, there must be an easy way to unsubscribe from the lists.  And “easy” means my grandmother should be able to figure it out as quickly as my 15-year old nephew.  In some jurisdictions, every email sent after an opt-out is selected may be subject to a fine. 

**Opt-outs need to be quick.**  Ideally, an opt-out will occur automatically or within a business day or two.  If you take more than ten (10) business days to remove an email from a mailing list, things will get messy quickly.   

**Stay Diligent.**  If you use a third party to manage business emails, be aware that GitLab could still be on the hook for any wrongdoing.  Make sure that any mass communications are reviewed by someone knowledgeable in the spam laws.  

We care about our customers and their protection is our focus. For an additional incentive, be aware that failing to comply can cost a lot of money on a per email basis - up to $41,000 per violation.  

## Cookies and Consent
 
Privacy and Electronic Communications Regulations (PECR) sit alongside the Data Protection Act and the GDPR. They give people specific privacy rights in relation to electronic communications.  PECR sets specific rules around marketing, secure communication services and customer privacy (as regards traffic and location data, itemised billing, line identification, directory listings) and - you guessed it - cookies (which is broadly defined).
 
There are important factors to consider with cookies in general. 
If you use cookies you must:
* say what cookies will be sent;
* explain what the cookies will do; and
* obtain consent to store cookies on devices.
 
PECR expands the definition of cookies to include “similar technologies” like fingerprinting techniques. Therefore, unless an exemption applies, any use of device fingerprinting requires the provision of clear and comprehensive information as well as the consent of the user or subscriber.
 
Consent is not required if the cookie is used: “(a) for the sole purpose of carrying out the transmission of a communication over an electronic communications network; or  (b) where such storage or access is strictly necessary for the provision of an information society service requested by the subscriber or user.”
 
Please note that cookies for analytics purposes are not “strictly necessary.” 
 
PECR applies to any technology that stores or accesses information on the user’s device. This could include, for example, HTML5 local storage, Local Shared Objects and fingerprinting techniques.
 
Device fingerprinting is a technique that involves combining a set of information elements in order to uniquely identify a particular device. Examples of the information elements that device fingerprinting can single out, link, or infer include (but are not limited to):
* data derived from the configuration of a device;
* data exposed by the use of particular network protocols;
* CSS information;
* JavaScript objects;
* HTTP header information,
* clock information;
* TCP stack variation;
* installed fonts;
* installed plugins within the browser; and
* use of any APIs (internal and/or external).
 
It is also possible to combine these elements with other information, such as IP addresses or unique identifiers, etc.
 
PECR also applies to technologies like scripts, tracking pixels and plugins, wherever these are used.
 
If you provide cookies that fall in these categories, consent is required.  You never know who is on a technological diet.  Ask before you give them a cookie.  

## Export

Governments throughout the world pose restrictions on their technology.  Various countries state that if the technology is of their origin, it falls under the laws of their country.  

GitLab US technology is subject to US law.  US law states their technology cannot be exported to Iran, Sudan, Syria, Cuba, North Korea or the Crimean Region of the Ukraine. US law also has a list of entities to whom they prohibit passing the technology.  

A prohibition is a prohibition.  There are no loopholes.  If a country or a person is restricted, they are not allowed to see the guts of the technology through other mechanisms.  There simply aren’t loopholes in export law.  The only way you can get around the restrictions is to get permission from the government directly.  This permission is provided in the form of a license. 

Violating export laws can result in civil and criminal penalties for the officers of the company and the individuals involved.  

For more information, check out:
[Export Policy](/handbook/people-group/code-of-conduct/#trade-compliance-exportimport-control)
[Export Procedure](/handbook/business-ops/order-processing/#trade-compliance-export--import-and-visual-compliance-tool-in-salesforce)


Questions about Compliance?  Contact dpo@gitlab.com
