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

ALTER TABLE B DROP CONSTRAINT B_NAME_FK;
ALTER TABLE A DROP PRIMARY KEY;

DROP TABLE A PURGE;
DROP TABLE B PURGE;

CREATE TABLE A(
	NAME VARCHAR2(50) not null,
	AMOUNT NUMBER(10) not null,
	PW	VARCHAR2(30) not null
);

CREATE TABLE B(
	NAME VARCHAR2(50) not null,
	AMOUNT NUMBER(10) not null
);

ALTER TABLE A
ADD CONSTRAINT A_NAME_PK
PRIMARY KEY(NAME);

ALTER TABLE B
ADD CONSTRAINT B_NAME_FK
FOREIGN KEY(NAME) REFERENCES A(NAME);

INSERT INTO A(NAME, AMOUNT, PW)
VALUES(
	'홍길동', 0, 'abc123'
);

INSERT INTO A(NAME, AMOUNT, PW)
VALUES(
	'이순신', 0, 'edf543'
);


CREATE OR REPLACE TRIGGER AMOUNT_SUM
	AFTER
	INSERT ON B
	FOR EACH ROW
BEGIN
	DBMS_OUTPUT.PUT_LINE('변경 전:'||:OLD.NAME);
	DBMS_OUTPUT.PUT_LINE('변경 전:'||:OLD.AMOUNT);
	
	DBMS_OUTPUT.PUT_LINE('변경 후:'||:NEW.NAME);
	DBMS_OUTPUT.PUT_LINE('변경 후:'||:NEW.AMOUNT);
	
	UPDATE A
	SET AMOUNT = AMOUNT + :NEW.AMOUNT
	WHERE NAME = :NEW.NAME;
END;
/


SET SERVEROUTPUT ON;

INSERT INTO B(NAME, AMOUNT)
VALUES(
	'이순신', '20'
);

UPDATE B SET AMOUNT=40
WHERE NAME='이순신';


SELECT * FROM A;
SELECT * FROM B;


DROP TRIGGER AMOUNT_SUM;




CREATE TABLE H(
	NAME VARCHAR2(12)
);

INSERT INTO H
VALUES('노의현');

create table a(
 	id varchar2(20)
);

select * from a;

insert into a values('메롱');

DROP TABLE h PURGE;
DROP TABLE A PURGE;



CREATE TABLE PRDT_COMMON_INFO_TB(
	PCI_SQ_PK			NUMBER(8)	NOT NULL,
	PCI_MATERIAL			VARCHAR2(300)	NOT NULL,
	PCI_PRDT_NAME			VARCHAR2(500)	NOT NULL,
	PCI_IMPORTER			VARCHAR2(300)	NOT NULL,
	PCI_MANUFACTURER		VARCHAR2(300)	NOT NULL,
	PCI_MANUFACT_COUNTRY		VARCHAR2(300)	NOT NULL,
	PCI_QUALITY_GUARANTEE		VARCHAR2(1000)	NOT NULL,
	PCI_REQUIRE_ATTENTION		VARCHAR2(1000)	NOT NULL,
	PCI_AS_MAN_PHONE		VARCHAR2(30)	NOT NULL,
	PRDT_CTG_NM			VARCHAR2(200)	NOT NULL
);
select * from PRDT_CATEGORY_TB;
select*from PRDT_COMMON_INFO_TB;
select*from PRDT_TB;


INSERT INTO PRDT_COMMON_INFO_TB(PCI_SQ_PK,PCI_MATERIAL,PCI_PRDT_NAME,PCI_IMPORTER,PCI_MANUFACTURER,
PCI_MANUFACT_COUNTRY,PCI_QUALITY_GUARANTEE,PCI_REQUIRE_ATTENTION,PCI_AS_MAN_PHONE,PRDT_CTG_NM)

VALUES(
	142, '소가죽', 'ADgg','ADgg','ADgg','ADgg','ADgg','ADgg','ADgg','Stan Smiths'
);

create table test3(
	name varchar2(20)
);

select * from test3;

insert into test3 values('김달중');

select * from MEMBER_TB;

