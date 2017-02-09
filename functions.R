topicmodels_json_ldavis <- function(fitted, dfm, dtm){
  # Required packages
  library(topicmodels)
  library(dplyr)
  library(stringi)
  library(quanteda)
  library(LDAvis)
  library(tm)
  
  # Find required quantities
  phi <- posterior(fitted)$terms %>% as.matrix
  theta <- posterior(fitted)$topics %>% as.matrix
  vocab <- colnames(phi)
  
  doc_length <- ntoken(dfm[rownames(dtm)])
  
  temp_frequency <- inspect(dtm)
  freq_matrix <- data.frame(ST = colnames(temp_frequency),
                            Freq = colSums(temp_frequency))
  rm(temp_frequency)
  
  # Convert to json
  json_lda <- LDAvis::createJSON(phi = phi, theta = theta,
                                 vocab = vocab,
                                 doc.length = doc_length,
                                 term.frequency = freq_matrix$Freq)
  
  return(json_lda)
}