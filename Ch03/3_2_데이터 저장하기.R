# 날짜 : 2021/09/28
# 이름 : 김관후
# 내용 : 데이터 입출력 - 데이터 저장하기 교재 p101


iris
write.csv(iris, '../file/iris_dataset.csv', quote = F)
View(iris)

Titanic
View(Titanic)
write.csv(Titanic, '../file/titanic_dataset.csv', quote = F)
