#날짜 : 2021/09/27
#이름 : 김관후
#내용 : 데이터 유형과 구조 - DataFrame 실습하기 교재 p71

# 데이터프레임 생성
a <- c(1, 2)
b <- c(3, 4)
c <- c(T, F)

df1 <- data.frame(a, b, c)
df1

df2 <- data.frame(num=c(1, 2, 3),
                  name = c('김유신', '김춘추', '장보고'),
                  age = c(23, 21, 32))
df2

uid <- c('a101', 'a102', 'a103', 'a104', 'a105')
name <- c('김유신', '김춘추', '장보고', '강감찬', '이순신')
pos <- c('대리', '과장', '사원', '부장', '과장')
dep <- c(101, 102, 103, 104, 105)

member_df <- data.frame(uid, name, pos, dep)
member_df


# 데이터프레임 데이터 출력
df2$name[1]
df2$name[3]

member_df$uid[1]
member_df$uid[3]
member_df$name[2]

# 데이터프레임 필수 내장함수
iris
class(iris) # 데이터구조 유형확인
View(iris) # 데이터프레임 자료구조 표 형태로 출력
head(iris) # 데이터 프레임 상위 6개 출력
tail(iris) # 데이터 프레임 하위 6개 출력
str(iris)  # 데이터 프레임 컬럼의 자료유형을 확인
dim(iris)   # 데이터 프레임 행렬 크기확인
names(iris) #데이터프레임 속성(컬럼) 확인
summary(iris) #데이터프레임 요약통계 확인


# CSV 파일을 이용한 데이터프레임 생성
iris_df <- read.csv('../file/iris.csv')
View(iris_df)

exam_df <- read.csv('../file/exam.csv')
View(exam_df)




# 데이터프레임 집계 실습

#교재 p72 실습 - 벡터를 이용한 데이터프레임 객체 생성하기
no <- c(1,2,3)
name <- c("hong", "lee", "kim")
pay <- c(150, 250, 300)
vemp <- data.frame(No = no, Name = name, Pay = pay)
vemp

#교재 p72 실습 - matrix를 이용한 데이터프레임 객체 생성하기
m <- matrix(
  c(1, "hong", 150,
    2, "lee", 250,
    3, "kim", 300), 3, by = T)
memp <- data.frame(m)
memp

#교재 p72 실습 - 텍스트 파일을 이용한 데이터프레임 객체 생성하기
getwd()
txtemp <- read.table('../student.txt',header = 1,sep = "")
txtemp

#교재 p73 실습 - CSV 파일을 이용한 데이터프레임 객체 생성하기


#교재 p73 실습 - 데이터프레임 만들기
df <- data.frame(x= c(1:5), y = seq(2, 10, 2), z= c('a', 'b', 'c', 'd', 'e'))
df
#교재 p73 실습 - 데이터프레임의 칼럼명 참조하기
df$x


#교재 p74 실습 - 데이터프레임의 자료구조, 열수, 행수, 칼럼명 보기
str(df)
ncol(df)
nrow(df)
names(df)
df[c(2:3), 1]

#교재 p74 실습 - 요약통계량 보기
summary(df)

#교재 p75 실습 - 데이터프레임 자료에 함수 적용하기
apply(df[ ,c(1,2)], 2, sum)

#교재 p75 실습 - 데이터프레임의 부분 객체 만들기
x1 <- subset(df, x >= 3)
x1

#교재 p75 실습 - 두 개의 조건으로 부분 객체 만들기
y1 <- subset(df, y<=8)
xyand <- subset(df, x >= 2 & y <= 6)
xyor <- subset(df, x >=2 | y <= 6)
y1

xyand
xyor

#교재 p76 실습 - student 데이터프레임 만들기
sid = c("A", "B", "C", "D")
score = c(90, 80, 70, 60)
subject = c("컴퓨터", "국어국문", "소프트웨어", "유아교육")

student <- data.frame(sid, score, subject)
student

#교재 p76 실습 - 자료형과 자료구조 보기
mode(student); class(student)
str(sid); str(score); str(subject)
str(student)

#교재 p77 실습 - 두 개 이상의 데이터프레임 병합하기
height <- data.frame(id = c(1,2), h = c(180, 175))
weight <- data.frame(id = c(1,2), w = c(80, 75))

user <- merge(height, weight, by.x = "id", by.y = "id")
user


#교재 p77 실습 - galton 데이터셋 가져오기
install.packages("UsingR")
library(UsingR)
data(galton)

#교재 p77 실습 - galton 데이터셋 구조 보기
str(galton)
dim(galton)
head(galton, 15)
