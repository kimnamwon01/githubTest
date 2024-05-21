/*
# 데이터 입력
1. 기본 형식
    insert into 테이블명 values(데이터1, 데이터2, 데이터3);
    insert into 테이블명(컬명1, 컬럼2) values(컬럼1의입력데이터, 컬럼2의 입력데이터)
*/
SELECT * FROM emp01;
-- 모든 컬럼의 순서에 맞게 데이터를 입력하여야 한다.
-- 1) 숫자형은 숫자 그대로
-- 2) 문자열형은 '데이터'로
-- 3) 날짜형은 오늘지금시간 : sysdate, 특정날짜 to_date('yyyyMMDD', '2024010')
INSERT INTO emp01 values(1000,'홍길동', '사원',7839, sysdate, 4000,1000,10);
INSERT INTO emp01(EMPNO, ename, HIREDATE)
    values(1000,'홍길동', to_date('20240101','YYYYMMDD'));
SELECT * FROM emp01;
DROP TABLE emp03;

CREATE TABLE emp03 
AS SELECT * FROM EMP WHERE 1<>1;
SELECT * FROM emp03;

INSERT INTO emp03 values(1000, '김기억', '학생', 7777, sysdate, 7777, 7777, 77);
INSERT INTO emp03(empno, ename, HIREDATE, DEPTNO)
	values(1000, '홍길동', to_date('20240601','YYYYMMDD'), 99);
SELECT * FROM dept;
DROP TABLE dept01;
CREATE TABLE DEPT01 
AS SELECT * FROM dept
WHERE 1<>1;

SELECT * FROM dept01;
ROLLBACK;
INSERT INTO dept01(deptno, dname)
	VALUES(10, '공부');
INSERT INTO dept01 values(20, '휴식', '수원');
COMMIT;
/*
# 데이터베이스에서 transaction 처리
1. 데이터베이스에서 crud 시 안정성 확보를 위하여,
2. commit rollback 개념이 사용된다.
3. commit(확정)이 되기 전에는 rollback을 할 수 있다.
4. commit을 하기 전에는 현재 session(클라이언트/서버) 연결에서만 등록/수정/삭제 되는 것으로 보인다.
5. commit을 하기 전에 rollback을 하면 이전 상태로 다시 돌아간다.
6. commit을 하면 rollback을 하더라도 복구 되지 않는다.
7. commit을 하기 전에 session을 닫으면 다시 이전 변경 전 상태로 다시 돌아간다.
8. commit을 하면 다른 client도 동일한 데이터를 확인할 수 있다..
 * */


