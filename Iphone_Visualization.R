iphone_viz <- read.csv("Cleaned_iphonesdata.csv")
View(iphone_viz)

library(ggplot2)

ggplot(iphone_viz,aes(x = Name,fill = Int_Storage_GB)) + geom_bar()+facet_wrap(~Int_Storage_GB)

ggplot(iphone_viz,aes(x = Rating,y = Num_People_Rated,col = Name))+geom_point(size = 3)+geom_text(label = iphone_viz$Num_People_Rated,vjust = -1)

ggplot(iphone_viz,aes(x = Name, y = Price))+geom_bar(stat = "identity")

ggplot() +
  stat_identity(data = iphone_viz, aes(y = Color ,x =  Price,fill = factor(Int_Storage_GB)), geom = "bar")+ facet_grid(~Name)


