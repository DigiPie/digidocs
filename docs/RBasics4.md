# R Basics / Data Frame and Coercion
_Last updated on 21 Jan 18_

This section covers Data Frame, Coercion and NA values.

## Data Frame creation
### `data.frame`
The function `data.frame(...)` is used to create a new data frame.

```r
> states <- row.names(USArrests)
> ranks <- rank(USArrests$Murder)
> StatesWithRank <- data.frame(name = states, rank = ranks)
> head(StatesWithRank)
        name rank
1    Alabama 44.5
2     Alaska 35.0
3    Arizona 29.0
4   Arkansas 31.0
5 California 32.5
6   Colorado 28.0
>
> ind <- order(USArrests$Murder)
> StatesWithRankOrdered <- data.frame(name = states[ind], rank = ranks[ind])
> head(StatesWithRankOrdered)
           name rank
1  North Dakota  1.0
2         Maine  2.5
3 New Hampshire  2.5
4          Iowa  4.5
5       Vermont  4.5
6         Idaho  6.5
```

## Coercion
When an entry's type is not what is expected, R will attempt to coerce it into the expected type.
```r
> fibonacci <- c(1, "one", 2, 3)
[1] "1" "one" "2" "3"
> class(fibonacci)
[1] "character"
```

### Explicit Coercion
Explicitly coerce values using the `as` functions.

* `as.character(x)`: Coerce vector x's entries into characters. Example: `y <- as.character(c(1:5))`.
* `as.numeric(x)`: Coerce vector x's entries into numbers.

!!! note "Missing data"
    In R, missing values are represented by the symbol `NA` which stands for 'Not Available'.

When coercion fails, R will return a warning and set the values which failed coercion to `NA`.

```r
> z <- as.numeric(c(1, "b", 3))
Warning message:
NAs introduced by coercion
> z
[1] 1 NA 3
```

!!! note "Using Integers"
    `integer` occupies lesser space in memory than `numeric`. Append `L` to a number to create an integer. Example: `class(3L)` returns `[1] "integer"`.

### Dealing with `NA` values
You can due with `NA` values using the boolean NOT operator / negation operator `!`.

```r
> numbers <- c(1.0, 'b', 2.5, 3.33)
> numbers <- as.numeric(numbers)
Warning message:
NAs introduced by coercion
> mean(numbers)
[1] NA
> numbers
[1] 1.00   NA 2.50 3.33
> ind = is.na(numbers) # Get index(s) of NA values
> mean(numbers[!ind]) # !ind returns index(s) of non-NA values
[1] 2.276667
```
