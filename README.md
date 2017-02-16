## Set up

1.  Download the materials in this repository using the "Clone or download" button and click the "Download ZIP" link. Unzip the file locally.

2.  Ensure you have [R](http://archive.linux.duke.edu/cran/) and [R Studio](https://www.rstudio.com/products/rstudio/download/) installed on your machine. Use the links and follow the instructions to download each locally.

Alternatively, you can use [RollApp](https://www.rollapp.com/) to create a free account and run R and R Studio on a cloud service. This option has more issues with saving so this is only an option if you want to avoid downloading R/R Studio locally.

Open R Studio and run the following command to ensure you have all of the R libraries:

```{r}
packages <- c("quanteda","tidyverse","topicmodels","stm","RColorBrewer","servr", 
                "LDAvis", "RJSONIO", "igraph","visNetwork")

lapply(packages, install.packages(packages), character.only = TRUE)
```

## Code

| Part | Subject                           |        |           |
| ---- | --------------------------------- | ------ | --------- |
|    1 | Latent Dirichlet Allocation (LDA) | [code](/part1-lda.Rmd) | [HTML output](https://htmlpreview.github.io/?https://github.com/wesslen/Topic-Modeling-Workshop-with-R/blob/master/part1-lda.html)   |
|    2 | Correlated Topic Model (CTM)      | [code](/part2-ctm.Rmd) | [HTML output](https://rawgit.com/wesslen/Topic-Modeling-Workshop-with-R/master/part2-ctm.html)   |
|    3 | Structured Topic Model (STM)      | [code](/part3-stm.Rmd) | [HTML output](https://htmlpreview.github.io/?https://github.com/wesslen/Topic-Modeling-Workshop-with-R/blob/master/part3-stm.html)   |


For users interested in large-scale LDA on Spark (not available yet for CTM or STM), see [this code](https://github.com/wesslen/Code-Tutorials-for-SOPHI/blob/master/code/Scala-LDA.md).

Users interested in Structural Topic Modeling should read [www.structuraltopicmodel.com](http://www.structuraltopicmodel.com/). This site provides multiple papers that have employed STM as well as references on STM including the `stm` R package.
