# Find out, which __year__ was the __most terrific__ for portfolio you have identified as __most profitable__ during the lesson and 
# show it on the chart using `ggplot2` package. Write an explanation about your findings into the code as comment.
# __Commit__ it to your repository into `Lessons/Lesson2/Homework`.

## Code
dt_KPI_raw <- read.csv("lesson2_KPI.csv")

dt_KPI_raw %>% 
  mutate(Premium = ifelse(Premium < 0, 0, Premium))

dt_KPI_raw %>%  
  mutate(UWR = Premium - Expenses - Losses) %>% 
  group_by(Unit) %>% 
  summarize(UWR = sum(UWR, na.rm = TRUE)) %>% 
  arrange(UWR)

dt_KPI_raw %>%  
  mutate(UWR = Premium - Expenses - Losses) %>% 
  filter(Unit == "Unit7") %>% 
  group_by(Year) %>% 
  summarize(UWR = sum(UWR, na.rm = TRUE)) %>% 
  arrange(UWR)

dt_KPI_raw %>% 
  mutate(UWR = Premium - Expenses - Losses) %>% 
  filter(Unit == "Unit7") %>% 
  group_by(Year) %>% 
  summarize(UWR = sum(UWR, na.rm = TRUE)) %>% 
  ggplot(aes(x = reorder(Year, UWR), y = UWR)) + 
  geom_col()




# Your Explanation about analysis:
# Ocistenie dat od zaporneho poistneho, vyhladanie portfolia s najvyssou hodnotou Underwriting Result, teda najprofitabilnejsie
# Vyfiltrovanie Underwriting Result pre Unit7 a zoskupenie podla rokov
# Porovnanie podla Underwriting Results a graficke znazornenie
# Na zaklade analyzy vysiel najhorsi rok rok 2014, co je sposobene najmensou hodnotou Underwriting Result. 
