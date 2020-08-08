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

## GDPR

The General Data Protection Regulations came into effect in the European Union in May 2018.  Anyone who handles personal information of Europeans must comply.  In the European Union, privacy of personal information is a right – like human dignity, freedom, equality and the opposite of left.  It is a personal right belonging to the owner of the information and cannot be commoditized, utilized, processed without that person’s consent.  The European Union (EU) and European Economic Area (EEA) diligently try to preserve the rights of their citizens but such efforts were without coordinated and express direction – until now.  The GDPR reflects a unified approach to handling personal, sensitive information in the EU/EEA.

The regulation is implemented in all local privacy laws across the entire EU and EEA region. It applies to all companies selling and storing personal information about citizens in Europe, including companies on other continents.

### What is covered by the GDPR?
Data that can directly or indirectly identify a person is covered by GDPR. GDPR provides citizens of the EU and EEA with greater control over their personal data and assurances that their information is securely protected. According to the GDPR directive, personal data is any information related to a person such a person's
* name 
* photo
* email address
* bank details
* updates on social networking websites
* location details
* medical information
* financial information
* computer IP address

### What rights are established by the GDPR? 

**The right to access** – Individuals have the right to request access to their personal data and to ask how their data is used by the company after it has been gathered. The company must provide a copy of the personal data, free of charge and in electronic
format if requested. 

**The right to be forgotten** – Individuals can withdraw their consent from a company to use their personal data; they have the right to have their data erased.

**The right to data portability** – Individuals have a right to transfer their data from one service provider to another. And it must happen in a commonly used and machine readable format.

**The right to be informed** – this covers any gathering of data by companies.  Individuals must be informed before data is gathered. Individuals must opt in for their data to be gathered, and consent must be freely given rather than implied. 

**The right to have information corrected** – Individuals can have their data updated if it is out of date, incomplete or incorrect. 

**The right to restrict processing** – Individuals can request that their data is not used for processing. Their record can remain in place, but not be used. 

**The right to object** – this includes the right of individuals to stop the processing of their data for direct marketing. There are no exemptions to this rule, and any processing must stop as soon as the request is received. In addition, this right must be made clear to individuals at the very start of any communication.

**The right to be notified** – If there has been a data breach which compromises an individual’s personal data, the individual has a right to be informed within 72 hours of first having become aware of the breach. 

For more information, reach out to GitLab's [Data Protection Office](https://about.gitlab.com/privacy/#data-protection)

## Confidential Information

There are three primary categories of company secrets discussed here: 
* Trade Secrets
* Confidential Information
* Personally Identifiable Information 

Collectively, these things are classified as [RED in our Data Classification Policy](/handbook/engineering/security/data-classification-policy.html#red).  The “Red” designation is for the most sensitive, restricted business information that requires heightened internal controls by limiting access to only those authorized individuals with a need-to-know. 

**Trade Secrets** are those extra bits of information that set our company apart.  It’s that stuff that is so cutting edge that we don’t even want to get a patent on it for fear of letting others know the technology.  If you patent something, the secret ingredients are laid out for the world to see like some crazy technological recipe. Competitors quickly mobilize for comparable product offerings.  But where there is a trade secret, competitors are left in the dark. However, once you release a trade secret – there is no protection.  It is all out there for the world to exploit; this is why we have employees sign non-disclosures. 

Another set of secrets include **Confidential Information**.  This is more than the general confidential stuff.  This includes the provocative business data that helps us run strategically and includes business development plans/strategies, non-public financial information, third party data and government protected information.  (Trade Secrets technically fall under this category but given its unique stature, it gets celebrity status.)  Failing to protect heightened confidential information could cause all sorts of bad feelings with GDPR, EUCI, SOX, EUEC, DOJ, DOC, SEC, OAIC and others.  In other words, if you fail to execute proper controls and restraint, you will be attacked by nothing short of alphabet soup with a badge. 

Other secrets include **Personally Identifiable Information (PII)**.  This is any information that links a particular piece of sensitive information to a specific person. There are various types of PII.  
* Protected Health Information (PHI) which is defined in HIPAA and includes sensitive information about a person’s health or medical condition
* Personal Credit Information (PCI) which includes credit card information
* Personally Identifiable Financial Information (PIFI) which includes banking information, account numbers, and account information

How do you protect PII?  Consider the guidelines in the [Data Classification Policy](/handbook/engineering/security/data-classification-policy.html) and apply it to all of the PII listed above.

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

## Data Protection Impact Assessments (DPIAs)

Recently, the European Union, under the General Data Protection Regulations, require Data Protection Impact Assessments in order to be compliant leaders in the technology world.  Translation: We need to make sure we have our finger on the pulse of any application or system integration involved with GitLab.

While the legal requirements may seem cumbersome, the need is quite apparent. A DPIA ensures all the necessary controls are in place to cover your most important assets - personal information.

For more information, check out GitLab's [DPIA Policy](/handbook/engineering/security/dpia-policy/)

### DPIA General FAQ

**What is a Data Protection Impact Assessment (DPIA)?**
A DPIA is a tool that is utilized to identify and analyze risks for individuals, which exist due to the use of a certain technology or system by an organization in their various roles (as citizens, customers, patients, etc.). On the basis of the outcome of the analysis, the appropriate measures to remedy the risks should be chosen and implemented. A Process for Data Protection Impact Assessment Under the European General Data Protection Regulation is required. 

DPIAs are addressed in [Article 35 of the GDPR](https://gdpr-info.eu/art-35-gdpr/).

**When is a DPIA required?**
A DPIA is only required when the data processing is “likely to result in a high risk to the rights and freedoms of natural persons” (GDPR Article 35(1)), but processors must continuously assess the risks created by their processing activities to identify when a type of processing requires them to conduct a DPIA.   The questions in pay to procure process are to assist you in assessing whether a DPIA is required and should be re-evaluated periodically in light of the list of processing operations that the Supervising authority deems subject to the requirement of a DPIA.

The assessment of whether there is a need for a DPIA, as well as any required DPIA should be carried out *prior to* processing. 

**Why is a DPIA Conducted?**
A DPIA aims to accomplish two outcomes:

1.  Identify the risks associated with processing the collected personal data 
2.  Establish mitigation strategies and tactics to lessen the identified risks

**Who is involved in the DPIA process?**
The GDPR establishes that data controllers are responsible to carry out the assessments. Controllers also seek the advice of the data protection officer and "where appropriate" seek the view of data subjects themselves. (Article 35(2) and (9).)

At GitLab, the DPIA process is initiated by a tool's Business Owner during the [Procure to Pay Process](/handbook/finance/procure-to-pay/#procure-to-pay-process), during which the Business Owner must complete a [Privacy Review issue](https://gitlab.com/gitlab-com/legal-and-compliance/-/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=). If a DPIA is required, the Privacy Officer will work with the Business Owner to accomplish this.

### GitLab's DPIA Process FAQs

**Who is responsible for the DPIA?**
Ultimately, the Business Owner of a tool is the DRI for completing the DPIA. However, there are steps that require input from others at GitLab, including the Privacy Officer and the Data Protection Officer (DPO). These people will walk you through the steps and instruct you on who to consult with for each step. It is important to understand that while the Business Owner is responsible for moving the process forward through the steps, there may be steps during which someone else becomes the DRI for making decisions to address concerns in that step.

**What is considered "personal data"?**
[Article 4 of the GDPR](https://gdpr-info.eu/art-4-gdpr/) sets out the definitions for the law. The first definition is that of "personal data." 

>  ‘personal data’ means any information relating to an identified or identifiable natural person (‘data subject’); an identifiable natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as a name, an identification number, location data, an online identifier or to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural or social identity of that natural person (GDPR Article 4(1).)

**What is considered a "high risk" to rights and freedoms?**
The GDPR does not define "high risk," but The European Commission has issued [Guidelines on Data Protection Impact Assessment [DPIA] and Determining Whether Processing is "Likely to Result in a High Risk" for the Purposes of Regulation 2016/679](http://ec.europa.eu/newsroom/article29/item-detail.cfm?item_id=611236). Please review pages 9-12 of this guidance to see included categories, as well as more tangible examples of "high risk."

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
 
If you provide cookies that fall in these categories, consent is required.  You never who is on a technological diet.  Ask before you give them a cookie.  

## Contract Details

Below are some important conventions in our contracts. 

Price - If a contract lacks a price (or a mechanism for objectively ascertaining price) then the contract isn’t valid. If a contract gets too convoluted with a pricing structure that a reasonable person cannot understand the cost, the contract could lose validity.  No price, no deal.

Delivery

Limitation of Liability

Indemnity - This is where we promise to pay for lawsuits that a customer may have. If we don't clarify here, we could end up paying for things unrelated to our products.

Warranty and Warranty Disclaimer

Governing Law

Survival Clause – this is to make sure that some things in the contract will remain in effect after termination.  We don’t want our customers buying our stuff, promising not to reverse engineer it, cancel the contract and then proceed with the reverse engineering.  Canceling a contract doesn’t cancel the obligation to protect our IP or maintain confidentiality.  These things survive after the end of the contract. 

Intellectual Property – Intellectual Property means patents, copyrights, trademarks, trade secrets, pictures, videos, and even sounds. GitLab protects our IP out of respect for our work and because it gives market differentiation. Any attempt to sell or give away IP ownership has to have permission of the highest levels of management.

Confidentiality  

## Trademarks
 
A trademark is a word, symbol, device, or any combination used to identify and distinguish one's goods or services from others.  It is a form of Intellectual Property and it has value; so much value that using someone else’s trademarks improperly or failing to protect your own can cost companies large amounts of money.   

There are important things to consider when settling on a name and ensuring we get the most value from our mark as possible.

**Strength:** The ideal trademarks are "fanciful" or "arbitrary." Fanciful is just a nice way of saying “made up”.  This category includes marks like Kodak, Xerox, iPod, Lego, etc.; you know, those words that had absolutely no meaning before they were trademarked.   Arbitrary just means that the name and the product are not generally found together or otherwise related.  For instance, computers and apples generally don’t go together; therefore, Apple has a very strong mark.  

**Use:** Unlike patents, in order to protect a trademark – you must use it.  You can’t register it and then let it sit on the shelf until you decide what to do with it.  It must be used AND it must be used in the manner with which you said you would use it. Misusing even a great trademark can make it so common that it can get difficult and expensive to protect. 

**Market:** A trademark does not prevent everyone else from using that same word.  For example, there is Delta Airline, Delta Dental and Delta faucets.  The key distinction here is likelihood of confusion.  If you see “Delta” on a plane – you know that it is the airline company.  If you see “Delta” on a sink faucet, is there a real likelihood that you would expect frequent flier miles from it? Probably not. So two very different companies can use the same name because most people are smart enough to realize that these are very different companies.  

While you can have the same word for *different* markets, you can’t have different words for similar markets if those different words are similar to a trademarked word (back to that likelihood of confusion standard).   

**Registration:** Another thing to consider is if I should register the mark.  In some common law countries (such as US, UK, South Africa, Australia, et al), those who use the mark first get protection. (These trademarks are denoted by a  “TM”.) Admittedly, it can get difficult to determine when that first use occurred; so registration in common law countries helps to clear that date issue up.  In any non-common law country, the first to file owns the mark. To set a date certain and own the mark, marks get registered.  If a mark is registered, it gets an “®”.  Whenever you use an R for a mark, you should also state where the mark is registered. 

**Cultural Significance:**  Last but not least, cultural sensitivity is critical.  Any attempt to market globally and/or translate trademarks must be met with heightened attention.  

* Coors put its slogan, "Turn it loose," into Spanish, where it was read as "Suffer from diarrhea". 
* Clairol introduced the "Mist Stick", a curling iron, into Germany only to find out that "mist" is slang for manure. Not too many people found a use for the "manure stick". 
* In Chinese, the Kentucky Fried Chicken slogan "finger-lickin' good" came out as "eat your fingers off". 
* An American T-shirt maker in Miami printed shirts for the Spanish market which promoted the Pope's visit. Instead of "I saw the Pope" (el Papa), the shirts read "I saw the potato" (la papa). 
* In Italy, a campaign for Schweppes Tonic Water translated the name into "Schweppes Toilet Water". 
* Pepsi's "Come alive with the Pepsi Generation" translated into "Pepsi brings your ancestors back from the grave", in Chinese. 
* When Parker Pen marketed a ball-point pen in Mexico, its ads were supposed to have read, "it won't leak in your pocket and embarrass you". Instead, the company thought that the word "embarazar" (to impregnate) meant to embarrass, so the ad read: "It won't leak in your pocket and make you pregnant". 
* The Coca-Cola name in China was first read as "Ke-kou-ke- la", meaning "Bite the wax tadpole" or "female horse stuffed with wax", depending on the dialect. Coke then researched 40,000 characters to find a phonetic equivalent "ko-kou-ko- le", translating into "happiness in the mouth".

Like with any conversation, it is critical to be aware of how your words are received in different cultures. 

(Note: Trademarks aren’t just words.  As mentioned above, trademarks can be symbols, as well, and this catetgory is very broad. Take the following examples -
* **Colors** Owens Corning trademarked the color pink for insulation. No other company can make insulation that color.  If you ever see insulation that is pink, you know who made it. John Deere trademarked a specific color of green for farm equipment.  McDonald’s has the Golden Arches.  
* **Sounds**  NBC trademarked the chimes that you hear during intermissions. Intel has a trademarked sound. 
* **Shapes** One of the most famous non-word trademarks is the shape of a Coke bottle.  Once you start getting into how something looks, it is called trade dress. Trade dress is a fancy term for trademarked product presentation.

## Resellers

Resellers buy from the Manufacturer and, as their name indicates, resell the product.  Often, resellers receive a reduction in price because they are saving a company time and money in finding and closing with buyers.  Once a reseller purchases the product, it is theirs.  A company can have no control over what resellers decide to do with it  - except do something illegal with it.  

Aside from requiring you to not break any laws, once a reseller buys the product, a company can have no more control with what the reseller does with it.  The company can’t tell resellers how much to charge others, to combine it with other products, to sell (or not to sell) in certain locales.  For all intents and purposes, the product is the resellers'.  In additiona, the resellers' agreements are theirs to manage.  The customers will transact directly with resellers. And, if the customers get mad, it is resellers they will sue.  If a company were to try to start dictating what a reseller can and can’t do, it could trigger antitrust laws.  

An important fact to note is that because a company is selling to resellers, resellers are major customers of the company.  Why does that title matter?  Because companies cannot *pay* customers to buy from them.  This is called a kickback.  If a company pays a reseller, they could run afoul of anti-bribery laws. 

Resellers make money by buying low and selling high. Resellers control their own sales, revenues, losses and markets. A good reseller makes a profit running their business. 

### Distributors  
The nuance here is that a distributor is a glorified reseller.  Where a reseller sells to the end user, distributors sell to resellers.  

### Representative or Agent  
This is different than a reseller.  An agent directs customers to the company, rather than selling to the customer themselves.  Unlike with a Reseller, the agreement is between the company and the customer.  Agents wear the company's hat and hold themselves out as an extension of the company.  Companies pay Agents a percentage of the sales; but those sales are at full price.  

If an agent does something pretty bad, the customers would sue the company directly, which is why companies will usually ensure they have a strong indemnification clause in their agreement with Agents.  

**The nuances in these relationship will govern the contract terms.  The relationship also governs which laws apply.**

For more information, see the [Partner Code of Ethics](/handbook/people-group/code-of-conduct/#partner-code-of-ethics)

 
## Export

Governments throughout the world pose restrictions on their technology.  Various countries state that if the technology is of their origin, it falls under the laws of their country.  

GitLab US technology is subject to US law.  US law states their technology cannot be exported to Iran, Sudan, Syria, Cuba, North Korea or the Crimean Region of the Ukraine. US law also has a list of entities to whom they prohibit passing the technology.  

A prohibition is a prohibition.  There are no loopholes.  If a country or a person is restricted, they are not allowed to see the guts of the technology through other mechanisms.  There simply aren’t loopholes in export law.  The only way you can get around the restrictions is to get permission from the government directly.  This permission is provided in the form of a license. 

Violating export laws can result in civil and criminal penalties for the officers of the company and the individuals involved.  

For more information, check out:
[Export Policy](/handbook/people-group/code-of-conduct/#trade-compliance-exportimport-control)
[Export Procedure](/handbook/business-ops/order-processing/#trade-compliance-export--import-and-visual-compliance-tool-in-salesforce)


Questions about Compliance?  Contact dpo@gitlab.com
