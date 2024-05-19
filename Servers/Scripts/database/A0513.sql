-- Like
-- 1
SELECT ename FROM EMP e 
WHERE ename LIKE '%A%';
-- 2
SELECT ename, job FROM EMP e 
WHERE job LIKE 'MAN%';
-- 3
SELECT * FROM EMP e 
WHERE deptno LIKE '%10';
-- 4
SELECT ename, sal FROM EMP e 
WHERE ename LIKE '_L%';
-- 5
SELECT ename FROM EMP e 
WHERE job LIKE '__A__';
-- 데이터 정렬 처리
-- 6
SELECT ename FROM EMP e
ORDER BY ename;
-- 7
SELECT ename FROM EMP e 
ORDER BY deptno DESC, ename;
-- 8
SELECT ename FROM EMP e 
ORDER BY mgr, sal DESC;
-- 9
SELECT ename FROM EMP e 
ORDER BY hiredate desc;
-- 10
SELECT ename FROM EMP e 
ORDER BY job, sal DESC;
