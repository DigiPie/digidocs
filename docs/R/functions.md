# R Basics / Functions and data access
_Last updated on 6 Feb 19_

This section covers commonly-used R functions and also data access via the `$` sign.

## Functions
To execute a function add parentheses `()` behind the function's name. If the parentheses are absent, the function's code is displayed instead of being executed.

Use `args(x)` or `help("x")` to get information on the arguments of a function _x_. Arguments with default values are optional.

* `args(x)`: Returns function _x_'s arguments.
* `help("x")`: Returns function _x_'s manual
* `?x`: Shortform operator of `help("x")` which works for most functions.

### Determine object type
* `class(x)`: Returns object _x_'s type (_character_, _numeric_, _logical_, etc.).
* `str(x)`: Returns object _x_'s type, observations and variables (if any).
* `identical(a, b)`: Returns ```TRUE``` if identical; ```FALSE``` otherwise.

### Data frame functions

!!! note "What is a Data Frame?"
    Conceptually a data frame is a table.

* `head(x)`: Returns the first six lines of data frame _x_.
* `names(x)`: Returns the names of variables in data frame _x_.

### Vector functions

!!! note "What is a Vector?"
    A vector is a sequence of data elements of the same basic type.

* `length(x)`: Returns the number of entries in vector _x_.
* `table(x)`: Returns the frequency of unique elements in vector _x_.

### Factor function

!!! note "What is a Factor?"
    A factor in R is a vector of integer values with a corresponding set of character values used when the factor is displayed. It is also known as _enumerated type_.

* `levels(x)`: Returns factor _x_'s levels (the possible values of _x_).

### Workspace functions
* `data()`: Returns pre-built data sets for practice.
* `ls()`: Returns objects in the workspace.

## Data access
Use the `$` sign to access data. A vector of entries is returned.
```r
> vectorA <- dataFrame$variableA
```

Alternatively, use `[[]]`.
```r
> vectorA <- dataFrame[[variableA]]
```

The order of entries are preserved when they are accessed as such.

!!! note "Using [] instead of [[]]"
    Note that if you only use `[]`, you will return a subset of the original data as a data frame.
