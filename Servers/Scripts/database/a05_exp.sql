SELECT * FROM emp;
-- 1
SELECT ename, sal
FROM emp
WHERE job = 'ANALYST';

-- 2
SELECT ename, job, sal
FROM EMP
WHERE sal BETWEEN 1000 AND 2000;

-- 3 
SELECT ename, deptno
FROM EMP 
WHERE mgr IS NULL;

SELECT ename, deptno
FROM emp
WHERE job = 'CLERK'
AND comm IS NULL;

-- 4
SELECT ename, sal, deptno
FROM emp
WHERE deptno in(10, 20, 40);

SELECT ename, job, sal
FROM emp
WHERE job in('MANAGER', 'ANALYST', 'CLERK');

-- 5
SELECT ename, sal, COMM
FROM emp
WHERE sal>=1500
AND nvl(comm,0)>0; -- nvl(컬럼,0) : 컬럼에 null일때...
-- sal + comm : 둘 중에 하나라도 null 값을 연산을 하지 못한다. 즉 null
-- null일 때, default로 0으로 처리하려면 반드시 nvl()함수를 통해서 처리하여야 한다.
-- select sal + nvl(comm, 0) ==> null일 경우 0으로 처리한다.
-- where 조건문에서는 0인 경우와 null인 경우를 모두 제외하고 검색할 때..
-- where nvl(comm, 0)>0으로 처리하여야 한다.

SELECT ename, sal, deptno
FROM emp
WHERE deptno != 10
AND sal<=3000;

-- 6
SELECT ename, job, deptno
FROM emp
WHERE deptNO NOT in(10, 30)
AND job in('SALESMAN', 'CLERK');

SELECT ename, job
FROM emp
WHERE job<>'MANAGER'
AND sal>=2000;

