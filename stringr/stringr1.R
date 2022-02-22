library(tidyverse)
library(stringr)

string1 <- "this is a string"
string2 <- 'to put a "quote" insde astring, use single quotes'

str_c(string1, string2, sep=", ")