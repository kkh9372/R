# 패키지 설치
install.packages('party')
library(party)

# 데이터 준비하기
df_iris <- iris
View(df_iris)

#학습, 테스트 데이터
idx <- sample(1:nrow(df_iris), nrow(df_iris) * 0.8)
idx

train_iris <- df_iris[idx,]
test_iris <- df_iris[-idx,]

View(train_iris)
View(test_iris)

# 결정트리 모델생성
model <- ctree(formula = Species ~ ., data=train_iris)

# 시각화
plot(model)

# 테스트하기 
result <- predict(model, test_iris)
result

#성능평가
acc <- mean(result == test_iris$Species)
acc



#########################

# 음료 용량이 300ml로 표시된 음료 제품의 표본 300개를 대상으로
# 용량을 측정한 결과,평균이 294.65로 확인 되었다. 
# 표준편차가 45일 때 , 가설을 수립하고
# 유의수준 0.05에서 좌측검정을 실시하시오.(임계값 - 1.64)

#1)귀무가설 검정
# 귀무가설 : M = 300, 스포츠 음료 용량은 300ml이다.
# 대립가설 : M <300, 스포츠 음료 용량은 300ml보다 작다.

#2)유의수준 설정
a = 0.05

#3)통계량 계산, z값, p값
z = (294.65 - 300) / 45 * sqrt(300)
z

p = 1 - pnorm(z)
p
