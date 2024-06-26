/*
# 테이블의 생성.
1. 데이터베이스에서 핵심 객체인 테이블을 생성하여 데이터를 저장, 수정, 삭제, 조회를 할 수 있게 해보자.
2. 테이블 생성 단계별 학습
	1) 테이블의 구성요소 확인
		컬럼:테이블은 컬럼이라는 구성요소로 되어 있는데, 각 컬럼은 데이터 유형과 이름 그리고 제약조건이라는
			설정을 할 수 있게 되어 있다.
		이번 장에서는 데이터 유형과 이름 설정까지 하도록 한다.
	2) 데이터 유형
		number : 숫자형 유형
			정수형과 실수가 모두 입력되는 기본 유형의 숫자형 타입
			number(전체자리 수, 소숫점이하자리수)
		varchar2(byte) : 가변형 문자열
			최대크기를 설정하여, 그 이하의 데이터를 입력할 수 있게 한다.
			ex)
			varchar2(10)
				최대 문자열 10bytes 이하 문자열 저장 가능하다.
				그리고 그것보다 작은 byte는 해당 크기만큼 저장된다.
				주의) oracle에서 한글 한 자는 3bytes 메모리를 할당해야 하기에
					한글 5글자이하 저장 컬럼일 경우 15byte로 설정하여야 한다.
		char(byte) 고정형 문자열
			해당 설정한 데이터 크기로만 메모리를 할당하는 데이터 유형.
			ex) char(10) : 최대 크기 10byte로 무조건 10byte의 메모리가 설정된다.
			
		Date : 날짜형 데이터

3. 단계별 테이블 생성
	1) 복사 테이블 생성 : 기존에 있는 테이블의 구조 + 데이터를 복사해서 새로운 테이블명으로
		생성.
	2) 사용자 정의 테이블 생성 : 위에 나열된 컬럼명과 데이터유형에 맞게 테이블명과 함께 하나
		씩 테이블 구조를 만드는 것을 말한다.
			
* */
CREATE TABLE emp01
AS SELECT * FROM emp;
SELECT * FROM emp01;
SELECT *
FROM EMP e 
WHERE 1<>1; -- WHERE 조건이 항상 FALSE 즉 데이터는 보이지 않지만 구조는 보인다.
CREATE TABLE emp03
AS SELECT * FROM EMP e 
WHERE 1<>1;
SELECT*FROM emp03;

SELECT * FROM dept;


CREATE TABLE dept01
AS SELECT * FROM EMP e 
WHERE 1<>1;

SELECT * FROM dept01;

CREATE TABLE dept02
AS SELECT * FROM EMP e;

SELECT * FROM dept02;
SELECT * FROM salgrade;
CREATE TABLE salgrade03
AS SELECT * FROM salgrade;
SELECT * FROM SALGRADE03;
CREATE TABLE salgrade02
AS SELECT * FROM SALGRADE s
WHERE 1<>1;

SELECT s1.* FROM salgrade01 s1;
SELECT s2.* FROM salgrade02 s2;


