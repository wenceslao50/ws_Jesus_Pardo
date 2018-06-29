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



##Excercise
for(i in 1:length(movie)){
  
lego_movie <- read_html(movie[i])
cast <- lego_movie %>%
  html_nodes("#titleCast .itemprop span") %>%
  html_text()
cast
a[[i]] <- cast
}



lista <- unique(unlist(a))
cant <- c()
for(i in 1:length(lista)){
  cant <-  c(cant,sum(lista[i]==unlist(a)))
}

tab <- data.frame(cast= lista, cant= cant)




lego_movie <- read_html("https://www.imdb.com/list/ls070150896/")
movies <- lego_movie %>%
  html_nodes("h3 a") %>%
  html_attr("href")
movies

str(cast)

movies <- paste0('https://www.imdb.com/',movies[1:9])
movies  

extract <- function(x){
    cast <- read_html(x) %>%
      html_nodes("#titleCast .itemprop span") %>%
      html_text()
    
    return(cast)
  }
  

  
extract(movies[1])

total <- sapply(movies, extract,simplify = F)
str(total)
tot <- unlist(total, use.names = F)

actores <- unique(tot)
cant <- c()
for(i in 1:length(actores)){
  cant <-  c(cant,sum(actores[i]==tot))
}

tab <- data.frame(cast= actores, cant= cant)




grep()  
