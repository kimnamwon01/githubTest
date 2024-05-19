SELECT COMM 
FROM emp;
SELECT *
FROM EMP
WHERE comm = NULL;
SELECT *
FROM EMP
WHERE comm IS NULL;
SELECT * FROM EMP 
WHERE comm IS NOT NULL;
SELECT ename 사원명, sal 급여, comm 보너스,
		nvl(comm,0) 보너스2
FROM emp;

SELECT ename
FROM EMP
WHERE comm <= sal*0.1
AND job != 'clerk';

SELECT ename
FROM EMP 
WHERE sal/4 >= 1000
OR deptno = 30;

SELECT *
FROM EMP 
WHERE sal >= 2000
and (deptno = 10 OR deptNO !=20);

SELECT * FROM EMP
WHERE deptno = 10 AND 
sal BETWEEN 3000 AND 5000;