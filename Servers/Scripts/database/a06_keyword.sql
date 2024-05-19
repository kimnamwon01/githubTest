/*
# ORACLE에서 WHERE 조건문으로 키워드 검색 처리
1. 컬럼 LIKE을 활용하여 비슷한 키워드로 검색을 할 수 있다.
	EX) ename에서 S가 포함되는 경우, job 'MAN'가 포함되는 경우..
2. 기본 형식
	1) WHERE 컬럼명 LIKE '%키워드%'
		해당 컬럼의 구성요소로 특정한 키워드가 포함되는 경우를 검색
	2) WHERE 컬럼명 like '시작키워드%'
		해당 컬럼에 특정 시작키워드로 처리되는 경우
	3) where 컬럼명 like '%마지막키워드'
		해당 컬럼에 특정 마지막키워드로 종료되는 경우
	4) where 컬럼명 like '_A%'
		두 번째 문자가 A로해서 시작되는 경우
	5) where 컬럼명 like '__A__'
		총글자가 5자이고, 가운데 글자가 A인 경우..
 * */


SELECT * FROM emp;
SELECT *
FROM EMP e
WHERE ename LIKE '%A%';
-- ex) job에서 ES가 포함된 사원 정보 출력
SELECT * FROM emp
WHERE job LIKE '%ES%';

SELECT * FROM EMP e 
WHERE ename LIKE 'A%';

SELECT *
FROM EMP e 
WHERE e.job LIKE '%MAN';

SELECT *
FROM EMP e 
WHERE ename LIKE 'JO%';

SELECT *
FROM EMP e 
WHERE e.job LIKE '%ER';

SELECT hiredate, to_char(hiredate) -- to_char() 문자열 형식으로 바꾸는 처리
FROM EMP e 
WHERE hiredate LIKE '81%'; -- 키워드 검색 시 화면에 보이는 것과 달리 to_char()에 의해 검색

SELECT * FROM EMP e 
WHERE job LIKE '___ES%';

SELECT * FROM EMP e 
WHERE job LIKE '%M__';

SELECT * FROM EMp e
WHERE ename LIKE '__I__';

