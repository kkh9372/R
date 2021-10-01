install.packages('dplyr')
library(dplyr)

df_exam <- read.csv(file = '../file/exam.csv')
df_exam

df_result1 <- df_exam %>% select(math, english, science)
df_result1

df_result2 <- df_exam %>% filter(class == 1) %>% select(everything())
df_result2

df_result3 <- df_exam %>% filter(english >= 60 & english < 80)
df_result3

df_result4 <- df_exam %>% filter(science >= 60 & science < 80)
df_result4

df_result5 <- df_exam %>% filter(math >= 60 ) %>% select(class, id ,math)  %>% arrange(desc(math))
df_result5

df_result6 <- df_exam %>%  group_by(class) %>% summarise(mean(math),mean(english),mean(science))
df_result6

df_result7 <- df_exam %>% mutate(total = math+english+science)
df_result7

df_result8 <- df_result7 %>% mutate(mean = total/3)
df_result8

df_result9 <- df_result8 %>% mutate(grade = ifelse(mean >= 90, 'A',
                                  ifelse(mean >= 80, 'B',
                                  ifelse(mean >= 70, 'C',
                                  ifelse(mean >= 60, 'D', 'F')))))
df_result9
