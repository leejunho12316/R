####################################5번째 시간 - 1 ########################################
#결측치 제거
PC <- read.csv("PC방 설문.csv")
PC

is.na(PC)
table(is.na(PC))

is.na(PC$p_headphone)
mean(PC$p_headphone)


#filter() & is.na()
library(dplyr)
PC %>% filter(is.na(n_computer))
PC %>% filter(!is.na(n_computer))

f_PC <- PC %>% filter(!is.na(n_computer))
mean(f_PC$n_computer)
sum(f_PC$n_computer)

f_PC <- PC %>% filter(!is.na(n_computer) & !is.na(p_headphone))
f_PC

o_PC <- na.omit(PC)
o_PC


#결측치 제외
mean(PC$p_headphone,na.rm = T)
mean(PC$p_mouse,na.rm = T)

PC %>% summarise(m_head = mean(p_headphone, na.rm = T) , m_mouse = mean(p_mouse,na.rm = T) , m_key = mean(p_keyboard,na.rm = T))


#결측치 대체
PC<-read.csv("PC방 설문.csv")
PC$p_headphone
mean(PC$p_headphone, na.rm=T)
PC$p_headphone <- ifelse(is.na(PC$p_headphone),158555,PC$p_headphone)
PC$p_headphone
mean(PC$p_headphone)




#혼자서해보기
table(!is.na(df_mpg$drv))
table(!is.na(df_mpg$hwy))

df_mpg %>% filter(!is.na(hwy)) %>% group_by(drv) %>% summarise(m_hwy = mean(hwy))


#######################################5번째 시간 - 2##############################################

DF<-read.csv("blood_weight.csv")

DF$bloodtype <- ifelse(DF$bloodtype == 'C',NA,DF$bloodtype)
DF$weight <- ifelse(DF$weight > 100,NA,DF$weight)

DF %>% filter(!is.na(bloodtype) & !is.na(weight)) %>% group_by(bloodtype) %>% summarise(m_weight = mean(weight))





#극단치
mpg$hwy <- ifelse(mpg$hwy>37 | mpg$hwy<12, NA, mpg$hwy)
table(mpg$hwy)
boxplot(mpg$hwy)

mpg %>% filter(!is.na(hwy)) %>% group_by(manufacturer) %>% summarise(m_hwy = mean(hwy))
mpg %>% group_by(manufacturer) %>% summarise(m_hwy = mean(hwy,na.rm = T))