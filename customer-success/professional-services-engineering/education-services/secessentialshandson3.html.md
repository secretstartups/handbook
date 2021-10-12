---
layout: handbook-page-toc
title: "GitLab Security Essentials Hands On Guide- Lab 3"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab Security Essentials course."
---
# GitLab Security Essentials Hands On Guide- Lab 3
{:.no_toc}

## LAB 3 - Configure a Fuzzer for Coverage-guided Fuzzing

### Implement a fuzz function (aka the fuzz target)
Coverage-guided fuzzing sends random inputs to an instrumented version of your application in an effort to cause unexpected behavior. Such behavior indicates a bug that you should address.

The skeleton code for the fuzz target (in JavaScript) follows this pattern:
```js
    function fuzz(buf) // function defintion **fuzz**
     // call your package with buf  
      const        = buf.toString(); // define constant
      if(    .length === 3) {    // evaluate string length
        if (   )    // splice string and evaluate each character "[0]f  [1]u  [2]z"

      }

    }

    module.exports = {
      fuzz
    };
```
1. Starting after the function definition **fuzz**, define a constant and assign it to the string returned from buf.toString().
1. After that line,  open an **if** block that evaluates the length of the string constant. 
1. If it evaluates to 3, open a nested **if** block that evaluates the following characters of the constant:
    `string[0] === 'f' && string[1] === 'u' && string[2] === 'z')`
1. If both sets of if-statements evaluate to TRUE, the fuzz target should throw the following error:
    `throw Error("error")`
1. Nothing needs to occur with the `module.exports` line. It just needs to be present in that form for Coverage-guided fuzzing to work.

### Integrate the fuzz target with your CI/CD configuration (aka .gitlab-ci.yml)
There are four sections of the YAML file that require updating in order to integrate the fuzz target with a pipeline run:
1. **image**
1. **stages**
1. **include**
1. Extending **.fuzz_base**

#### Define `image` in the .gitlab-ci.yml file
- You need to define a Docker image for the fuzzing job. For this lab, use the `node:latest` image.

#### Define an additional `stage`
- This should be named **fuzz**.

#### Include an additional security template
- That should be **Coverage-Fuzzing.gitlab-ci.yml**.

#### Finally, extend .fuzz_base
- The included template makes available the hidden job **.fuzz_base**, which must be extended for each of your fuzz targets. Each fuzz target **must** have a separate job:
```yml
my_fuzz_target:
  extends: .fuzz_base
  script:
    - npm config set @gitlab-org:registry https://gitlab.com/api/v4/packages/npm/ && npm i -g @gitlab-org/jsfuzz
    - ./gitlab-cov-fuzz run --engine jsfuzz -- fuzz.js
```

### Commit your changes to `.gitlab-ci.yml` and review vulnerabilities 
After the pipeline has completed, review the Vulnerability Report to see what Coverage-guided fuzzing has identified.

### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab Security Essentials- please submit your changes via Merge Request!

