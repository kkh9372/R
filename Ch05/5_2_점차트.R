# 날짜 : 2021/09/28
# 이름 : 김관후
# 내용 : 데이터 시각화 - 점차트 교재 p146

score <- c(80, 72, 69, 78, 82)
names(score) <- c('김유신', '김춘추', '장보고', '강감찬', '이순신')

dotchart(score, color = 'red', lcolor = 'blue')

