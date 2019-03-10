# R Basics / R programming
This section covers basic R programming features such as `if-else` statements, `for` loops and function definitions.

## `if`...`else` statement

### `if` statement
The `if` statement is a conditional expression which executes code within the `{...}` block if the _condition_ evaluates to `TRUE`. If the _condition_ evaluates to `FALSE`, the code within the block is **not** executed.

```r
> number <- 3
> if(number > 2) { # The condition
+     print("Bigger than 2.")
+ }
Bigger than 2.
> number <- 1
> if(number > 2) { # The condition
+     print("Bigger than 2.")
+ }
>
```

!!! note "Using `print`"
    `print(...)` prints its argument out and returns it invisibly. For example, `result <- print(53)` will assign the number 53 to result after printing.

### `if`...`else` statement
The `if` statement is a conditional expression which executes code within the `{...}` block if the _condition_ evaluates to `TRUE`.

If the _condition_ evaluates to `FALSE`, the code within the block is **not** executed. Additionally, if there is an `else` statement after the `if` block, the code within the `{...}` block following the `else` statement will be executed.

```r
> number <- 9
> if(number%%2 == 0) {
+     print("Even.")
+ } else {
+     print("Odd.")
+ }
[1] "Odd."
```

### `ifelse`
The function `ifelse(condition, x, y)` returns _x_ if the condition evaluates to `TRUE`, and _y_ if the condition evaluates to `FALSE`.

```r
> number <- 9
> ifelse(number%%2 == 0, "Even", "Odd")
[1] "Odd"
```

The function also works on vectors.

```r
> grades <- c(53, 74, NA, 20, NA, 78, 93, NA) # NA for non-submission
> finalGrades <- ifelse(is.na(grades), 0, grades) # Convert NAs to 0
> finalGrades
[1] 53 74 0 20 0 78 93 0
```

### `any` and `all`
The function `any(...)` takes in a logical vector and returns `TRUE` if any of the entries are `TRUE`. If all entries are `FALSE`, it returns `FALSE`.

```r
> any(c(TRUE, FALSE, TRUE))
[1] TRUE
```

The function `all(...)` takes in a logical vector and returns `TRUE` if all of the entries are `TRUE`. If any entry is `FALSE`, it returns `FALSE`.

```r
> all(c(TRUE, FALSE, TRUE))
[1] FALSE
```

## `for` loop
A `for` loop executes the code within its `{...}` block once for each value in the supplied range.

```r
> for(i in 1:5) {
+     print(10^i)
+ }
[1] 10
[1] 100
[1] 1000
[1] 10000
[1] 1e+05
```

## Creating functions
A function can be defined by assigning the output of `function` to an object.

```r
> discriminant <- function(a, b, c) {
+     b^2 - 4*a*c
+ }
> discriminant(5, 6, 1)
[1] 16
```
