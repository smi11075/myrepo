library(readr)
library(ggplot2)

rcw <- read_csv("https://byuistats.github.io/M335/data/rcw.csv", #Pulling in the csv to use.
                col_types = cols(Semester_Date = col_date(format = "%m/%d/%y"), #
                                 Semester = col_factor(levels = c("Winter", "Spring", "Fall"))))
head(rcw) #Shows the first few rows of each column of the dataset rcw

ggplot(data = rcw, 
       mapping = aes(x = Semester_Date, 
                     y = Count, 
                     color = Department)) +
  geom_line() +
  geom_point()    #line graph using the dataset rcw showing 'semester_date' on the x-axis and 'count' on the y-axis. The color of the graph is depicting what 'department' is shown.
                  #geom_point is adding points to the graph


ggplot(data = rcw,
       mapping = aes(x = Department,
                     y = Count,
                     color = Department)) +
  geom_bar(stat='identity')
