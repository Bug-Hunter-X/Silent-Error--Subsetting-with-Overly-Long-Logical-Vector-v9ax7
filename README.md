# R Silent Subsetting Bug

This repository demonstrates a subtle bug in R related to subsetting data frames using logical vectors.  When a logical vector used for subsetting is longer than the number of rows in the data frame, R silently drops the extra elements without warning. This can lead to unexpected and difficult-to-debug results.

The `bug.R` file contains code that reproduces the error. The `bugSolution.R` file offers a solution to mitigate the risk.

## How to Reproduce

1. Clone this repository.
2. Open `bug.R` in an R environment.
3. Run the code. Observe that no error is thrown, but the result is unexpected.

## Solution

The solution involves explicitly checking the length of the logical vector before using it for subsetting.  This is demonstrated in `bugSolution.R`.