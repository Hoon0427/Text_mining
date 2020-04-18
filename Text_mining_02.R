library(tidytext)
library(tidyr)

install.packages("textdata")

sentiments

get_sentiments("afinn")
get_sentiments("bing")
get_sentiments("nrc")

#install.packages("janeaustenr")

library(janeaustenr)
library(dplyr)
library(stringr)

tidy_books <- austen_books() %>% 
  group_by(book) %>% 
  mutate(linenumber = row_number(),
         chapter = cumsum(str_detect(text, regex("^chapter [\\divxlc]",
                                                 ignore_case = TRUE)))) %>% 
  ungroup() %>% 
  unnest_tokens(word, text)

nrcjoy <- get_sentiments("nrc") %>% 
  filter(sentiments == "joy")
