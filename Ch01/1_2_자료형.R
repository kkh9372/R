# 날짜 : 2021/09/27
# 이름 : 김관후
# 내용 : R설치와 개요 - 자료형 실습하기 교재 p41

# 숫자형(정수, 실수)
num1 <- 1
num2 <- 2
num3 <- 3.14
num1
num2;num3

# 논리형
bool1 <- TRUE
bool2 <- FALSE
bool1
bool2

# 문자형(문자, 문자열)
str1 <- "Hello"
str2 <- '안녕'
str1
str2

# 특수형
var1 <- NULL # 초기값을 의미
var2 <- NA   # 결측값, Not Available
var3 <= NaN  # 수학적으로 정의가 불가능한 값, Not a Number
var1
var2
var3


#교재 p42 실습 - 스칼라 변수 사용 예
int <- 20
int

string <- "홍길동"
string

boolean <- TRUE
boolean

sum(10, 20, 20)

sum(10, 20 ,20 ,NA)

sum(10, 20, 20, NA, na.rm = TRUE)
ls()

#교재 p43 실습 - 자료형 확인
is.character(string)
x <- is.numeric(int)
x

is.logical(boolean)
is.na(x)

#교재 p43 실습 - 문자 원소를 숫자 원소로 형 변환하기기
x <- c(1,2,"3")
x

result <- x * 3

result <- as.numeric(x)*3
#result2 <- as.integer*3
result

#교재 p44 실습 - 스칼라 변수의 자료형과 자료구조 확인
mode(int)
mode(string)
mode(boolean)

class(int)
class(string)
class(boolean)

#교재 p45 실습 - 문자벡터와 그래프 생성
gender <- c("man", "woman", "woman", "man", "man")
plot(gender)

#교재 p45 실습 - as.factor() 함수를 이용하여 요인형 변환
Ngender <- as.factor(gender)
table(Ngender)

#교재 p46 실습 - Factor형 변수로 차트 그리기
plot(Ngender)
#자료형과 자료구조 보기
mode(Ngender)
class(Ngender)
is.factor(Ngender)