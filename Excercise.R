library(stringr)
library(XML) 
library(maps)
require(knitr)
install.packages("rvest", dependencies=TRUE)
require(rvest)
install.packages("Rcrawler", dependencies=TRUE)
require(Rcrawler)
install.packages("")

url <- "https://www.airbnb.com/rooms/5321565?location=Dubai%2C%20United%20Arab%20Emirates&s=RtjyqyMu"
fortunes <- readLines(con = url)
head(fortunes, n=10)


install.packages("rvest", dependencies=TRUE)
require(rvest)
lego_movie <- read_html("http://www.imdb.com/title/tt1490017/")
rating <- lego_movie %>% 
  html_node("strong span") %>%
  html_text() %>%
  as.numeric()
rating

cast <- lego_movie %>%
  html_nodes("#titleCast .itemprop span") %>%
  html_text()
cast

poster <- lego_movie %>%
  html_nodes(".poster img") %>%
  html_attr("src")
poster


movie <- c("https://www.imdb.com/title/tt0076759/?ref_=nv_sr_2",
"https://www.imdb.com/title/tt3748528/?ref_=nv_sr_6", "https://www.imdb.com/title/tt0120915/?ref_=ttls_li_tt",
"https://www.imdb.com/title/tt0121765/?ref_=ttls_li_tt", 
"https://www.imdb.com/title/tt0121766/?ref_=ttls_li_tt", 
"https://www.imdb.com/title/tt0080684/?ref_=ttls_li_tt", 
"https://www.imdb.com/title/tt0086190/?ref_=ttls_li_tt", 
"https://www.imdb.com/title/tt2488496/?ref_=ttls_li_tt", 
"https://www.imdb.com/title/tt2527336/?ref_=ttls_li_tt")






a <- list()

for(i in 1:length(movie)){
  
lego_movie <- read_html(movie[i])
cast <- lego_movie %>%
  html_nodes("#titleCast .itemprop span") %>%
  html_text()
cast
a[[i]] <- cast
}



rbind

lista <- unique(unlist(a))
cant <- c()
for(i in 1:length(lista)){
  
cant <-  c(cant,sum(lista[i]==unlist(a)))
  
}

tab <- data.frame(cast= lista, cant= cant)




lego_movie <- read_html(https://www.imdb.com/list/ls070150896/)
cast <- lego_movie %>%
  html_nodes("h3 span ") %>%
  html_text()
cast
