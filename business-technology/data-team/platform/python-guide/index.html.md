---
layout: handbook-page-toc
title: "Python Guide"
description: "It is our collective responsibility to enforce this Python Style Guide since our chosen linter does not catch everything."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

---

## Python Guide

**It is _our collective responsibility_ to enforce this Style Guide since our chosen linter does not catch everything.**

### Values

**Campsite rule** - As these guidelines are themselves a WIP, if you work with any code which does not currently adhere to the style guide update it when you see it.

### Technology Standardisation 

**Starting in Jan 2022** all new custom python extracts should adhere to the [Singer standard](https://www.singer.io/). 

#### Linting

We use [Black](https://github.com/ambv/black) as our linter. We use the default configuration.

There is a manual CI job in the `review` stage that will lint the entire repo and return a non-zero exit code if files need to be formatted. It is up to both the MR author and the reviewer to make sure that this job passes before the MR is merged. To lint the entire repo, just execute `black .` from the top of the repo.

##### Spacing

Following [PEP8](https://www.python.org/dev/peps/pep-0008/#blank-lines) we recommend you put blank lines around logical sections of code. When starting a `for` loop or `if/else` block, add a new line above the section to give the code some breathing room. Newlines are cheap - [brain time is expensive](https://blog.getdbt.com/write-better-sql-a-defense-of-group-by-1/).

#### Type Hints

All function signatures should contain type hints, including for the return type, even if it is `None`. This is good documentation and can also be used with [mypy](http://mypy-lang.org/) for type checking and error checking.

Examples:

```python
def foo(x: int, y: int) -> int:
    """
    Add two numbers together and return.
    """

    return x + y

def bar(some_str: str) -> None:
    """
    Print a string.
    """
    print(some_str)
    return
```

#### Import Order

Imports should follow the [PEP8](https://www.python.org/dev/peps/pep-0008/#imports) rules and furthermore should be ordered with any `import ...` statements coming before `from .... import ...`

Example:

```python
import logging
import sys
from os import environ

import pandas as pd
from requests import get

import some_local_module
from another_local_module import something
```

#### Docstrings

Docstrings should be used in every single function. Since we are using type hints in the function signature there is no requirement to describe each parameter.
Docstrings should use triple double-quotes and use complete sentences with punctuation.

Examples:

```python
def foo(x: int, y: int) -> int:
    """
    Add two numbers together and return the result.
    """

    return x + y

def bar(some_str: str) -> None:
    """
    Print a string.

    This is another proper sentence.
    """
    print(some_str)
    return
```

#### How to integrate Environment Variables

To make functions as reusable as possible, it is highly discouraged (unless there is a _very_ good reason) from using environment variables directly in functions (there is an example of this below).
Instead, the best practice is to either pass in the variable you want to use specifically or pass all of the environment variables in as a dictionary.
This allows you to pass in any dictionary and have it be compatible while also not requiring the variables to being defined at the environment level.

Examples:

```python
import os
from typing import Dict

## Don't do this!
def foo(x: int) -> int:
    """
    Add two numbers together and return.
    """

    return x + os.environ["y"]
foo(1)

## Do this!
env_vars = os.environ.copy() # The copy method returns a normal dict of the env vars.
def bar(some_str: str, another_string: str) -> None:
    """
    Print two strings concatenated together.
    """
    print(some_str + another_string)
    return
bar("foo", env_vars["bar"])

## Or do this!
def bar(some_str: str, env_vars: Dict[str, str]) -> None:
    """
    Print two strings concatenated together.
    """
    print(some_str + env_vars["another_string"])
    return
bar("foo", env_vars)

```

#### Package Aliases

We use a few standard aliases for common third-party packages. They are as follows:

- `import pandas as pd`
- `import numpy as np`

#### Variable Naming Conventions

Adding the type to the name is good self-documenting code.
When possible, always use descriptive naming for variables, especially with regards to data type. Here are some examples:

- `data_df` is a dataframe
- `params_dict` is a dictionary
- `retries_int` is an int
- `bash_command_str` is a string

If passing a constant through to a function, name each variable that is being passed so that it is clear what each thing is.

Lastly, try and avoid redundant variable naming.

Examples:

```python

def bar(some_str: str, another_string: str) -> None:
    """
    Print two strings concatenated together.
    """
    print(some_str + another_string)
    return

## Do this!
bar(some_str="foo", another_string="bar")

## Or do this!
some_str = "foo"
another_string = "bar"
bar(some_str, another_string)

## But don't do this!
bar(some_str=some_str, another_string=another_string)
```

#### Making your script executable

If your script is not able to be run even though you've just made it, it most likely needs to be executable. Run the following:

```bash
chmod 755 yourscript.py
```

For an explanation of chmod 755 read this [askubuntu page](https://askubuntu.com/questions/932713/what-is-the-difference-between-chmod-x-and-chmod-755).

#### Mutable default function arguments

Using mutable data structures as default arguments in functions can introduce bugs into your code. This is because a new mutable data structure is created once when the function is defined, and the data structure is used in each successive call.

Example:

```python
def append_to(element, to=[]):
    to.append(element)
    return to

my_list = append_to(12)
print(my_list)

my_other_list = append_to(42)
print(my_other_list)
```

Output:

```
[12]
[12, 42]
```

Reference: https://docs.python-guide.org/writing/gotchas/

#### Folder structure for new extracts

- All client specific logic should be stored in /extract, any API Clients which may be reused should be stored in /orchestration
- Pipeline specific operations should be stored in /extract.
- The folder structure in extract should include a file called `extract_{source}_{dataset_name}` like `extract_qualtrics_mailingsends` or `extract_qualtrics` if the script extracts multiple datasets. This script can be considered the main function of the extract, and is the file which gets run as the starting point of the extract DAG.

#### When not to use Python

Since this style guide is for the entire data team, it is important to remember that there is a time and place for using Python and it is usually outside of the data modeling phase.
Stick to SQL for data manipulation tasks where possible.

### Unit Testing

Pytest is used to run unit tests in the Analytics project.  The tests are executed from the root directory of the project with the `python_pytest` CI pipeline job.  The job produces a JUnit report of test results which is then processed by GitLab and displayed on merge requests.

#### Writing New Tests

New testing file names should follow the pattern `test_*.py` so they are found by pytest and easily recognizable in the repository. New testing files should be placed in a directory named `test`.  The test directory should share the same parent directory as the file that is being tested.

A testing file consists of one or more tests. An individual test is created by defining a function that has one or many plain Python `assert` statements.  If the asserts are all true, the test passes. If any asserts are false, then the test will fail.

When writing imports, it is important to remember that tests are executed from the root directory.  In the future, additional directories may be added to the PythonPath for ease of testing as need allows.


### Exception handling

When writing a python class to extract data from an API it is the responsibility of that class to highlight any errors in the API process. Data modelling, source freshness and formatting issues should be highlighted using dbt tests. 

Avoid use of general try/except blocks ie: 
```python
# Don't do this!
try:
   print("Do something")
except:
   print("Caught every type of exception")

# Do this 
while maximum_backoff_sec > (2 ** n):
    try:
        print("Do something")
    except APIError as gspread_error:
        if gspread_error.response.status_code in (429, 500, 502, 503):
            self.wait_exponential_backoff(n)
            n = n + 1
        else:
            raise
else:
    error(f"Max retries exceeded, giving up on {file_name}")
```

