## A function to calculate TPMs from a raw count matrix.
# Example:
```
lengths # gene lengths from raw counts or other source
counts # raw count dataframe
genenames # usually row names of raw count dataframe
samplenames # usually column names from raw count dataframe
my.object <- my_tpms(lengths, counts, genenames, samplenames)
```
