# R Basics / Vector arithmetic
This section covers vector arithmetic and indexing.

## Arithmetic operations
Arithmetic operations in R apply on every element in a vector.

```r
> tempInCelsius <- c(0, 100, 232.8)
> tempInFahrenheit <- (tempInCelsius * 1.8) + 32
> tempInFahrenheit
[1]  32.00 212.00 451.04
```

### Arithmetic operators
Operator     | Name             | Examples
:-----------:| -------------    | -------------
+            | Addition         | 1 + 1 = 2
-            | Subtraction      | 1 - 1 = 0
*            | Multiplication   | 2 * 3 = 6
/            | Division         | 4 / 2 = 2
^ or **      | Exponentiation   | 2^2 = 4
%%           | Modulus          | 5%%4 = 1
%/%          | Integer division | 7%/%2 = 3

### Vector arithmetic
We can perform vector arithmetic on two vectors of the same length.
```r
> years = c(2014, 2015)
> citizens = c(3343, 3375)
> permanentResidents = c(527, 527)
> years <- c(2014, 2015)
> citizens <- c(3343, 3375)
> permanentResidents <- c(527, 527)
> SGPopulation <- data.frame(name = years,
  citizen = citizens,
  permanentResident = permanentResidents)
> SGPopulation
  name citizen permanentResident
1 2014    3343               527
2 2015    3375               527
>
> SGTotalResidents <- SGPopulation$citizen + SGPopulation$permanentResident
> names(SGTotalResidents) <- SGPopulation$name
> SGTotalResidents
2014 2015
3870 3902
```

## Logical operations
Logical (Relational) operations in R apply on every element in a vector. Using logical operations we are able to perform indexing.

### Logical operators
Operator | Name
:-: | --
== | Equal to
!= | Not equal to
< | Less than
\> | Greater than
<= | Less than or equal to
\>= | Greater than or equal to
!x | Not x
x & y | x AND y
x \| y | x OR y
isTRUE(x) | Returns TRUE or FALSE

### Indexing
```r
> grades <- c(43, 73, 23, 95, 55)
> passing <- grades >= 50
> passing
[1] FALSE TRUE FALSE TRUE TRUE
>
> grades[passing]
[1] 73 95 55
>
> sum(passing) # TRUE evaluates to 1 and FALSE to 0
[1] 3
>
> distinction <- grades >= 80
> merit <- passing & !distinction # Passing grade but NOT Distinction
> grades[merit]
[1] 73 55
```

## Indexing functions
### `which`
The function `which(x)` returns the indices of entries in vector _x_ which are `TRUE`.
```r
> # Following previous example
> distIndex <- which(distinction)
> distIndex # Stores only indices which are TRUE, thus saving space
[1] 4
> grades[distIndex]
[1] 95
> notDistIndex <- which(!distinction) # ! operator
> grades[notDistIndex]
[1] 43 73 23 55
```

### `match`
The function `match(x, y)` returns the indices of entries in vector _y_ which (first) matches entries in vector _x_.

```r
> countries <- c("MYS", "SGP", "IDN")
> codes <- c(60, 65, 62)
> countryCodes <- data.frame(name = countries, code <- codes)
>
> ind <- match(c("SGP", "IDN"), countryCodes$name)
> countryCodes$code[ind]
[1] 65 62
```

### `%in%` operator
The operator `y %in% x` returns a logical vector of _y_ length that evaluates `TRUE` if the entry in _y_ is present in _x_.

```r
> # Following previous example
> c("SGP", "LOL") %in% countryCodes$name
[1]  TRUE FALSE
```
