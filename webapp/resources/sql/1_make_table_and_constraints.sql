-- [테이블 생성]
-- 권한 분류
CREATE TABLE GRADE_ST_TB(
	GRADE_ST_PK           VARCHAR2(60)  NOT NULL 
);

-- 회원정보
CREATE TABLE MEMBER_TB(
	MEM_EMAIL_PK		VARCHAR2(100)	NOT NULL,
	MEM_ID			VARCHAR2(100)	NOT NULL,
	MEM_PASSWORD		VARCHAR2(20)	NOT NULL,
	MEM_NM			VARCHAR2(60)	NOT NULL,
	MEM_ZIPCODE		VARCHAR2(30)	NULL,
	MEM_ROAD_ADDRESS		VARCHAR2(300)	NULL,
	MEM_JIBUN_ADDRESS		VARCHAR2(300)	NULL,
	MEM_DETAIL_ADDRESS	VARCHAR2(300)	NULL,
	MEM_HOME_PHONE		VARCHAR2(30)	NULL,
	MEM_CELL_PHONE		VARCHAR2(30)	NULL,
	GRADE_ST_PK		VARCHAR2(60)	NOT NULL,
	MEM_JOIN_DT		DATE		NOT NULL,
	MEMBER_MILEAGE		NUMBER(7)	NOT NULL
);

-- 비밀번호 찾기 질문 분류
CREATE TABLE PW_FIND_ASK_TB(
	PW_FIND_ASK_PK		VARCHAR2(100)	NOT NULL
);

-- 비밀번호 찾기
CREATE TABLE PW_FIND_TB(
	MEM_EMAIL_PK		VARCHAR2(100)	NOT NULL,
	PW_FIND_ASK_PK		VARCHAR2(100)	NOT NULL,
	PW_FIND_ANSWER		VARCHAR2(80)	NOT NULL
);

-- 마일리지 적립 내역
CREATE TABLE MILEAGE_HISTORY_TB(
	MLH_SQ_PK			NUMBER(8)	NOT NULL,
	MEM_EMAIL_PK			VARCHAR2(100)	NOT NULL,
	MLH_CHANGE_DT			DATE	NOT NULL,
	MLH_FLUCTUATION_AMOUNT		NUMBER(7)	NOT NULL
);

-- 수령자 정보
CREATE TABLE RECEIVER_INFO_TB(
	RINF_SQ_PK		NUMBER(8)	NOT NULL,
	RINF_REGIT_DT		DATE		NOT NULL,
	RINF_ZIPCODE		VARCHAR2(30)	NOT NULL,
	RINF_ROAD_ADDRESS	VARCHAR2(300)	NOT NULL,
	RINF_JIBUN_ADDRESS	VARCHAR2(300)	NOT NULL,
	RINF_DETAIL_ADDRESS	VARCHAR2(300)	NOT NULL,
	RINF_HOME_PHONE		VARCHAR2(30)	NULL,
	RING_CELL_PHONE		VARCHAR2(30)	NULL,
	MEM_EMAIL_PK		VARCHAR2(100)	NOT NULL
);

-- 주문상태
CREATE TABLE ORDER_ST_TB(
	ORDER_ST_NM_PK	VARCHAR2(60)	NOT NULL
);

-- 상품상태
CREATE TABLE PRDT_ST_TB(
	PRDT_ST_NM_PK	VARCHAR2(60)	NOT NULL
);
-- 배송비
CREATE TABLE DELIVERY_CHARGE_TB(
	DLVR_CHRG_NM_PK	VARCHAR2(60)	NOT NULL
);

-- 상품 카테고리
CREATE TABLE PRDT_CATEGORY_TB(
	PRDT_CTG_NM	VARCHAR2(200)	NOT NULL
);

-- 상품 공통정보
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

-- 상품 대표 이미지 목록
CREATE TABLE PRDT_REPRESENT_IMG_LIST_TB(
	PRIL_SQ_PK			NUMBER(8)	NOT NULL,
	ORIL_IMG_PATH_PK	VARCHAR2(400)	NOT NULL,
	PCI_SQ_PK			NUMBER(8)	NOT NULL
);

-- 치수명
CREATE TABLE PRDT_SIZE_TB(
	PRDT_SIZE_PK	VARCHAR2(20)	NOT NULL
);

-- 상품
CREATE TABLE PRDT_TB(
	PRDT_CD_PK	NUMBER(8)	NOT NULL,
	PRDT_SIZE_PK	VARCHAR2(20)	NOT NULL,
	PRDT_COLOR	VARCHAR2(30)	NOT NULL,
	PRDT_PRICE	NUMBER(10)	NOT NULL,
	PRDT_AMT	NUMBER(10)	NOT NULL,
	PCI_SQ_PK	NUMBER(8)	NOT NULL
);

-- 중고상품 상태
CREATE TABLE USED_ST_TB(
	USED_ST_GRADE_PK	VARCHAR2(20)	NOT NULL
);

-- 중고거래 상태
CREATE TABLE USED_TRADE_ST_TB(
	USED_TRADE_ST_PK	VARCHAR2(20)	NOT NULL
);

-- 지역
CREATE TABLE DISTRICT_TB(
	DISTRICT_PK	VARCHAR2(40)	NOT NULL
);

-- 중고거래 게시글
CREATE TABLE USED_TRADE_POST_TB(
	UTP_SQ_PK			NUMBER(8)	NOT NULL,
	UTP_TITLE			VARCHAR2(500)	NOT NULL,
	UTP_BODY			VARCHAR2(4000)	NOT NULL,
	UTP_REPORTING_DT		DATE	NOT NULL,
	UTP_FIN_MODIF_DT		DATE	NOT NULL,
	UTP_CNT				NUMBER(4)	NOT NULL,
	USED_TRADE_ST_PK		VARCHAR2(20)	NOT NULL,
	DISTRICT_PK			VARCHAR2(40)	NOT NULL,
	PRDT_SIZE_PK			VARCHAR2(20)	NOT NULL,
	USED_ST_GRADE_PK		VARCHAR2(20)	NOT NULL,
	MEM_EMAIL_PK			VARCHAR2(100)	NOT NULL,
	UTP_NOTIFY_NUMBER		NUMBER(4)	NOT NULL
);

-- 중고거래 게시글 댓글
CREATE TABLE UTP_COMMENT_TB(
	UTPC_SQ_PK		NUMBER(8)	NOT NULL,
	MEM_EMAIL_PK		VARCHAR2(100)	NOT NULL,
	UTP_SQ_PK		NUMBER(8)	NOT NULL,
	UTPC_BODY		VARCHAR2(4000)	NOT NULL,
	UTPC_REPORTING_DT	DATE	NOT NULL,
	UTPC_FIN_MODIF_DT	DATE	NOT NULL,
	UTPC_SQ_PK_FK		NUMBER(8)	NULL,
	UTPC_NOTIFY_NUMBER	NUMBER(4)	NOT NULL
);

-- 중고거래 게시글 이미지 리스트
CREATE TABLE USED_TRADE_POST_IMG_LIST_TB(
	UTPIL_SQ_PK		NUMBER(8)	NOT NULL,
	UTPIL_IMG_PATH_PK	VARCHAR2(400)	NOT NULL,
	UTP_SQ_PK		NUMBER(8)	NOT NULL
);

-- 선택한 상품
CREATE TABLE SELECT_PRDT_TB(
	SLTPRDT_SQ_PK		NUMBER(8)	NOT NULL,
	MEM_EMAIL_PK		VARCHAR2(100)	NOT NULL,
	SLTPEDT_QUANTITY	NUMBER(5)	NOT NULL,
	SLTPRDT_SELECT_DT	DATE	NOT NULL,
	PP_SQ_PK			NUMBER(8)	NOT NULL,
	PRDT_CD_PK			NUMBER(8)	NOT NULL
);

-- 상품 판매글
CREATE TABLE PRDT_POST_TB(
	PP_SQ_PK			NUMBER(8)	NOT NULL,
	PP_TITLE			VARCHAR2(500)	NOT NULL,
	PRDT_ST_NM_PK			VARCHAR2(60)	NOT NULL,
	PP_BODY				VARCHAR2(4000)	NOT NULL,
	DLVR_CHRG_NM_PK	VARCHAR2(60)	NOT NULL,
	PP_SAVING_MILEAGE_PERCENT	NUMBER(3)	NOT NULL,
	MEM_EMAIL_PK			VARCHAR2(100)	NOT NULL,
	PP_REPORTING_DT			DATE		NOT NULL,
	PP_FIN_MODIF_DT			DATE		NOT NULL,
	PCI_SQ_PK			NUMBER(8)	NOT NULL
);

-- 한 줄 상품평
CREATE TABLE PRDT_COMMENT_TB(
	PDCMM_SQ_PK			NUMBER(8)	NOT NULL,
	PDCMM_IMG_PATH			VARCHAR2(400)	NOT NULL,
	PDCMM_BODY			VARCHAR2(4000)	NOT NULL,
	PDCMM_REPORTING_DT		DATE	NOT NULL,
	PDCMM_LOVE			NUMBER(4)	NOT NULL,
	PDCMM_CNT			NUMBER(4)	NOT NULL,
	MEM_EMAIL_PK			VARCHAR2(100)	NOT NULL,
	PDCMM_NOTIFY_NUMBER		NUMBER(4)	NOT NULL,
	PP_SQ_PK			NUMBER(8)	NOT NULL,
	PDCMM_FIN_MODIF_DT		DATE	NOT NULL
);

-- 상품판매글 이미지 목록
CREATE TABLE PRDT_POST_IMG_LIST_TB(
	PPIL_SQ_PK			NUMBER(8)	NOT NULL,
	PPIL_IMG_PATH_PK		VARCHAR2(400)	NOT NULL,
	PP_SQ_PK			NUMBER(8)	NOT NULL
);

-- 관심 상품글
CREATE TABLE INTEREST_TB(
	ITR_SQ_PK		NUMBER(8)	NOT NULL,
	MEM_EMAIL_PK		VARCHAR2(100)	NOT NULL,
	ITR_CHECK_DT		DATE	NOT NULL,
	PP_SQ_PK		NUMBER(8)	NOT NULL
);

-- 주문
CREATE TABLE ORDER_TB(
	ORDER_SQ_PK		NUMBER(8)	NOT NULL,
	SLTPRDT_SQ_PK		NUMBER(8)	NOT NULL,
	ORDER_ST_NM_PK		VARCHAR2(60)	NOT NULL,
	RINF_SQ_PK		NUMBER(8)	NOT NULL,
	ORDER_MSG		VARCHAR2(300)	NOT NULL,
	ORDER_DT		DATE	NOT NULL,
	MEM_EMAIL_PK		VARCHAR2(100)	NOT NULL
);

-- 결제방식
CREATE TABLE PAYMENT_PLAN_TB(
	PAY_PLAN_NM_PK	VARCHAR2(60)	NOT NULL
);

-- 결제정보
CREATE TABLE PAYMENT_INFO_TB(
	PAYINF_SQ_PK			NUMBER(8)	NOT NULL,
	PAY_PLAN_NM_PK			VARCHAR2(60)	NOT NULL,
	PAYINF_DEPOSIT_DT		DATE	NOT NULL,
	PAYINF_CMPNY_NAME		VARCHAR2(300)	NOT NULL,
	PAYINF_CMPNY_REP_MAN		VARCHAR2(60)	NOT NULL,
	PAYINF_CORP_REGIT_NO		VARCHAR2(30)	NOT NULL,
	PAYINF_COMP_ADDRESS		VARCHAR2(600)	NOT NULL,
	PAYINF_REFERENCE_PHONE		VARCHAR2(30)	NOT NULL,
	PAYINF_SIGNATURE		VARCHAR2(60)	NOT NULL,
	PAYINF_SUM			NUMBER(10)	NOT NULL,
	ORDER_SQ_PK			NUMBER(8)	NOT NULL
);



-------------------------------------------------------------------------
-------------------------------------------------------------------------


-- [기본키 생성]

-- 권한 분류
ALTER TABLE GRADE_ST_TB
ADD CONSTRAINT GRADE_ST_TB_GRADE_ST_PK
PRIMARY KEY(GRADE_ST_PK);

-- 회원정보
ALTER TABLE MEMBER_TB
ADD CONSTRAINT	MEMBER_TB_MEM_EMAIL_PK
PRIMARY KEY(MEM_EMAIL_PK);

-- 비밀번호 찾기 질문 분류
ALTER TABLE PW_FIND_ASK_TB
ADD CONSTRAINT PW_FIND_ASK_TB_PW_FIND_ASK_PK
PRIMARY KEY(PW_FIND_ASK_PK);

-- 비밀번호 찾기
ALTER TABLE PW_FIND_TB
ADD CONSTRAINT PW_FIND_TB_MEM_EMAIL_PK
PRIMARY KEY(MEM_EMAIL_PK);

-- 마일리지 적립 내역
ALTER TABLE MILEAGE_HISTORY_TB
ADD CONSTRAINT MILEAGE_HISTORY_TB_MLH_SQ_PK
PRIMARY KEY(MLH_SQ_PK);

-- 수령자 정보
ALTER TABLE RECEIVER_INFO_TB
ADD CONSTRAINT RECEIVER_INF_TB_RINF_SQ_PK
PRIMARY KEY(RINF_SQ_PK);

-- 주문상태
ALTER TABLE ORDER_ST_TB
ADD CONSTRAINT ORDER_ST_TB_ORDER_ST_NM_PK
PRIMARY KEY(ORDER_ST_NM_PK);

-- 상품상태
ALTER TABLE PRDT_ST_TB
ADD CONSTRAINT PRDT_ST_TB_PRDT_ST_NM_PK
PRIMARY KEY(PRDT_ST_NM_PK);

-- 배송비
ALTER TABLE DELIVERY_CHARGE_TB
ADD CONSTRAINT DELIVERY_CHRG_TB_NM_PK
PRIMARY KEY(DLVR_CHRG_NM_PK);

-- 상품 브랜드
ALTER TABLE PRDT_CATEGORY_TB
ADD CONSTRAINT PRDT_CTG_TB_CTG_NM_PK
PRIMARY KEY(PRDT_CTG_NM);

-- 상품 공통정보
ALTER TABLE PRDT_COMMON_INFO_TB
ADD CONSTRAINT PRDT_CMN_INF_TB_PCI_SQ_PK
PRIMARY KEY(PCI_SQ_PK);

-- 상품 대표 이미지 목록
ALTER TABLE PRDT_REPRESENT_IMG_LIST_TB
ADD CONSTRAINT PRDT_RIL_TB_PRIL_SQ_PK
PRIMARY KEY(PCI_SQ_PK);

-- 치수명
ALTER TABLE PRDT_SIZE_TB
ADD CONSTRAINT PRDT_SIZE_TB_PRDT_SIZE_PK
PRIMARY KEY(PRDT_SIZE_PK);

-- 상품
ALTER TABLE PRDT_TB
ADD CONSTRAINT PRDT_TB_PRDT_CD_PK
PRIMARY KEY(PRDT_CD_PK);

-- 중고상품 상태
ALTER TABLE USED_ST_TB
ADD CONSTRAINT USED_ST_TB_USED_ST_GRADE_PK
PRIMARY KEY(USED_ST_GRADE_PK);

-- 중고거래 상태
ALTER TABLE USED_TRADE_ST_TB
ADD CONSTRAINT USE_TRD_ST_TB_TRD_ST_PK
PRIMARY KEY(USED_TRADE_ST_PK);

-- 지역
ALTER TABLE DISTRICT_TB
ADD CONSTRAINT DISTRICT_TB_DISTRICT_PK
PRIMARY KEY(DISTRICT_PK);

-- 중고거래 게시글
ALTER TABLE USED_TRADE_POST_TB
ADD CONSTRAINT USED_TRADE_POST_TB_UTP_SQ_PK
PRIMARY KEY(UTP_SQ_PK);

-- 중고거래 게시글 이미지 리스트
ALTER TABLE USED_TRADE_POST_IMG_LIST_TB
ADD CONSTRAINT UTPIL_TB_SQ_PK
PRIMARY KEY(UTPIL_SQ_PK);

-- 중고거래 게시글 댓글
ALTER TABLE UTP_COMMENT_TB
ADD CONSTRAINT UTP_COMMENT_TB_UTPC_SQ_PK
PRIMARY KEY(UTPC_SQ_PK);

-- 선택한 상품
ALTER TABLE SELECT_PRDT_TB
ADD CONSTRAINT SELECT_PRDT_TB_SLTPRDT_SQ_PK
PRIMARY KEY(SLTPRDT_SQ_PK);

-- 상품 판매글
ALTER TABLE PRDT_POST_TB
ADD CONSTRAINT PRDT_POST_TB_PP_SQ_PK
PRIMARY KEY(PP_SQ_PK);

-- 한 줄 상품평
ALTER TABLE PRDT_COMMENT_TB
ADD CONSTRAINT PRDT_COMMENT_TB_PDCMM_SQ_PK
PRIMARY KEY(PDCMM_SQ_PK);

-- 상품판매글 이미지 목록
ALTER TABLE PRDT_POST_IMG_LIST_TB
ADD CONSTRAINT PPIL_TB_PPIL_SQ_PK
PRIMARY KEY(PPIL_SQ_PK);

-- 관심 상품글
ALTER TABLE INTEREST_TB
ADD CONSTRAINT INTEREST_TB_ITR_SQ_PK
PRIMARY KEY(ITR_SQ_PK);

-- 주문
ALTER TABLE ORDER_TB
ADD CONSTRAINT ORDER_TB_ORDER_SQ_PK
PRIMARY KEY(ORDER_SQ_PK);

-- 결제방식
ALTER TABLE PAYMENT_PLAN_TB
ADD CONSTRAINT PAYMENT_PLAN_TB_PAY_PLAN_NM_PK
PRIMARY KEY(PAY_PLAN_NM_PK);

-- 결제정보
ALTER TABLE PAYMENT_INFO_TB
ADD CONSTRAINT PAYMENT_INFO_TB_PAYINF_SQ_PK
PRIMARY KEY(PAYINF_SQ_PK);


-------------------------------------------------------------------------
-------------------------------------------------------------------------


-- [외래키 생성]

-- 회원정보 -> 권한분류
ALTER TABLE MEMBER_TB
ADD CONSTRAINT MEMBER_TB_GRADE_ST_PK_FK
FOREIGN KEY(GRADE_ST_PK)
REFERENCES GRADE_ST_TB(GRADE_ST_PK);

-- 마일리지 적립내역 -> 회원정보
ALTER TABLE MILEAGE_HISTORY_TB
ADD CONSTRAINT MILEAGE_HTR_TB_MEM_EMAIL_PK_FK
FOREIGN KEY(MEM_EMAIL_PK)
REFERENCES MEMBER_TB(MEM_EMAIL_PK);

-- 비밀번호 찾기 -> 비밀번호 찾기 질문 분류
ALTER TABLE PW_FIND_TB
ADD CONSTRAINT PW_FIND_TB_PW_FIND_ASK_PK_FK
FOREIGN KEY(PW_FIND_ASK_PK)
REFERENCES PW_FIND_ASK_TB(PW_FIND_ASK_PK);

-- 비밀번호 찾기 -> 회원정보
ALTER TABLE PW_FIND_TB
ADD CONSTRAINT PW_FIND_TB_PW_MEM_EMAIL_PK_FK
FOREIGN KEY(MEM_EMAIL_PK)
REFERENCES MEMBER_TB(MEM_EMAIL_PK);

-- 한 줄 상품평 -> 회원정보
ALTER TABLE PRDT_COMMENT_TB
ADD CONSTRAINT PRDT_CMMNT_TB_MEM_EMAIL_PK_FK
FOREIGN KEY(MEM_EMAIL_PK)
REFERENCES MEMBER_TB(MEM_EMAIL_PK);

-- 한 줄 상품평 -> 상품 판매글
ALTER TABLE PRDT_COMMENT_TB
ADD CONSTRAINT PRDT_COMMENT_TB_PP_SQ_PK_FK
FOREIGN KEY(PP_SQ_PK)
REFERENCES PRDT_POST_TB(PP_SQ_PK);

-- 상품 판매글 -> 배송비
ALTER TABLE PRDT_POST_TB
ADD CONSTRAINT PRT_PST_TB_DLVR_CHRG_NM_PK_FK
FOREIGN KEY(DLVR_CHRG_NM_PK)
REFERENCES DELIVERY_CHARGE_TB(DLVR_CHRG_NM_PK);

-- 상품 판매글 -> 상품상태
ALTER TABLE PRDT_POST_TB
ADD CONSTRAINT PRDT_POST_TB_PRDT_ST_NM_PK_FK
FOREIGN KEY(PRDT_ST_NM_PK)
REFERENCES PRDT_ST_TB(PRDT_ST_NM_PK);

-- 상품 판매글 -> 회원정보
ALTER TABLE PRDT_POST_TB
ADD CONSTRAINT PRDT_POST_TB_MEM_EMAIL_PK_FK
FOREIGN KEY(MEM_EMAIL_PK)
REFERENCES MEMBER_TB(MEM_EMAIL_PK);

-- 상품 판매글 -> 상품 공통정보
ALTER TABLE PRDT_POST_TB
ADD CONSTRAINT PRDT_POST_TB_PCI_SQ_PK_FK
FOREIGN KEY(PCI_SQ_PK)
REFERENCES PRDT_COMMON_INFO_TB(PCI_SQ_PK);

-- 상품판매글 이미지 목록 -> 상품 판매글
ALTER TABLE PRDT_POST_IMG_LIST_TB
ADD CONSTRAINT PPIL_TB_PP_SQ_PK_FK
FOREIGN KEY(PP_SQ_PK)
REFERENCES PRDT_POST_TB(PP_SQ_PK) ON DELETE CASCADE;

-- 상품 공통정보 -> 상품 브랜드
ALTER TABLE PRDT_COMMON_INFO_TB
ADD CONSTRAINT PRT_CMN_INF_TB_CTG_NM_FK
FOREIGN KEY(PRDT_CTG_NM)
REFERENCES PRDT_CATEGORY_TB(PRDT_CTG_NM);

-- 상품 대표 이미지 목록 -> 상품 공통정보
ALTER TABLE PRDT_REPRESENT_IMG_LIST_TB
ADD CONSTRAINT PRIL_TB_PCI_SQ_PK_FK
FOREIGN KEY(PCI_SQ_PK)
REFERENCES PRDT_COMMON_INFO_TB(PCI_SQ_PK) ON DELETE CASCADE;

-- 상품 -> 상품 공통정보
ALTER TABLE PRDT_TB
ADD CONSTRAINT PRDT_TB_PCI_SQ_PK_FK
FOREIGN KEY(PCI_SQ_PK)
REFERENCES PRDT_COMMON_INFO_TB(PCI_SQ_PK);

-- 상품 -> 치수
ALTER TABLE PRDT_TB
ADD CONSTRAINT PRDT_TB_PRDT_SIZE_PK
FOREIGN KEY(PRDT_SIZE_PK)
REFERENCES PRDT_SIZE_TB(PRDT_SIZE_PK);

-- 선택한 상품 -> 상품
ALTER TABLE SELECT_PRDT_TB
ADD CONSTRAINT SELECT_PRDT_TB_PRDT_CD_PK_FK
FOREIGN KEY(PRDT_CD_PK)
REFERENCES PRDT_TB(PRDT_CD_PK);

-- 선택한 상품 -> 상품 판매글
ALTER TABLE SELECT_PRDT_TB
ADD CONSTRAINT SELECT_PRDT_TB_PP_SQ_PK_FK
FOREIGN KEY(PP_SQ_PK)
REFERENCES PRDT_POST_TB(PP_SQ_PK);

-- 선택한 상품 -> 회원정보
ALTER TABLE SELECT_PRDT_TB
ADD CONSTRAINT SELECT_PRDT_TB_MEM_EMAIL_PK_FK
FOREIGN KEY(MEM_EMAIL_PK)
REFERENCES MEMBER_TB(MEM_EMAIL_PK);

-- 중고거래 게시글 -> 치수
ALTER TABLE USED_TRADE_POST_TB
ADD CONSTRAINT USE_TRD_PST_TB_SIZE_PK_FK
FOREIGN KEY(PRDT_SIZE_PK)
REFERENCES PRDT_SIZE_TB(PRDT_SIZE_PK);

-- 중고거래 게시글 -> 중고상품 상태
ALTER TABLE USED_TRADE_POST_TB
ADD CONSTRAINT USE_TRD_PST_TB_ST_GRD_PK_FK
FOREIGN KEY(USED_ST_GRADE_PK)
REFERENCES USED_ST_TB(USED_ST_GRADE_PK);

-- 중고거래 게시글 -> 중고거래 상태
ALTER TABLE USED_TRADE_POST_TB
ADD CONSTRAINT USE_TRD_PST_TB_TRD_ST_PK_FK
FOREIGN KEY(USED_TRADE_ST_PK)
REFERENCES USED_TRADE_ST_TB(USED_TRADE_ST_PK);

-- 중고거래 게시글 -> 지역
ALTER TABLE USED_TRADE_POST_TB
ADD CONSTRAINT USE_TRD_PST_TB_DTRT_PK_FK
FOREIGN KEY(DISTRICT_PK)
REFERENCES DISTRICT_TB(DISTRICT_PK);

-- 중고거래 게시글 -> 회원정보
ALTER TABLE USED_TRADE_POST_TB
ADD CONSTRAINT USE_TRD_PST_TB_MEM_EMAIL_PK_FK
FOREIGN KEY(MEM_EMAIL_PK)
REFERENCES MEMBER_TB(MEM_EMAIL_PK);

-- 중고거래 게시글 이미지 리스트 -> 중고거래 게시글
ALTER TABLE USED_TRADE_POST_IMG_LIST_TB
ADD CONSTRAINT UTPIL_TB_UTP_SQ_PK_FK
FOREIGN KEY(UTP_SQ_PK)
REFERENCES USED_TRADE_POST_TB(UTP_SQ_PK) ON DELETE CASCADE;

-- 중고거래 게시글 댓글 -> 중고거래 게시글
ALTER TABLE UTP_COMMENT_TB
ADD CONSTRAINT UTPC_TB_UTP_SQ_PK_FK
FOREIGN KEY(UTP_SQ_PK)
REFERENCES USED_TRADE_POST_TB(UTP_SQ_PK) ON DELETE CASCADE;

-- 중고거래 게시글 댓글 -> 회원정보
ALTER TABLE UTP_COMMENT_TB
ADD CONSTRAINT UTPC_TB_MEM_EMAIL_PK_FK
FOREIGN KEY(MEM_EMAIL_PK)
REFERENCES MEMBER_TB(MEM_EMAIL_PK);

-- 중고거래 게시글 댓글 -> 또다른 중고거래 게시글 댓글
ALTER TABLE UTP_COMMENT_TB
ADD CONSTRAINT UTPC_TB_UTPC_SQ_PK_FK
FOREIGN KEY(UTPC_SQ_PK)
REFERENCES UTP_COMMENT_TB(UTPC_SQ_PK);

-- 주문 -> 선택한 상품
ALTER TABLE ORDER_TB
ADD CONSTRAINT ORDER_TB_SLTPRDT_SQ_PK_FK
FOREIGN KEY(SLTPRDT_SQ_PK)
REFERENCES SELECT_PRDT_TB(SLTPRDT_SQ_PK);

-- 주문 -> 회원정보
ALTER TABLE ORDER_TB
ADD CONSTRAINT ORDER_TB_MEM_EMAIL_PK_FK
FOREIGN KEY(MEM_EMAIL_PK)
REFERENCES MEMBER_TB(MEM_EMAIL_PK);

-- 주문 -> 수령자 정보
ALTER TABLE ORDER_TB
ADD CONSTRAINT ORDER_TB_RINF_SQ_PK_FK
FOREIGN KEY(RINF_SQ_PK)
REFERENCES RECEIVER_INFO_TB(RINF_SQ_PK);

-- 주문 -> 주문상태
ALTER TABLE ORDER_TB
ADD CONSTRAINT ORDER_TB_ORDER_ST_NM_PK_FK
FOREIGN KEY(ORDER_ST_NM_PK)
REFERENCES ORDER_ST_TB(ORDER_ST_NM_PK);

-- 수령자 정보 -> 회원정보
ALTER TABLE RECEIVER_INFO_TB
ADD CONSTRAINT RCVR_INF_TB_MEM_EMAIL_PK_FK
FOREIGN KEY(MEM_EMAIL_PK)
REFERENCES MEMBER_TB(MEM_EMAIL_PK);

-- 결제정보 -> 결제방식
ALTER TABLE PAYMENT_INFO_TB
ADD CONSTRAINT PMT_INF_TB_PAY_PLAN_NM_PK_FK
FOREIGN KEY(PAY_PLAN_NM_PK)
REFERENCES PAYMENT_PLAN_TB(PAY_PLAN_NM_PK);

-- 결제정보 -> 주문
ALTER TABLE PAYMENT_INFO_TB
ADD CONSTRAINT PMT_INF_TB_ORDER_SQ_PK_FK
FOREIGN KEY(ORDER_SQ_PK)
REFERENCES ORDER_TB(ORDER_SQ_PK);

-- 관심 상품글 -> 상품 판매글
ALTER TABLE INTEREST_TB
ADD CONSTRAINT INSERT_TB_PP_SQ_PK_FK
FOREIGN KEY(PP_SQ_PK)
REFERENCES PRDT_POST_TB(PP_SQ_PK);

-- 관심 상품글 -> 회원정보
ALTER TABLE INTEREST_TB
ADD CONSTRAINT INSERT_TB_MEM_EMAIL_PK_FK
FOREIGN KEY(MEM_EMAIL_PK)
REFERENCES MEMBER_TB(MEM_EMAIL_PK);


-------------------------------------------------------------------------
-------------------------------------------------------------------------


-- [시퀀스 생성]

--해당 테이블의 시퀀스 생성
-- create sequence [이름] start with [시작값] increment by [증가값]
-- create sequence memos_seq
-- start with 1 increment by 1;

-- 회원정보
CREATE SEQUENCE MEMBER_TB_SEQ
START WITH 1
INCREMENT BY 1;

-- 마일리지 적립 내역
CREATE SEQUENCE MILEAGE_HISTORY_TB_SEQ
START WITH 1
INCREMENT BY 1;

-- 수령자 정보
CREATE SEQUENCE RECEIVER_INFO_TB_SEQ
START WITH 1
INCREMENT BY 1;

-- 상품 공통정보
CREATE SEQUENCE PRDT_COMMON_INFO_TB_SEQ
START WITH 1
INCREMENT BY 1;

-- 상품 대표 이미지 목록
CREATE SEQUENCE PRDT_REPRESENT_IMG_LIST_TB_SEQ
START WITH 1
INCREMENT BY 1;

-- 상품
CREATE SEQUENCE PRDT_TB_SEQ
START WITH 1
INCREMENT BY 1;

-- 중고상품 상태
CREATE SEQUENCE USED_ST_TB_SEQ
START WITH 1
INCREMENT BY 1;

-- 중고거래 게시글
CREATE SEQUENCE USED_TRADE_POST_TB_SEQ
START WITH 1
INCREMENT BY 1;

-- 중고거래 게시글 이미지 리스트
-- 이름이 너무 길어서 살짝 줄여놓은것에 유의
CREATE SEQUENCE USE_TRD_PST_IMG_LIST_TB_SEQ
START WITH 1
INCREMENT BY 1;

-- 중고거래 게시글 댓글
CREATE SEQUENCE UTP_COMMENT_TB_SEQ
START WITH 1
INCREMENT BY 1;

-- 선택한 상품
CREATE SEQUENCE SELECT_PRDT_TB_SEQ
START WITH 1
INCREMENT BY 1;

-- 상품 판매글
CREATE SEQUENCE PRDT_POST_TB_SEQ
START WITH 1
INCREMENT BY 1;

-- 한 줄 상품평
CREATE SEQUENCE PRDT_COMMENT_TB_SEQ
START WITH 1
INCREMENT BY 1;

-- 상품판매글 이미지 목록
CREATE SEQUENCE PRDT_POST_IMG_LIST_TB_SEQ
START WITH 1
INCREMENT BY 1;

-- 관심 상품글
CREATE SEQUENCE INTEREST_TB_SEQ
START WITH 1
INCREMENT BY 1;

-- 주문
CREATE SEQUENCE ORDER_TB_SEQ
START WITH 1
INCREMENT BY 1;

-- 결제정보
CREATE SEQUENCE PAYMENT_INFO_TB_SEQ
START WITH 1
INCREMENT BY 1;


--================================================================


-- [전부 실행했다면 이어서 mileage_trig.sql을 프롬프트로 이동해 직접 실행하시오.]

