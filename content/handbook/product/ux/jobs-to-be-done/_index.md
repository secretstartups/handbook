---
title: Jobs to be Done at GitLab
description: >-
  JTBD is a framework for viewing products and solutions in terms of jobs
  customers want to achieve. It's about understanding the goals that people want
  to accomplish.
---

Jobs to be Done (JTBD) is a framework for viewing products and solutions from the user's perspective. It's about understanding what people want to achieve so we can build a better solution that reflects those desires. The purpose of these materials is to empower GitLab team members to uncover user needs, identify strategic opportunities, validate existing plans, and open the door to innovation.

Much of what follows on this page and our other JTBD pages (Playbook, Deep Dive) borrows heavily from [Jim Kalbach](https://www.jtbdtoolkit.com/) and his book, “[The Jobs to be Done Playbook](https://www.google.com/search?gs_ssp=eJzj4tVP1zc0TMszSUk3sDAyYPSSyMpPKlYoyVdISlVIyc9LVSjISaxMys_PBgD8Tw0e&q=jobs+to+be+done+playbook&rlz=1C5CHFA_enUS977US989&oq=jobs+to+be+done+pla&gs_lcrp=EgZjaHJvbWUqBwgBEC4YgAQyCggAEAAY4wIYgAQyBwgBEC4YgAQyBggCEEUYOTIHCAMQABiABDIHCAQQABiABDIGCAUQRRhBMgYIBhBFGDwyBggHEEUYPNIBCDkxNDNqMGo3qAIAsAIA&sourceid=chrome&ie=UTF-8)”. 

This page covers the 'what' of Jobs to be Done. To skip to the 'how', or the _practice_ of doing Jobs to be Done research, head over to the [playbook](link to playbook).

## Anatomy of a JTBD Canvas

A Job to be Done Canvas is a way to arrange all of the elements of a [main job](#main-job-where-do-you-want-to-innovate) in an easy to read format, well-suited for iteration, sharing, and documentation. We use canvases throughout our [JTBD playbook](link to playbook HB page), as part of our [FigJam template](https://www.figma.com/file/Z4lsAOLH1ANN3pstQFYgSk/Jobs-to-be-done----Playbook-Template?type=whiteboard&node-id=0%3A1&t=7nzgsnW0igvXKwjr-1).
Each canvas has a number of different sections which combine to provide a **holistic picture of a main job and its job performer**. It can be a bit daunting, so here’s a breakdown of each part:

![JTBD canvas](JTBD_Canvas.png)

### **Main Job:** Where do you want to innovate?

The main job serves as the central focus for innovation efforts. It represents a goal and has specific criteria. It should be formulated using **action verbs**, devoid of references to technology, solutions, or methods, and avoid complex combinations. The level of granularity for the main job can vary, depending on the innovation's purpose and feasibility. If the main job isn’t obvious, move to the related jobs field on the canvas to explore the domain.

Main jobs hint at a task that can be completed, for example:

- Buy a new home
- Write a book
- Review code

Bad examples:

- Purchase the house at 123 Main Street for less than asking. (Too specific)
- Be a best selling author (Aspirational goal, but not a main job)

### **Job Performer:** Who do you want to innovate for?

To innovate effectively, start by identifying and understanding the specific job performer for the task, emphasizing that it refers to the person executing the job. Focus your research on one job performer at a time and align it with the main job, ensuring a clear and straightforward approach. A job performer is rarely the same as someone’s job title.

For the examples above, our job performers would be:

- New home buyer
- Author
- Code reviewer

Bad examples:

- Millionaire real estate investor (being a millionaire real estate investor is a relevant circumstance to how the job gets done, and what kind of homes they would be looking for, but this doesn’t describe the main job that’s getting done – this person could be buying, selling, renovating, etc.)
- Steven King (job performers are not a specific person)
- Software Engineer (job title, not a job performer)


### Note: Job Performers vs. Personas

A common area of confusion is the difference between a job performer and a [user persona](/handbook/product/personas/#user-personas). In short, a persona is more or less at the level of a job title, a Software Developer, for instance. However, a software developer may take on a number of different main jobs as part of their role (writing code, reviewing code, maintaining infrastructure, and so on). Similarly, other job titles or personas may also do the main jobs we look at in JTBD (an engineering manager may also review code, for example). 

Both personas and job performers are useful constructs in helping to understand and improve your product, but it is important not to conflate the two. Job performers in the JTBD framework don’t correspond to job titles (some exceptions apply) - they tend to live ‘closer’ to the main job we’re investigating. For instance, we might have a dozen personas that each ‘review code’ as part of their jobs - but if the experience of reviewing code is the one we’re focused on we only need to have one job performer - a ‘code reviewer’ - that encapsulates what all of these different personas have to go through in order to do that part of their jobs.


### **Outcomes:** How does the job performer measure the success of getting the job done?

Outcomes represent how the job performer gauges the success of completing the main job and are often subjective. An outcome statement is a sentence with a specific formula:

1. A verb indicating a **direction** of change (e.g., minimize, reduce, decrease).
2. A unit of **measure**, often time, effort, or likelihood.
3. Qualifiers that make the outcome statement **specific** and **relevant** to the target job.

For example:

- **Minimize** (_direction_) the **time** it takes (_measure_) to identify a potential new home (_qualifiers_)
- **Reduce** the **number of compromises** made when deciding on a new home
- **Minimize** the **distance** to the place of employment

These outcome statements provide insights into the job performer's criteria for success in accomplishing the job.

Bad examples:

- Find the best home quickly (Why? No verb indicating direction, ‘best’ is not specific enough to be useful.)
- Have the most attractive house on the street (Why? No direction, ‘most attractive’ is not a good unit of measure.)

### **Job Steps:** How does the job performer get the job done?

Job steps detail the sequential process through which a job performer accomplishes their task, forming a chronological job map. These steps typically begin with a first-person action verb, exclude references to technology, solutions, or methods, and avoid using "ANDs" or "ORs" for conciseness. Being product agnostic is critical to understanding the core of a job, and not simply how your users use your product.

For example:
- Decide where to look for a new home
- Determine selection criteria
- Seek new homes
- Transfer home ownership

Bad example:
- Ask Richard what neighborhoods are popular to live in (Who’s Richard? Does everyone who does this job have a Richard? Too specific.)

### **Emotional and Social Aspects:** How does the job performer feel while doing the job? How do they want to be perceived while doing the job?

When considering the emotional and social aspects of the job, explore how the job performer feels during the task and how they aim to be perceived. These are sort of the ‘experiential’ side of the job, as opposed to the functional aspect of the job. It’s important to solve for the functional side of the job first (without it you’re not really solving the core unmet need), and then consider the emotional and social aspects afterwards.

Understanding the emotional and social aspects of the job helps to determine how potential solutions could be delivered, and how to ensure the job performer’s needs are met.

Emotional aspects typically start with "feel" or "avoid feeling," while social aspects often begin with "appear as" or "avoid appearing as." For example:

Emotional Aspects:
- Feel in control of the home acquisition process
- Avoid feeling uncertain about new home selection

Social Aspects:
- Appear as a good future neighbor
- Avoid appearing unknowledgeable about the new home acquisition process

These aspects can vary widely and provide insights into the job performer's emotional and social motivations and challenges, which can be crucial in determining how potential solutions ought to be delivered. For example, if a programmer is worried about appearing fast to his coworkers, we can design a solution that includes lots of time-saving features (code completion, AI summarization, other automatic actions, and so on). 

### **Circumstances:** What are the factors or conditions that make a difference in how the job gets done?

Circumstances are the factors that influence how the job gets done. They often encompass time, manner, or place, among other characteristics. Circumstances are introduced with "If" and indicate a range of options using "vs." when applicable. For our real estate example, circumstances might include:

- If the job performer is single vs. married
- If the job performer has young children or not
- If the potential new home is local (within driving distance) vs. far away from the current location

Additionally, you can qualify the main job in order to narrow its scope, such as "get energy **in the morning**" or "get energy **in the afternoon at work.**" These are often called _job differentiators_, and provide a more focused perspective on the target job.

### **Related Jobs:** What else is the job performer trying to get done?

When considering innovation, it's essential to explore the additional goals that job performers have within the domain – known as related jobs. These related jobs are distinct objectives, each with its own distinct phases, and should be formulated at a similar level of detail for comparison, typically numbering between 3 to 6 per job performer. For our aspiring homeowners, related jobs may include:

- Finance a new home 
- Move homes
- Sell old home

### **Aspirations:** What does the job performer aspire to become by doing the job?

Aspirations represent the "be" goals of the job performer, signifying their desire for personal growth or transformation while completing the job. These aspirations should be derived from conversations with job performers and are placed at the top of the canvas as they hold a hierarchical position above the target job. Typically, there are 1-3 aspirations associated with any target job. For instance, in the context of a real estate organization, potential top-down elements for innovation related to "home ownership" could include:

- Job performer: New homeowner
- Target job: Acquire a new home
- Related jobs: Finance a new home, Move homes, Sell old home
- Aspirations: Be happy with home life, Be part of a local community

### **Actors (optional):** Who affects our job performer when doing their job?

It may help to think about the other actors or job performers that relate to your main job performer. Who does the job performer interact with in the course of performing their tasks? Where does information (or responsibility) reside before or after the main job? The related job performers or actors are often those performing the related jobs.

So, if the related jobs are: Finance a new home, Move homes, Sell old home

The related job performers might be: Mortgage broker, Real Estate Agent, Mover



## Main jobs to micro jobs

When talking about Jobs to be Done, we’re often talking about different levels of jobs. It’s important to note the differences in terminology between these levels so that you and your stakeholders can communicate effectively.


![JTBD hierarchy diagram](JTBD_Diagram.png)

### Main Jobs

A main job is a means to an end. It's an act that will be performed and should have a clear end state—the "done" part of JTBD. That is why we write jobs in the pattern Verb + Object + Clarifier when writing job statements.

Example: Buy a new home


### Small jobs

Small Jobs are more practical and correspond to a process or workflow. They answer the question, "How does the job get done?" in the context of the main Job and moves the user closer to accomplishing their goal.

Example: Put in an offer on a house 


### Micro-jobs

Micro-jobs are the small tasks a user may undergo to accomplish their small job and main job. Micro-jobs should be self-explanatory and easy to understand without much context.

Example: Decide how much you’re going to offer in relation to the asking price.

It’s important to be able to identify and correctly place jobs at the right altitude as you work through the Jobs to be Done process. It will help keep you focused on the main job and allow you to quickly incorporate (or discard) new information that you hear during interviews into your [job steps](#job-steps-how-does-the-job-performer-get-the-job-done).





<!-- OLD CONTENT - may be moved, so not deleting it yet

### JTBD Hierarchy

Using our examples, we can produce a JTBD hierarchy, confirming we operate at the right altitude.

- **Main job**: Maintain an acceptable level of risk in my organizations assets.
- **Small job**: Prioritize business-critical vulnerabilities in my assets.
- **Micro jobs**: Review the most recent risks detected in my assets; Refine the list of risks by relevancy; Refine the list of risks by impact.


### Using JTBD at GitLab

There are many methods a stage group may use to find or define strategic opportunities with JTBD. You can see more detailed uses of JTBD on our [How to use Jobs to Be Done](/handbook/product/ux/jobs-to-be-done/using-jtbd/) handbook page. If you plan on using one of these methods, remember to use [interviews to validate your jobs](/handbook/product/ux/jobs-to-be-done/deep-dive/#how-do-i-discover-jtbd-relevant-to-my-group) before spending too much time learning about inaccurate jobs.

## Quick methods to increase confidence

- Reference previous research and industry standards.
- Conduct [generative problem validation research](/handbook/product/ux/ux-research/problem-validation-and-methods/#when-to-use-problem-validation) using broad questions. For example, ask questions like, "tell me what you do as a software engineer."
- Run abbreviated 30-minute job interviews with a minimum of 5 participants (direct questions). For example, ask questions based on the JTBD such as, "tell me about the last time you made an architectural decision. What went well? What didn't go so well?" Document your interview using the [JTBD Interview Note template](https://docs.google.com/spreadsheets/d/e/2PACX-1vSX5b57MKfLFl59TfiN61rWNkm2Qctb8cVy40JUGsF6FyEcy3jhPBUxY-4D3exXxqXPwwBkcSOb0HT8/pub?output=xlsx).

## Job stories and user stories

Read "[What is and isn't a JTBD](/handbook/product/ux/jobs-to-be-done/deep-dive/#what-is-a-jtbd)".

[Job stories differ from user stories](https://jtbd.info/replacing-the-user-story-with-the-job-story-af7cdee10c27) because they are persona, product, and solution agnostic. This allows us to think more deeply about the user's context, motivations, and needs rather than just a *title, task, and goal*.

*Example:*

- **Job**: Address business-critical risks in my organization's assets.
- **Job story**: When I am on triage rotation, I want to address business-critical risks in my organization's assets, so I can minimize the likelihood of a security incident.
- **User story**: As a Security Analyst, I want to address vulnerabilities in my applications, So that I can ensure there are no unattended risks.

Job stories offer a higher-level view of the main objective. However, when written at a lower altitude, they can serve the same function as user stories, guiding your solutions while keeping the main job, circumstances, and need in mind.

If you want a detailed breakdown of each segment of the JTBD, learn more about the [structure of a JTBD](/handbook/product/ux/jobs-to-be-done/deep-dive/#how-do-i-structure-a-jtbd). -->


<!-- 
---
title: "Mapping Jobs to be Done (JTBD)"
description: "How do I create a job map? How do I validate a JTBD?"
---

The Main Job is a process that you can sequence chronologically into a Job Map. A Job Map reveals the process of completing the job from the executor’s point of view, not the buyer or customer perspective. The intent is to illustrate what the job performer is striving to get done at each stage in executing a job.

## What a Job Map is not

A Job Map is not a customer journey, service blueprint, or workflow diagram. It does not reflect what a person does to discover, learn about, select, buy, and use a product or service. These activities are relevant to the buyer and purchasing process.

It’s also not about mapping tasks or physical activities, but about creating a sequence of smaller goals that make up the Main Job. Ideally, the Job Map will not include any means of performing the job.

## How to create a Job Map

From your interviews, create a sequence of stages in a visual representation that shows underlying patterns of intent. As you map, think about what the job performer’s subgoals are and the phases of intent that unfold as the job gets done. There is a [template in FigJam](https://www.figma.com/file/M8w3pkidNUAUIQrQALifFS/JTBD-Template?type=whiteboard&t=HXmKttyxz1lwX9B8-6) that you can use for this. The template uses the eight standard phases from Tony Ulwick’s [Outcome-Driven Innovation (ODI) method](https://jobs-to-be-done.com/outcome-driven-innovation-odi-is-jobs-to-be-done-theory-in-practice-2944c6ebc40e).

Each stage should have a purpose and be formulated as a functional job. Avoid including emotional and social aspects in the stage labels, and avoid bringing in adjectives and qualifiers that indicate a need, like “quickly” or “accurately.” Strive to make the stages as universal and stable as possible without reference to the means of execution. Jobs are separate from solutions.

Consider these job stages as more of a guideline than a prescriptive model. The point is to remember to cover all types of stages involved in executing the main job&mdash;before, during, and after. Modify the names of the stages as needed to describe your particular Main Job, but keep them short (ideally expressed as single-word verbs). The table below reflects some common verbs for each of the stage types in the universal job map.

| Stage      | Description                                            | Common Verbs                           |
| ---------- | ------------------------------------------------------ | -------------------------------------- |
| Define     | Determine objectives and plan how to get the job done. | Define, Plan, Select, Determine        |
| Locate     | Gather materials and information needed to do the job. | Locate, Gather, Access, Retrieve       |
| Prepare    | Organize materials and create the right setup.         | Prepare, Set up, Organize, Examine     |
| Confirm    | Ensure that everything is ready to perform the job.    | Confirm, Validate, Prioritize, Decide  |
| Execute    | Perform the job as planned.                            | Execute, Perform, Transact, Administer |
| Monitor    | Evaluate success as the job is executed.               | Monitor, Verify, Track, Check          |
| Modify     | Modify and iterate as necessary.                       | Modify, Update, Adjust, Maintain       |
| Conclude   | End the job and follow-up.                             | Conclude, Store, Finish, Close         |


### Step 1 - Create a job map

1. Use this ([FigJam Template](https://www.figma.com/file/M8w3pkidNUAUIQrQALifFS/JTBD-Template?type=whiteboard&t=HXmKttyxz1lwX9B8-6)).
1. Start with the three large phases of the Main Job: beginning, middle, and end. Arrange the sub-jobs uncovered from your interviews in the appropriate category.
1. Continue to group the jobs into stages, using the universal stages as a starting point, but changing them as needed. Language is important, so spend time refining it as you go.

You might end up with fewer or more stages than eight. It’s also possible to include a loop for interaction or even a branch in the flow. The diagram you create should stand as a clear model for describing the process of performing the job that everyone in your organization can relate to.

Ideally, you will validate this job map with job performers. Talk through it with them. If the labels and/or divisions between stages need a great deal of explanation or seem to be confusing, rework them until it’s simple enough to be self-explanatory.

### Step 2 - Put the job map to use

You can use a Job Map to identify opportunities and ways to create new value. The Job Map ultimately defines the scope of your business/stage group. Align your solutions to it to spot gaps and opportunities. Compare alternative offerings and means of getting a job done for competitive insight. Prioritize areas within the job process to drive your service roadmap. Find opportunities that can be reflected in marketing campaigns and sales pitches.

To get started, ask yourself these questions:
- Is there a more efficient order of stages in performing the job?
- Where do people struggle the most to get the job done?
- What causes the job to get off track?
- Can you eliminate stages or steps along the way?
- How might the job be carried out in the future, given current trends?
- How might you get more of the job done for customers?
- What related jobs can your offering address or tie in to the job?


## References and Further Reading

- [Jobs to be Done Playbook by Jim Kalbach](https://rosenfeldmedia.com/books/jobs-to-be-done-book/)
- [Jobs to be Done by Anthony Ulwick](https://jobs-to-be-done-book.com/)
- [Competing Against Luck by Clay Christenson](https://www.amazon.com/dp/0062435612/ref=cm_sw_em_r_mt_dp_U_v0k9Eb92AEDZX)
- [Intercom on Jobs to be Done by Intercom](https://www.intercom.com/resources/books/intercom-jobs-to-be-done)

 -->


 <!-- 
 ---
title: How to use JTBD at GitLab
description: >-
  JTBDs can be used to discover and define strategic opportunities in the market when used with GitLab's existing processes.
---

## How to use Jobs to Be Done (JTBD) at GitLab

JTBD can be used in many UX research methods, from surveys to usability benchmarking. Once you validate your [JTBD through interviews](/handbook/product/ux/jobs-to-be-done/deep-dive/#how-do-i-discover-jtbd-relevant-to-my-group) and create your JTBD Canvas, you can use pieces of the canvas to inform numerous GitLab processes. For example, you can use the needs and circumstances of your jobs to help you increase the realism and readability of your solution validation tests. Likewise, the main jobs can help you [create recruitment screener](https://docs.google.com/document/d/13ywnQHXOHNgF4F4IcJksAqrnyI0-si1R2MbsRS-Rgdc/edit#heading=h.47623lbekxlj) options to find the right participants for your study.

### Using JTBD to help build Recruitment Screeners

An effective [recruitment screener](/handbook/product/ux/ux-research/write-effective-screener/) collects information about the respondent without revealing too much information about the study they may participate in. Typically, a screener would have a question asking the participant's job title and perhaps a question about common tasks they perform. JTBD can help by using the job performer and their main job to create valid screening options. When picturing an ideal candidate, try to identify the matching job performer. Use that performer's main job instead of a job title, and we can use fewer screening questions to reveal the same information as before.

For example: Say we have a study that needs security professionals using the vulnerability report page.

   Using [GitLab's list](/handbook/product/personas/#list-of-user-personas) of user personas, we could create a list of job titles used by security personas to generate a list of more than 10 titles, such as Security Analyst, Security Operation Engineer, Security Consultant, Application Security Engineer, etc. This list would be very cumbersome for a respondent to answer and may not reflect the accurate day-to-day role of your ideal candidate.


   Using the [JTBD for the Secure and Govern](/handbook/product/ux/stage-group-ux-strategy/sec/jtbd/#job-statements) stages, we could identify two or three ideal jobs/job performers for our study. Look at these job statements for example: "I identify risk in my org's assets" and "I address detected business-critical vulnerabilities." Additionally, we can include jobs from other workflows in the Secure section if we want to include invalid options to weed out unfit candidates. This screener question would be a handful of options that participants can select, and the result is a participant that accurately reflects your ideal candidate.

To make it easier, you can save all of the main jobs for your stage as a template and allow only selected ones for each study you have, like in [this example](https://docs.google.com/document/d/1317XpsPeRBdpMb3rrVnPPPSR90xVyiWAJI6IZsot3PM/edit?usp=sharing). If participants do not match their main job, that can signal you to go back and accurately check how you [discovered your JTBD](/handbook/product/ux/jobs-to-be-done/deep-dive/#how-do-i-discover-jtbd-relevant-to-my-group).

### Using JTBD to help write Solution Validation Scripts

If you conduct [solution validation](/handbook/product/ux/ux-research/solution-validation-and-methods) to test a design, you will likely [make a script containing tasks](/handbook/product/ux/ux-research/writing-usability-testing-script/#tasks) for your users to attempt and provide feedback on. A significant factor in the quality of your feedback is how realistic the tasks are for the users without biasing them with the obvious solution. One way to do that is by utilizing the circumstances, job process, and needs of the job you are building for.

You can follow these steps to incorporate JTBD within your script:

1. Identify the main job your user is trying to accomplish when using your feature. The goal of every service or product should be to provide a solution for the user's problem. So, identify which job your design is helping to solve.
1. It may also be helpful to identify potentially invalid candidates and use their job statements to [create screener questions](https://docs.google.com/document/d/13ywnQHXOHNgF4F4IcJksAqrnyI0-si1R2MbsRS-Rgdc/edit#heading=h.47623lbekxlj) to disqualify those respondents.
   - Identify the circumstances, process, and needs for that job. This information should be included in the JTBD Canvas when [discovering your jobs](/handbook/product/ux/jobs-to-be-done/deep-dive/#how-do-i-discover-jtbd-relevant-to-my-group).
1. Use the circumstances to establish the scenario(s) at the beginning of your tasks. This provides the participants' context for the tasks, similar to a user's context when performing their role.
   - For example, a previously discovered [JTBD Canvas](https://app.mural.co/t/gitlab2474/m/gitlab2474/1683826081288/619308d762c47782e3ed36fdd6260914c55b0913?sender=u8b3435b2496ba7d2d7ba2448) for the Security Policy group found that users implement security controls when "A new security policy was published in their organization." To turn this circumstance into a scenario for an unmoderated test, we can say, "In this scenario, your organization recently published a new security policy with the parameters provided below. Your task is to implement the necessary security control(s), so your assets comply with the security policy."
1. Create solution validation tasks by using the job process and smaller jobs within it. This will avoid biasing users with information they may not have otherwise. Since JTBD uses language identified during user research, it gives users a more natural experience.
   - For example, the first step in implementing security controls is "gathering the security policies." To turn this job step into a task, we can say, "First, please gather the necessary security policies." Participants will read this and naturally understand their task - and we don't have to reveal where we want them to go.
1. Use your job's needs to create the post-test evaluation questions. As you craft your [wrap-up questions](/handbook/product/ux/ux-research/writing-usability-testing-script/#usability-study-wrap-up-questions), you can relate the task to the participant's larger goal or the desired outcome.
   - For example, the outcome that a policy creator wants most is to "reduce the likelihood of a potential threat in my organization's assets." To turn this into a question, we can say, "On a scale from 1-7, where 1 is not useful at all, and 7 is extremely useful, how useful was this feature for you in reducing the possibility of a security threat in your organization?" You may also want to use metrics from the [usability benchmark](/handbook/product/ux/ux-research/usability-benchmarking/#metrics) to get a quantitative comparison.

### Using JTBDs to Inform a Heuristic Evaluation

[Heuristic evaluations](/handbook/product/ux/heuristics/) can help team members understand the user's current experience with the product. These evaluations uncover insights that may require direct changes to improve usability or further research to increase organizational understanding of a problem. Heuristic evaluations usually take 1 to 2 meetings between a Product or UX stakeholder and a UX Researcher.

You can follow these general steps to integrate the JTBD Framework into your heuristic evaluation:

1. Identify the job the user is trying to accomplish with your feature. The goal of any product or service is to provide a solution for the user's (or customer's) problem - so identify which of your stage's jobs the design is helping solve.
1. Identify the process and needs for that job. This information should be included in the JTBD Canvas when [discovering your jobs](/handbook/product/ux/jobs-to-be-done/deep-dive/#how-do-i-discover-jtbd-relevant-to-my-group).
1. Create a planning document for your heuristic evaluation similar to [this template](https://docs.google.com/document/d/1MJXl2d-dYLm8m9sisTmESJcK2D5uThQrLwVMipIopxI/edit?usp=sharing).
1. Use the job process to identify the steps to take during the evaluation process. This is the general workflow you should follow.
1. Use the circumstances to establish the scenarios to create for the evaluation. Sometimes it requires following the steps again, but from a different perspective.
1. Use the related jobs and collaborate on a consensus for which jobs are out of scope.
1. Explore [GitLab's list of heuristics](/handbook/product/ux/heuristics/#heuristics) or use the well-known [Nielson Norman 10 Usability heuristics](https://www.nngroup.com/articles/ten-usability-heuristics/). Determine which heuristics apply to your evaluation.
1. Create questions to ask each other during the evaluation by re-phrasing the applicable heuristics.
   - For example, one of the heuristics is "User control and freedom". We can turn this into a question by saying, "On a scale from 1-7, where 1 is not useful at all, and 7 is extremely easy, How easy was navigating to and from the tooling?"
1. Designate who is moderating the evaluation and who is acting as the user. The "user" will move through the UI to complete the tasks while the moderator evaluates the progress and asks questions. Both stakeholders are encouraged to provide feedback, but the moderator must ensure all tasks are evaluated.

  -->