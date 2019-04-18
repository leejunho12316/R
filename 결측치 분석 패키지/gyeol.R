####결측치 분석 패키지####
install.packages("VIM")
library(VIM)

library(readxl)
library(dplyr)
df_na<-read_excel("NA.xlsx",col_names=F)
df_na
df_na<-rename(df_na,name=...1)
df_na<-rename(df_na,first=...2)
df_na<-rename(df_na,second=...3)
df_na<-rename(df_na,third=...4)
df_na<-rename(df_na,fourth=...5)
df_na<-rename(df_na,fifth=...6)



aggr(df_na,prop=TRUE,numbers=TRUE)
