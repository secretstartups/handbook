---
title: AI Framework Group - Eval like I'm 5
description: "The AI Framework group is focused on how to support other product groups at GitLab with the AI Abstraction Layer, and GitLab AI feature development."
aliases: /handbook/engineering/development/data-science/ai-framework
---

## Step-by-Step Guide for Conducting Evaluations using LangSmith at GitLab - ELI5 Evals

This guide is designed to help Backend and Frontend developers at GitLab conduct evaluations using LangSmith, even if you are not familiar with Python. The process is broken down into easy-to-follow steps with detailed explanations, examples, and links for further context.

### Prerequisites

- Basic Tools and Setup:
  - Ensure you have a GitLab account and access to the relevant repositories.
  - Set up the GitLab Development Kit (GDK). Follow the [GDK setup guide](https://gitlab.com/gitlab-org/gitlab-development-kit).
- Python Installation:
  - Make sure Python is installed on your machine. You can download and install it from the [official Python website](https://www.python.org/downloads/).
- API Keys and Tokens:
  - [Create an issue using the AI Acesss Request template](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=AI_Access_Request). Specify LangSmith and Anthropic as the required providers.
    - [How to create an Anthropic API key](https://docs.anthropic.com/en/api/getting-started)
    - [How to create a LangSmith API key](https://docs.smith.langchain.com/#2-create-an-api-key).
  - A GitLab personal access token with the `api` and `ai_features` scopes from **your local GDK instance**.
    - [How to generate a personal access token](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html#create-a-personal-access-token).

### Step 1: Setting Up Your Environment

#### Install Python and Necessary Libraries

Ensure Python 3 is installed on your machine.

If you are already using `asdf` to manage tool versions, you can [install python with `asdf`](https://github.com/asdf-community/asdf-python).

If not, download and install it from the official [Python website](https://www.python.org/downloads/).

You can check if Python is installed by running the following command:

```bash
python --version
```

#### Clone the ELI5 Cookbook

Clone the `eli5` project which has everything set up for you.

```bash
git clone git@gitlab.com:gitlab-org/ai-powered/eli5.git
cd eli5
```

#### Setup the project

From the `eli5` folder, run the following:

```bash
./setup.sh
```

#### Set Environment Variables

Copy the example `.env` files and fill in your API keys.

```bash
cp evaluation_scripts/chat/.env.example evaluation_scripts/chat/.env
cp evaluation_scripts/code_suggestions/.env.example evaluation_scripts/code_suggestions/.env
```

Edit the `.env` files to include your API keys and tokens.

### Step 2: Create and upload your dataset

- [See our dataset guide here](./datasets/)
- You can use an existing dataset or create and upload a new one specific to your evaluations.
- Follow the [instructions in the example project](https://gitlab.com/gitlab-org/ai-powered/eli5#creating-and-uploading-datasets) to create and upload datasets.
- You can see some sample datasets in [the eli5 repository](https://gitlab.com/gitlab-org/ai-powered/eli5/-/tree/main/datasets).

### Step 3: Running the Evaluation Scripts

The [example project](https://gitlab.com/gitlab-org/ai-powered/eli5) includes pre-configured evaluation scripts. Navigate to the respective directories and run the scripts. [See our evaluators guide here](./evaluators/) for more information.

#### Running the Script Locally

Make sure your GDK is running:

```bash
gdk start
```

Then, in your terminal where `evaluate.py` is located, run:

```bash
cd evaluation_scripts/chat
python evaluate.py
```

An example output would be:

```bash
Running evaluation for: Run Small Duo Chat Questions on GDK

----------------------------------------
Evaluation Results:
----------------------------------------

1. Question: "What's your name?"
   Expected Answer: "My name is GitLab Bot."
   Model Answer: "My name is GitLab Bot."
   Result: PASS
   Evaluation Metrics:
     - Accuracy: 100%
     - Latency: 250ms
     - Token Usage: 15 tokens

     ...

----------------------------------------
Summary:
----------------------------------------
Total Questions Evaluated: 5
Passed: 5
Failed: 0
Overall Accuracy: 100%
Average Latency: 286ms
Average Token Usage: 20.4 tokens
----------------------------------------

Trace Details:
----------------------------------------
Question: "What's your name?"
Trace ID: abc123
Latency: 250ms
Tokens Used: 15
----------------------------------------

...

Evaluation completed successfully.
```

#### Making Changes to Prompts and Rerunning the Evaluation

To evaluate changes to prompts in the GDK, you can follow these steps:

- Locate the Prompt File:
  - The prompts for the chat model are located in the GitLab repository. For example, the file might be at [base.rb](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/lib/gitlab/llm/chain/agents/zero_shot/prompts/base.rb), etc.
- Modify the Prompt:
  - Open the [base.rb](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/lib/gitlab/llm/chain/agents/zero_shot/prompts/base.rb) file and make your changes to the prompt. For instance, you might modify the `base_prompt` method to improve the clarity and specificity of the system prompt, which can lead to better model performance. Improving the clarity of prompts in language models like those used in Chat can significantly enhance the performance and reliability of the model.

###### Example of the original base_prompt method

```ruby
  system_prompt = options[:system_prompt] || Utils::Prompt.default_system_prompt
  zero_shot_prompt = format(options[:zero_shot_prompt], options)
  ...
```

###### Example of a modified base_prompt method to improve clarity

```ruby
  system_prompt = options[:system_prompt] || "You are a helpful assistant knowledgeable about GitLab's features and services. Answer questions clearly and concisely."
  zero_shot_prompt = format(options[:zero_shot_prompt], options)
  ...
```

###### Rerun the Evaluation

With the prompt updated, rerun the evaluation script to see how the changes affect the model’s performance. Navigate back to your `evaluation_scripts/chat` directory and run:

```bash
python evaluate.py
```

###### Expected Benefits of the Improved Prompt

1. By explicitly stating that the assistant should be knowledgeable about GitLab’s features and services and provide clear and concise answers, the model has a better understanding of the expected output.
2. The additional context helps the model generate more accurate responses, directly addressing user queries with relevant information.
3. Users receive more precise and helpful responses, enhancing their overall experience with the chat system.
4. With clearer instructions, the model can process queries more efficiently, potentially reducing latency and token usage.

### Step 4: Analyzing the Results

- Review Output:
  - Check the output of your evaluation job in the GitLab CI/CD pipeline. It should print the results of the evaluation, showing the performance and any issues identified.
- Trace and Debug:
  - If there are errors or unexpected results, use the tracing functionality provided by LangSmith. Refer to the LangSmith documentation for detailed guidance on tracing and debugging.

### Good Evaluation Heuristics

- [See our heuristics guide here](./heuristics/)

### Evaluating performance metrics

- [See our performance guide evaluation here](./performance/)

### Integrate with GitLab CI/CD

- [See our GitLab CI/CD guide here](./cicd/)

### Additional Resources

- [LangSmith Evaluation Cookbook](https://github.com/langchain-ai/langsmith-cookbook/blob/main/README.md#testing--evaluation): Contains various evaluation scenarios and examples.
- [LangSmith How To Guides](https://docs.smith.langchain.com/how_to_guides): Contains various how to walkthroughs.
- [GitLab Duo Chat Documentation](https://docs.gitlab.com/ee/development/ai_features/duo_chat.html): Comprehensive guide on setting up and using LangSmith for chat evaluations.
- [Prompt and AI Feature Evaluation Setup and Workflow](https://gitlab.com/groups/gitlab-org/-/epics/13952): Details on the overall workflow and setup for evaluations.

By following these steps, you can effectively conduct evaluations using LangSmith, even with minimal Python knowledge. For any issues or further assistance, refer to the provided documentation links or reach out to your team leads.
