#날짜 : 2021/09/30
#이름 : 김관후
#내용 : 정형과 비정형 데이터 처리 - MySQL 데이터  처리 교재 p292

install.packages('RMySQL')
library(RMySQL)
library(dplyr)
library(ggplot2)


conn <- dbConnect(MySQL(),
                  host='54.180.160.240',
                  user='kkh9372',
                  password='1234',
                  dbname='kkh9372')

# 쿼리실행
df_user <- dbGetQuery(conn, statement = 'SELECT * FROM `user1`')
Encoding(df_user$name) <- 'UTF-8'
df_user

#매출 데이터 불러오기
df_sale <- dbGetQuery(conn, statement = 'SELECT * FROM `SALE`')
View(df_sale)


#직원별 매출 현황
df_result <- df_sale %>% group_by(uid) %>% summarise(total = sum(sales)) %>%  arrange(desc(total))
View(df_result)

#시각화
ggplot(data = df_result, aes(x=uid, y=total)) + geom_col()

#데이터베이스 종료
dbDisconnect(conn)
