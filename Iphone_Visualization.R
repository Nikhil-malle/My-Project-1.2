iphone_viz <- read.csv("Cleaned_iphonesdata.csv")
View(iphone_viz)

library(ggplot2)

ggplot(iphone_viz,aes(x = Name,fill = Int_Storage_GB)) + geom_bar()+facet_wrap(~Int_Storage_GB)

ggplot(data = iphone_viz,aes(x = Name,y = Price,col = factor(Int_Storage_GB)))+geom_point(size = 3, color = 'purple')+geom_text(label = iphone_viz$Price,nudge_x = 0.09,nudge_y = 0)

ggplot(data = iphone_viz,aes(x = Rating,y = Num_People_Rated)) + geom_point(size = 3,color = 'orange') + theme_dark()+
  scale_y_continuous(breaks = seq(0, 70000, by = 5000))+scale_x_continuous(breaks = seq(0, 5, by = 0.1))+
  facet_wrap(~Name)+geom_text(
    label= iphone_viz$Rating,
    nudge_x=0.05, nudge_y=0,
    check_overlap=T
  )

