#날짜 : 2021/09/27
#이름 : 김관후
#내용 : 데이터 유형과 구조 - Array 실습하기 교재 p69

arr <- array(1:5)
arr
arr[1]

arr2d <- array(1:6, 2:3)
arr2d

#교재 p69 실습 - 배열 객체 생성하기
vec <- c(1:12)
arr <- array(vec, c(3,2,2))
arr

#교재 p69 실습 - 배열 객체의 자료 조회하기
arr[,,1]
arr[,,2]
mode(arr); class(arr)
