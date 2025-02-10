```r
# Improved code that checks the length of the logical vector before subsetting.

df <- data.frame(a = 1:5, b = 6:10)
logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE)

if (length(logical_vector) > nrow(df)) {
  warning("Logical vector is longer than the data frame. Truncating.")
  logical_vector <- logical_vector[1:nrow(df)]
}

df[logical_vector, ]
```