# R Basics / Vectors and Subsetting
_Last updated on 6 Feb 19_

This section covers vector manipulation and specific access of entries in a vector via subsetting.

## Creating Vectors
### `c`
Use the function _c_ which stands for concatenation.
```r
> codes <- c(65, 60, 62)
> countries <- c("Singapore","Malaysia","Indonesia")
> countryCodes <- c(Singapore=65,Malaysia=60,Indonesia=62) # Still numeric
> countryCodes <- c("Singapore"=65,"Malaysia"=60,"Indonesia"=62) # Same as previous
```

### `seq`
Use the function _seq_ which stands for sequence.

Simplest sequence generation
```r
> seq(1, 4)
[1] 1 2 3 4
```

Sequence generation with increment defined using the `by` argument.
```r
> seq(1, 6, 2) # Third argument is the `by` argument
[1] 1 3 5
```

Shorthand operator
```r
> 1:4 # Shorthand for consecutive integers
[1] 1 2 3 4
```

Sequence generation with length defined using the `length.out` argument.
```r
> fourNo <- seq(1, 3, length.out = 4) # Create 4 numbers between 1 and 3.
> fourNo
[1] 1.000000 1.666667 2.333333 3.000000
```

### Naming vectors
* `names(x) <- y`: Assigns names to a vector x's entries using vector y's entries. For example: `names(codes) <- countries` produces a vector identical to `countryCodes`.

## Subsetting
Access specific parts of a vector via subsetting.

### Single entry
```r
> codes[2] # Access second entry
Malaysia
60
```

### Multiple specific entries
```r
> codes[c(1,3)] # Access first and third entry
Singapore   Indonesia
65          62
> codes[c("Indonesia", "Malaysia")] # Access by names
Indonesia   Malaysia
62          60
```

### Multiple consecutive entries
```r
> codes[1:2] # Access first to second entry
Singapore   Malaysia
65          60
```
