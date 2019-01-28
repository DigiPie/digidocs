# R Basics / Data Manipulation
_Last updated on 21 Jan 18_

This section covers data manipulation using [dplyr](https://cran.r-project.org/web/packages/dplyr/README.html) package's `mutate`, `filter` and `select` functions, and `%>%` operator.

## dplyr package
The [dplyr](https://cran.r-project.org/web/packages/dplyr/README.html) package is a grammar of data manipulation for R.

### Installation & Usage
```r
> install.packages("dplyr")
> library(dplyr) # To load and use
```

### `mutate`
The function `mutate(...)` can be used to create a new column.

```r
> data(starwars) # From package dplyr
> starwars <- mutate(starwars, bmi = mass / ((height/100) ** 2))
> highestBMI <- which.max(starwars$bmi)
> starwars$name[highestBMI]
[1] "Jabba Desilijic Tiure"
```

!!! note "Reloading from package"
    Reloading datasets from packages will overwrite any changes / mutations applied to them.

### `filter`
The function `filter(...)` filters rows.

```r
> # Following previous example
> outOfShape <- filter(starwars, bmi > 30)
> outOfShape$name
 [1] "R2-D2" "Darth Vader" "Owen Lars" "R5-D4" "Jabba Desilijic Tiure"
 [6] "Jek Tono Porkins" "Yoda" "IG-88" "Bossk" "Sebulba"              
[11] "Dud Bolt" "Grievous"    
```

### `select`
The function `select(...)` returns selected columns.

```r
> # Following previous example
> fitnessProgram <- select(outOfShape, name, mass, height, bmi)
> fitnessProgram
# A tibble: 12 x 4
                    name  mass height       bmi
                   <chr> <dbl>  <int>     <dbl>
 1                 R2-D2    32     96  34.72222
 2           Darth Vader   136    202  33.33007
 3             Owen Lars   120    178  37.87401
 4                 R5-D4    32     97  34.00999
 5 Jabba Desilijic Tiure  1358    175 443.42857
...
```

### Pipe operator: `%>%`
The pipe operator `%>%` to pipe the output of one function to the next.

```r
> # Following previous example
> starwars %>% filter(films == "The Force Awakens") %>% select(name, species)
# A tibble: 5 x 2
            name species
           <chr>   <chr>
1           Finn   Human
2            Rey   Human
3    Poe Dameron   Human
4            BB8   Droid
5 Captain Phasma    <NA>
```
