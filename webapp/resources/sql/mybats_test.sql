CREATE TABLE TESTBATIS(
	ID		VARCHAR2(60),
	PASSWORD	VARCHAR2(30)
);

INSERT INTO TESTBATIS(ID, PASSWORD)
VALUES(
	'홍길동', 1234
);

SELECT * FROM TESTBATIS;

DROP TABLE TESTBATIS PURGE;



CREATE TABLE H(
	NAME VARCHAR2(12)
);

INSERT INTO H
VALUES('노의현');