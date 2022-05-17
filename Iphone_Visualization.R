iphone_viz <- read.csv("Cleaned_iphonesdata.csv")
View(iphone_viz)

library(ggplot2)

ggplot(iphone_viz,aes(y = Name,fill = Int_Storage_GB)) + geom_bar()+facet_wrap(~Int_Storage_GB)

ggplot() +
  stat_identity(data = iphone_viz, aes(y = Color ,x =  Price,fill = factor(Int_Storage_GB)), geom = "bar")+ facet_grid(~Name)

ggplot(iphone_viz,aes(x = Rating,y = Name))+geom_point(size = 3,col = "purple")+ 
  scale_x_continuous(breaks = seq(0, 5, by = 0.1))+geom_text(label = iphone_viz$Rating,vjust = -1)

