SELECT * FROM emp;
/*
# where 조건문 처리
1. 행단위 데이터로 필터링하여 검색할 때, 주로 사용된다.
2. where 조건절에는 컬럼명을 기준으로 여러가지 비교연산식과 논리연산식을 처리한다.
3. 기본 형식
	select 컬럼, ..
	from 테이블
	where 비교연산식 또는 논리 연산식
4. 사용되는 비교연산식 종류
	1) 컬럼명 = 데이터 (동등비교) / 주의) 프로그램의 == 가 아님..
	2) 컬럼명 >, <, >=, <=, !=, <> 등을 활용 (이 부분은 프로그램과 동일)
	3) 컬럼명 is null, 컬럼명 is not null : 값이 없을 때 처리 / 주의) 컬럼 = null로 원하는 결과를 얻지 못한다.
5. 사용되는 논리연산식 종류
	1) 위 비교연산식에서 and, or, not 등을 활용한다.
		컬럼명1 = 데이터1 and 컬럼명2 = 데이터2
		컬럼명1 = 데이터1 or 컬럼명1 = 데이터1
		not (컬럼명1 = 데이터1)
		not (컬럼명1 >= 데이터1 and 컬럼명2 = 데이터2)
6. 이외에서 여러가지 연산 키워드를 통한 비교/논리연산을 처리하고 있다.
	1) 컬럼명 in (데이터1, 데이터2, 데이터3)
		컬럼에 데이터1 또는 데이터2 또는 데이터 3이 있는 경우
	2) 컬럼명 between 시작데이터 and 마지막데이터
		컬럼에 범위를 지정하여 검색해준다.
	3) exists, not exists 존재하는 경우, 그렇지 않은 경우 등등..
	
	
 * */
SELECT * FROM emp 
WHERE job='CLERK';


SELECT ename 사원명, empno 사원번호, mgr 관리자번호
FROM EMP 
WHERE mgr = 7839;

SELECT ename 사원명, job 직책명, sal "급여(SAL)", deptno "부서번호(deptno)"
FROM emp
WHERE job = 'CLERK';

SELECT *
FROM EMP 
WHERE deptno = 10;

SELECT ename, sal, sal/2 "급여를 2로 나눈 값"
FROM EMP
WHERE sal/2 >= 1500;

SELECT empno 사원번호, ename 사원명, job 직책명, hiredate "입사일(hiredate)"
FROM EMP
WHERE ename = 'WARD';

SELECT sal, comm, empno, empno*10, sal+comm "합"
FROM emp
WHERE sal+comm < empno*10;

SELECT *
FROM emp
WHERE sal+comm < empno*10;

SELECT ename
FROM EMP 
WHERE sal+500 > deptno*50;

SELECT ename
FROM EMP 
WHERE deptno <= sal / 40;

SELECT ename
FROM EMP 
WHERE comm <= sal * 0.15
AND sal>=2500;