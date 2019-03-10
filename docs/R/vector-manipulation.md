# R Basics / Sort, order and rank
This section covers sorting, ordering and ranking of vectors.

## `sort`
The function `sort(x)`, sorts vector _x_ in ascending order.
```r
> data(USArrests)
> sort(USArrests$Murder)
[1]  0.8  2.1  2.1  2.2  2.2  2.6  2.6...
```

## `order`
The function `order(x)` returns the indices which sorts the vector _x_.
```r
> x <- c(100, 1, 10)
> order(x)
[1] 2 3 1
```
The first entry of `order(x)` is `2` because the 2nd entry in vector _x_ is the smallest value.

```r
> murders <- USArrests$Murder
> x <- order(murders) # Get indices which sort murders in ascending order.
> states <- rownames(USArrests) # Get names of states
> states[x] # Output names of states sorted by murders in ascending order.
 [1] "North Dakota" "Maine" "New Hampshire"
...
[50] "Georgia"
> # North Dakota has the least murders while Georgia has the most.
```

## `max` and `min`
Use `max(x)` and `min(x)` along with `which.max(x)` and `which.min(x)` functions if you only need the maximum and minimum values.

```r
> max(murders)
[1] 17.4
> y <- which.max(murders)
> states[y]
[1] "Georgia"
```

## `rank`
The function `rank(x)` returns a vector which entries store the ranking of their corresponding entries in vector _x_.

```r
> x <- c(100, 1, 10)
> order(x)
[1] 2 3 1
> rank(x) # Entries ranked lowest to highest
[1] 3 1 2
> rank(-x) # Entries ranked highest to lowest
[1] 1 3 2
```

The second entry of `rank(x)` is `1` because the second entry in vector _x_ is the smallest value and hence has the lowest rank value.
