# 날짜 : 2021/09/28
# 이름 : 김관후
# 내용 : 데이터 시각화 - 원형차트 교재 p147

season <- c('winter', 'summer', 'spring', 'summer', 'summer',
            'autumn', 'autumn', 'summer', 'spring', 'spring')
season
result <- table(season)
result

pie(result, main = 'season')

# 교재 p148 실습습