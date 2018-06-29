text1 <- "The current year is 2017"



#1
my_pattern <- "[A-z]*[0-9]+[A-z]*"
str_extract_all(text1, my_pattern)
grepl(my_pattern, text1)


#2
string_position <- gregexpr(my_pattern, text1)[[1]][1:4]
str_locate_all(text1, my_pattern)
str_locate(text1, my_pattern)

#3
my_pattern <- "[A-Z&0-9]" # "[[:upper:][:digit:]]"

searched <- str_extract_all(text1, my_pattern)
searched
grepl(my_pattern, text1)
str_detect(text1,my_pattern)


#4
my_pattern <- " "
cuatro <- regexpr(my_pattern,text1)[1]
grepl(my_pattern, text1)

#5
my_pattern <- "[a-zA-z0-9] " #"[[:blank:]]"
grepl(my_pattern, text1)

#11
lip <- read.csv("LipidData.csv", header = T,sep = ";")
head(lip)

list <- str_extract_all(sapply(strsplit(as.character(lip$LIPID), ":"), "[",1),"[0-9]")
list <- lapply(list, paste(list,collapse=""))
list


str_extract_all(sapply(strsplit(as.character(lip$LIPID), ":"), "[",2),"[0-9]")

str_extract_all(sapply(strsplit(as.character(lip$LIPID), ":"), "[",2),"[A-z]")



sapply(list, paste0)
lapply(list, function)






