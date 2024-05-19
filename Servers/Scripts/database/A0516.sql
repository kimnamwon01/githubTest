/* 1 */
CREATE TABLE users(
	user_id NUMBER,
	username varchar2(50),
	password varchar2(50)
);
/* 2 */
CREATE TABLE books(
	book_id NUMBER,
	title varchar2(100),
	author varchar2(50)
);
/* 3 */
CREATE TABLE orders(
	order_id NUMBER,
	user_id NUMBER,
	order_date date
);