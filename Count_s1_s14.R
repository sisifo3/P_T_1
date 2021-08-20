# 1 Subject with vaccine
# 0 subject without vaccine 

#vamos a buuscar los salones con mayor y menor 
#cantidad de personas con vacunas.

library(ggplot2)
library(tidyverse)
library(dslabs)


file1 <-"Desktop/Ingoodwetrust/libros/Tec_Mon_Data/StudentsValues2.csv"
df1 <- read.csv(file1, sep = '\t')

#row.len = nrow(df1)

#Podemos usar esto para separarlo, después
#hacer la comparación

b <- as.character(df1$Classroom)
b[1] 
c<-strsplit(b[1], "'")[[1]]


S1 <- rep(0, 9160)
S2 <- rep(0, 9160)
S3 <- rep(0, 9160)
S4 <- rep(0, 9160)
S5 <- rep(0, 9160)
S6 <- rep(0, 9160)
S7 <- rep(0, 9160)
S8 <- rep(0, 9160)
S9 <- rep(0, 9160)
S10 <-rep(0, 9160)
S11 <-rep(0, 9160)
S12 <-rep(0, 9160)
S13 <- rep(0, 9160)
S14 <- rep(0, 9160)


for(i in 1:9160){
  temp.value <-strsplit(b[i], "'")[[1]]
    #print(temp.value)
  for (val.t in temp.value){
    #print(val.t)
    if (val.t == "S1"){
      S1[i] <-1
    } 
    # if S2
    if (val.t == "S2"){
      S2[i] <-1
    } 
    # if S2
    if (val.t == "S3"){
      S3[i] <-1
    }
    # if S2
    if (val.t == "S4"){
      S4[i] <-1
    } else{
      S4[i] <-0
    }
    # if S5
    if (val.t == "S5"){
      S5[i] <-1
    } 
    # if S6
    if (val.t == "S6"){
      S6[i] <-1
    } 
    # if S7
    if (val.t == "S7"){
      S7[i] <-1
    } 
    # if S8
    if (val.t == "S8"){
      S8[i] <-1
    } 
    # if S9
    if (val.t == "S9"){
      S9[i] <-1
    } 
    # if S10
    if (val.t == "S10"){
      S10[i] <-1
    } 
    # if S11
    if (val.t == "S11"){
      S11[i] <-1
    } 
    # if S12
    if (val.t == "S12"){
      S12[i] <-1
    } 
    # if S13
    if (val.t == "S13"){
      S13[i] <-1
    } 
    # if S14
    if (val.t == "S14"){
      S14[i] <-1
    } 
  }
}

df1$S1 <- S1
df1$S2 <- S2
df1$S3 <- S3
df1$S4 <- S4
df1$S5 <- S5
df1$S6 <- S6
df1$S7 <- S7
df1$S8 <- S8
df1$S9 <- S9
df1$S10 <- S10
df1$S11 <- S11
df1$S12 <- S12
df1$S13 <- S13
df1$S14 <- S14


x.S <- df1 %>% filter(S1 == 1 & S2 == 1) 

p2 <- ggplot(df1, aes(x = S14, fill = vaccine)) + geom_bar(col = "green", alpha=.6) + 
  scale_x_continuous(limits = c(-1,1.5), breaks = 0:50)
p2

p1 <- ggplot(df1, aes(x = S1, fill = vaccine)) + geom_histogram(col = "green", alpha=.6) + 
  scale_x_continuous(limits = c(-.09,1.1), breaks = 0:50)
p1



write.csv(df1, file = "Desktop/Ingoodwetrust/libros/Tec_Mon_Data/StudentsValues2_S1_S14.csv")
