/*
# 데이터 수정 처리
1. 기본 형식
    update 테이블명
       set 컬럼1명 = 수정할데이터,
           컬럼2명 = 수정할데이터,
           ..
    where 조건(컬럼 비교연산자)
    
*/
SELECT * FROM emp01;
UPDATE EMP01 
   SET ename = '오길동'
  WHERE empno = 7369;
UPDATE EMP01 
   SET sal = sal + 1000, -- 기존 sal에 1000더하여 줌 
       DEPTNO = 50
  WHERE sal < 1000; -- 1000미만인 조건
UPDATE EMP01 
	SET job = '셀즈맨'
	WHERE job = 'SALESMAN';
UPDATE EMP01 
	SET sal = sal * 1.1
	WHERE deptno = 20;
/*
# 컬럼의 크기 변경
1. 컬럼에 데이터 입력 시, 수정 시 해당 컬럼의 데이터 타입이 맞지 않거나 더 많은
	데이터를 입력해야 하는 경우에 아래 형식으로 구조를 변경한다.
2. 기본 형식
	alter table 테이블명
	modify 컬럼명 변경할 유형;
 */
SELECT * FROM emp01;
INSERT INTO emp01(ename) values('MR.홍길동');
/* value too large for column "SCOTT"."EMP01"."ENAME" (actual: 12, maximum: 10) */
ALTER TABLE EMP01 
MODIFY ename varchar2(50);
-- ex) emp04로 복사테이블을 만들고,
CREATE TABLE emp04
AS SELECT * FROM EMP e;

DROP TABLE emp04;

ALTER TABLE emp04
MODIFY ename varchar2(100)
MODIFY empno NUMBER(5)
MODIFY job varchar2(100);

INSERT INTO emp04(ename, job, empno) values('홍홍길길동동', '직업1234직업', 7777);
SELECT * FROM emp04;

UPDATE emp04
SET ename = '마아틴!!^^',
	job = '서울에서 세일즈'
WHERE  ename = '홍홍길길동동';

COMMIT;

CREATE TABLE std01(
	NO NUMBER,
	name varchar2(10),
	kor NUMBER,
	eng NUMBER,
	mth number
);
SELECT * FROM std01;
INSERT INTO std01 values(1, '홍길동', 30, 70, 80);
INSERT INTO std01 values(2, '박길동', 55, 40, 35);
COMMIT;

SELECT * FROM dept01;

UPDATE STD01 
SET eng = eng * 1.05,
	kor = kor * 1.05,
	mth = mth * 1.05
WHERE (eng+kor+mth)/3 >=80;

CREATE TABLE salgrade1
AS SELECT * FROM SALGRADE;
CREATE TABLE salgrade2

DROP TABLE salgrade1;
AS SELECT * FROM SALGRADE;
RENAME salgrade2 TO salgrade3;



CREATE TABLE dept03
AS SELECT * FROM DEPT;
DELETE FROM dept03
WHERE deptno in(10, 30);

SELECT * FROM dept03;

