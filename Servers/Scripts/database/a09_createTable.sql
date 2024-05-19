SELECT * FROM emp;
CREATE TABLE person(
	name varchar2(50),
	age NUMBER,
	loc varchar2(100)
);
SELECT * FROM person;
INSERT INTO person values('홍길동', 25, '경기 수원');

CREATE TABLE product(
	name varchar2(30),
	price NUMBER,
	cnt NUMBER
);
INSERT INTO product values('사과', 5000, 5);
SELECT * FROM product;