# 날짜: 2021/11/16
# 이름: 김관후
# 내용: R 회귀분석 실습

setwd("C:/Users/bigdata/Desktop/workspace/R/file")


df_product <- read.csv('../file/product.csv')
View(df_product)

df_xy <- data.frame(df_product$제품_적절성, df_product$제품_만족도)
View(df_xy)

x <- df_xy$df_product.제품_적절성
y <- df_xy$df_product.제품_만족도

#선형회귀 모델
model <- lm(formula = y ~ x, data = df_xy)
model


# 테스트
result(1)
result(2)
result(3)
result(4)
result(5)

# galton 선형회귀 분석
install.packages('UsingR')
library(UsingR)

View(galton)

galton_model <- lm(child ~ parent, data = galton)
galton_model

# 시각화
plot(galton$child ~ galton$parent, data = galton)
abline(galton_model, col='red')
