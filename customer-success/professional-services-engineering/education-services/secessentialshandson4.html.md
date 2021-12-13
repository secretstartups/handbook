---
layout: handbook-page-toc
title: "GitLab Security Essentials Hands-On Guide: Lab 4"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Security Essentials course."
---
# GitLab Security Essentials Hands-On Guide: Lab 4
{:.no_toc}


## LAB 4: Enable, configure, and run Coverage-Guided Fuzz Testing

This lab demonstrates coverage-guided fuzz testing, which tests a single function in your code. Web API fuzz testing works similarly, but is not covered here.

You must define a separate CI/CD pipeline job for each function you want to fuzz test. That said, if the function in your code-under-test calls other functions, the fuzz test will catch problems that occur anywhere in the call stack. In this lab you'll fuzz test just 1 function.


### Write the code-under-test

1. Return to the **Security Labs** project you used for the previous labs.
1. This is the code that the fuzz tester will scan for bugs. Paste this Python function into a new file called `IsThirdDigitZero.py` in the root of your project.

    ```python
   def isThirdDigitZero(my_ints):
       """Return True if and only if the third value passed in is 0."""
       return my_ints[2] == 0  # Because you start counting from 0, 
                               # the "2" here refers to the 3rd digit passed in.
    ```

   This code-under-test defines a function that expects to be passed a list of integers. If the third integer in that list is 0, the code returns the value `True`.
   
   **There's a bug in this code-under-test:** it doesn't check to make sure you passed in at least 3 integers. If you pass it fewer than 3 integers, an error will occur when the code looks for, but can't find, the third integer. Different languages will do different things in this situation, but Python will throw an unexpected `IndexError`. That error could cause problems in whatever code calls this function, so this behavior is considered to be a bug. Fuzz testing is a great tool to find this bug.
1. Commit the new file with an appropriate commit message.


### Write the fuzz target

Fuzz testing is the only type of GitLab scanning that requires you to write code: the fuzz target. The fuzz target you see below only works with the specific code-under-test for this lab. Fuzz targets for different code-under-test would look slightly different.

Think of the fuzz target as a "translator" between the fuzz engine and the code-under-test. The data flows like this:

<p style="text-align: center; font-family: monospace; font-style: normal">CI/CD Job <===> Fuzz Engine <===> <b>Fuzz Target</b> <===> Code-Under-Test</p>

The CI/CD job runs the fuzz engine. The fuzz engine generates random data and sends it to the fuzz target. The fuzz target sends that random data to the code-under-test. 

The code-under-test might process that random data successfully, without throwing any errors or crashing. If so, the fuzz engine generates more random data and repeats the cycle. 

But if the random data ever causes an error or crash in the code-under-test, that problem will be sent back to the fuzz target, which will pass it to the fuzz engine, which will report to the CI/CD pipeline that it found a bug in the code-under-test.

1. Paste this Python fuzz target code into a new file called `FuzzTarget.py` in the root of your project. The comments explain each line of the fuzz target code.

    ```python
   from IsThirdDigitZero import isThirdDigitZero  # import the code-under-test
   from pythonfuzz.main import PythonFuzz         # import fuzz test infrastructure
 
   # The fuzz engine calls a function called `fuzz` in the fuzz target and
   # passes it random data, so we need to define a function with that name, that
   # accepts 1 parameter.

   @PythonFuzz                        # Python decorator required by fuzz test infrastructure
   def fuzz(random_data):             # accept random data...
       isThirdDigitZero(random_data)  # ...and pass it on to the code-under-test
    
   if __name__ == '__main__':         # required by fuzz test infrastructure
       fuzz()
    ```

   This fuzz target is typical for Python-based fuzz testing. See the [GitLab documentation](https://docs.gitlab.com/ee/user/application_security/coverage_fuzzing/#supported-fuzzing-engines-and-languages) for instructions on writing fuzz targets for other languages.

1. Commit the new `FuzzTarget.py` with an appropriate commit message.


### Enable and configure coverage-guided fuzz testing

1. Enable fuzz testing by pasting this template in the existing `includes:` section of `.gitlab-ci.yml`:

    ```yml
   - template: Coverage-Fuzzing.gitlab-ci.yml
    ```

1. Configure fuzz testing by defining a new job in `.gitlab-ci.yml`.

    ```yml
   fuzz-test-isThirdDigitZero:
       stage: test
       extends: .fuzz_base  # this anchor is defined in the template included above
       image: python:3.8    # lets the fuzz engine run the Python code-under-test
       script:
           # install the fuzz engine from a GitLab-hosted PyPi repo
           - pip install --extra-index-url https://gitlab.com/api/v4/projects/19904939/packages/pypi/simple pythonfuzz
           # start the fuzz test by running a language-agnostic executable,
           #     and specifying the type of fuzz engine and the fuzz target name
           - ./gitlab-cov-fuzz run --engine pythonfuzz -- FuzzTarget.py
    ```

   Fuzz test job definitions, like fuzz targets, look a little different depending on what language they're testing. See the [GitLab documentation](https://docs.gitlab.com/ee/user/application_security/coverage_fuzzing/#configuration) for instructions on writing fuzz test job definitions for other languages.

1. Commit the edits to `.gitlab-ci.yml` with an appropriate commit message.


### Review the results

1. Watch the pipeline run after you've committed changes to `.gitlab-ci.yml`. It might take up to 3 minutes to finish.<br/>
   *NOTE: fuzz testing jobs might look a little different from other GitLab scanners. If a fuzz testing job finds bugs, that job will have **failed** status, but the pipeline will continue running. Other scanners have **passed** status as long as they complete, regardless of whether they find any problems.*
1. When the pipeline completes, look at the `Security` tab on the pipeline details page to see if fuzz testing found the index-out-of-bounds bug in the code-under-test.
1. Click on the entry under the **Vulnerability** column to learn more about the bug and see where it happened in the call stack.
1. In the left navigation pane, click **Security & Compliance > Vulnerability Report** to see another view of the fuzz test results. It might help to set the **Scanner** filter to **Coverage Fuzzing**.


## Suggestions?

If you'd like to suggest changes to the *GitLab Security Essentials Hands-On Guide*, please submit them via merge request.
