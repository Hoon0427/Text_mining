text <- c("Because I could not stop for Death -",
          "He kindly stopped for me -",
          "The Carriage held but just Ourselves -",
          "and Immrtality")
text

library(dplyr)
text_df <- data_frame(line = 1:4, text = text)

text_df
