# rMAD

An algorithm to quantify intratumor heterogeneity based on perturbation of gene expression profile



## Description

rMAD is an algorithm to quantify the ITH of tumor mRNA levels by using the median absolute deviation (MAD) to evaluate the deviation of transcriptome expression values from the mean.



## Installation

You can install the released version of **rMAD** with:

```R
if (!requireNamespace("devtools", quietly = TRUE))
    install.packages("devtools")
devtools::install_github("WangX-Lab/rMAD")
```



## Examples

```R
library(rMAD)
rMAD(exdata)
```

