library(ggplot2)

#다양한 그래프 모양들
ggplot(data=mpg,aes(x=hwy,y=cty)) + geom_point()
ggplot(data=mpg,aes(x=manufacturer,y=cty)) + geom_col()
ggplot(data=mpg,aes(x=manufacturer,y=hwy)) + geom_line()
ggplot(data=mpg,aes(x=manufacturer)) + geom_bar()

str(economics)
ggplot(data=economics,aes(x=date,y=unemploy)) + geom_line()
ggplot(data=mpg,aes(x=manufacturer,y=cty)) + geom_boxplot()


#정렬방법
ggplot(data=mpg,aes(x=reorder(manufacturer,hwy),y=hwy)) + geom_point()
ggplot(data=mpg,aes(x=reorder(manufacturer,-hwy),y=hwy)) + geom_point()
