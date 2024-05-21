/*
# 데이터의 삭제
1. 삭제는 행단위로 처리하기 때문에 특정한 컬럼을 지정하지는 못한다.
2. 기본 형식
	delete
	from 테이블명
	where 조건문
 * */
SELECT * FROM emp04;
delete FROM emp04
WHERE empno = 7777;
COMMIT;


CREATE TABLE emp06
AS SELECT empno, ename, hiredate, sal FROM emp;

SELECT * FROM emp05;

DELETE FROM emp05
WHERE sal >= 4000
OR deptno = 10;
/*
# 테이블 이름 바꾸기
rename 기본테이블명 to 바꿀테이블명
# 테이블 삭제하기
drop table 테이블명;
 * 
 * */




