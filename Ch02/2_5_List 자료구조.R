#날짜 : 2021/09/27
#이름 : 김관후
#내용 : 데이터 유형과 구조 - List 실습하기 교재 p71

x1 <- seq(1:5)
x2 <- matrix(1:6, nrow = 2)
x3 <- data.frame(col1 = c(1, 2), col2 = c('김유신', '김춘추'))

x1
x2
x3

values <- list(k1=x1, k2=x2, k3=x3)
values 

values$k1[3]
values$k2[1, 2]
values$k3$col2[1]


#교재 p79 실습 - key를 생략한 list 생성하기
#교재 p79 실습 - 리스트를 벡터 구조로 변경하기

#교재 p80 실습 - 1개 이상의 값을 갖는 리스트 객체 생성하기
#교재 p80 실습 - key와 value 형식으로 리스트 객체 생성하기

#교재 p81 실습 - key를 이용하여 value에 접근하기