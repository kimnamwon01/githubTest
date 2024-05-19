SELECT * FROM emp;
-- 1. 직원 조회
SELECT ename, sal
FROM EMP
WHERE job = 'CLERK';
-- 2. 연봉 비교
SELECT ename, job
FROM emp
WHERE sal>2000;
-- 3. 복수 조건 검색
SELECT *
FROM emp
WHERE job = 'MANAGER' 
AND deptno = 10;
-- 4. 범위 지정 검색
SELECT ename, job
FROM EMP 
WHERE sal BETWEEN 1500 AND 3000;
-- 5. Null 값 검색
SELECT ename, job
FROM emp
WHERE comm IS NULL;
-- 6. 복수 선택 검색
SELECT ename, deptno
FROM emp
WHERE EMP.DEPTNO in(10,20,30);
-- 7. 논리 연산 활용
SELECT ename, sal
FROM emp
WHERE sal>=1000 AND comm IS NULL;
-- 8. 복잡한 논리 연산
SELECT ename, job
FROM emp
WHERE job <> 'SALESMAN' 
AND deptno <> 30;


