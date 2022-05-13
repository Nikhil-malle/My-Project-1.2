iphone_viz <- read.csv("Cleaned_iphonesdata.csv")
View(iphone_viz)

library(ggplot2)

ggplot(iphone_viz,aes(x = Name,fill = Int_Storage_GB)) + geom_bar()+facet_wrap(~Int_Storage_GB)


