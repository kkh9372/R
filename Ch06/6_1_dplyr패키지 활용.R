#날짜 : 2021/09/29
#이름 : 김관후
#내용 : dplyr 패키지 실습하기 교재 p169

install.packages('dplyr')
library(dplyr)

df_exam <- read.csv('../file/exam.csv')
df_exam

#select - DataFrame에서 특정 컬럼을 선택해서 새로운 DF 생성
df_rs <- df_exam[,3]
df_rs

df_math <- df_exam %>% select(math)
df_english <- df_exam %>% select(english) 
df_result1 <- df_exam %>% select(english, science)
df_result2 <- df_exam %>% select(everything())
df_result2

#filter
df_class1 <- df_exam %>% select(everything()) %>% filter(class== 1)
df_class1

# - 영어점수 60점 이상 그리고 80점 미만
df_rs1 <- df_exam %>%  select(everything()) %>%  filter(english >= 60 & english < 80)
df_rs1

# - 과학점수 60점 이상 그리고 80점 이하
df_rs2 <- df_exam %>% filter(science >= 60 | science <= 80)
View(df_rs2)

# - class가 1인 반의 수학점수만 출력
df_rs3 <- df_exam %>% filter(class == 1) %>% select(math)
View(df_rs3)

#arrange
df_math_asc <- df_exam %>% arrange(math)
df_math_desc <- df_exam %>% arrange(desc(math))
View(df_math_asc)
View(df_math_desc)

#mutate - DataFrame의 파생변수(새로운 컬럼)를 생성
df_total <- df_exam %>% mutate(total = math+english+science)
df_mean <- df_total %>% mutate(mean = total / 3)
df_grade <- df_mean %>%  mutate(grade = ifelse(mean >= 90, 'A',
                                    ifelse(mean >= 80, 'B',
                                    ifelse(mean >= 70, 'C',
                                    ifelse(mean >= 60, 'D','F')))))

View(df_grade)

#summarise - DataFrame의 요약통계
df_exam %>% summarise(mean_math = mean(math))
df_exam %>% summarise(sum_math = sum(math))

#group_by
df_group1 <- df_exam %>% group_by(class) %>% summarise(sum(math))
df_group2 <- df_exam %>% group_by(class) %>% summarise(mean(math))
View(df_group2)

#inner_join
df_teacher <- data.frame(class = c(1,2,3,4,5),
                         name = c('김유신', '김춘추', '장보고', '강감찬', '이순신'))
df_teacher

df_join <- inner_join(df_exam, df_teacher, by='class')
View(df_join)
