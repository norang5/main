-- 트리거 삭제를 먼저 수행하세요.

-- SQL> DROP TRIGGER MILEAGE_SUM;




-------------------------------------------------------------------------
-------------------------------------------------------------------------


-- [시퀀스 삭제]

-- 회원정보
DROP SEQUENCE MEMBER_TB_SEQ;

-- 마일리지 적립 내역
DROP SEQUENCE MILEAGE_HISTORY_TB_SEQ;

-- 수령자 정보
DROP SEQUENCE RECEIVER_INFO_TB_SEQ;

-- 상품 공통정보
DROP SEQUENCE PRDT_COMMON_INFO_TB_SEQ;

-- 상품 대표 이미지 목록
DROP SEQUENCE PRDT_REPRESENT_IMG_LIST_TB_SEQ;

-- 상품
DROP SEQUENCE PRDT_TB_SEQ;

-- 중고상품 상태
DROP SEQUENCE USED_ST_TB_SEQ;

-- 중고거래 게시글
DROP SEQUENCE USED_TRADE_POST_TB_SEQ;

-- 중고거래 게시글 이미지 리스트
DROP SEQUENCE USE_TRD_PST_IMG_LIST_TB_SEQ;

-- 선택한 상품
DROP SEQUENCE SELECT_PRDT_TB_SEQ;

-- 상품 판매글
DROP SEQUENCE PRDT_POST_TB_SEQ;

-- 한 줄 상품평
DROP SEQUENCE PRDT_COMMENT_TB_SEQ;

-- 상품판매글 이미지 목록
DROP SEQUENCE PRDT_POST_IMG_LIST_TB_SEQ;

-- 관심 상품글
DROP SEQUENCE INTEREST_TB_SEQ;

-- 주문
DROP SEQUENCE ORDER_TB_SEQ;

-- 결제정보
DROP SEQUENCE PAYMENT_INFO_TB_SEQ;


-------------------------------------------------------------------------
-------------------------------------------------------------------------


-- [외래키 제거]


-- 회원정보 -> 권한분류
ALTER TABLE MEMBER_TB drop CONSTRAINT MEMBER_TB_GRADE_ST_PK_FK;

-- 마일리지 적립 내역 -> 회원정보
ALTER TABLE MILEAGE_HISTORY_TB drop CONSTRAINT MILEAGE_HTR_TB_MEM_ID_PK_FK;

-- 수령자 정보 -> 회원정보
ALTER TABLE RECEIVER_INFO_TB drop CONSTRAINT RECEIVER_INFO_TB_MEM_ID_PK_FK;

-- 상품 공통정보 -> 상품 브랜드
ALTER TABLE PRDT_COMMON_INFO_TB drop CONSTRAINT PRT_CMN_INF_TB_CTG_NM_FK;

-- 상품 대표 이미지 목록 -> 상품 공통정보
ALTER TABLE PRDT_REPRESENT_IMG_LIST_TB drop CONSTRAINT PRIL_TB_PCI_SQ_PK_FK;

-- 상품 -> 치수
ALTER TABLE PRDT_TB drop CONSTRAINT PRDT_TB_PRDT_SIZE_PK;

-- 상품 -> 상품 공통정보
ALTER TABLE PRDT_TB drop CONSTRAINT PRDT_TB_PCI_SQ_PK_FK;

-- 중고거래 게시글 -> 회원정보
ALTER TABLE USED_TRADE_POST_TB drop CONSTRAINT USE_TRD_PST_TB_MEM_ID_PK_FK;

-- 중고거래 게시글 -> 치수
ALTER TABLE USED_TRADE_POST_TB drop CONSTRAINT USE_TRD_PST_TB_SIZE_PK_FK;

-- 중고거래 게시글 -> 상품
ALTER TABLE USED_TRADE_POST_TB drop CONSTRAINT USE_TRD_PST_TB_CD_PK_FK;

-- 중고거래 게시글 -> 중고상품 상태
ALTER TABLE USED_TRADE_POST_TB drop CONSTRAINT USE_TRD_PST_TB_ST_GRD_PK_FK;

-- 중고거래 게시글 -> 중고거래 상태
ALTER TABLE USED_TRADE_POST_TB drop CONSTRAINT USE_TRD_PST_TB_TRD_ST_PK_FK;

-- 중고거래 게시글 -> 지역
ALTER TABLE USED_TRADE_POST_TB drop CONSTRAINT USE_TRD_PST_TB_DTRT_PK_FK;

-- 중고거래 게시글 이미지 리스트 -> 중고거래 게시글
ALTER TABLE USED_TRADE_POST_IMG_LIST_TB drop CONSTRAINT UTPIL_TB_UTP_SQ_PK_FK;

-- 선택한 상품 -> 상품
ALTER TABLE SELECT_PRDT_TB drop CONSTRAINT SELECT_PRDT_TB_PRDT_CD_PK_FK;

-- 선택한 상품 -> 회원정보
ALTER TABLE SELECT_PRDT_TB drop CONSTRAINT SELECT_PRDT_TB_MEM_ID_PK_FK;

-- 선택한 상품 -> 상품 판매글
ALTER TABLE SELECT_PRDT_TB drop CONSTRAINT SELECT_PRDT_TB_PP_SQ_PK_FK;

-- 상품 판매글 -> 상품 공통정보
ALTER TABLE PRDT_POST_TB DROP CONSTRAINT PRDT_POST_TB_PCI_SQ_PK_FK;

-- 상품 판매글 -> 상품상태
ALTER TABLE PRDT_POST_TB drop CONSTRAINT PRDT_POST_TB_PRDT_ST_NM_PK_FK;

-- 상품 판매글 -> 배송비
ALTER TABLE PRDT_POST_TB drop CONSTRAINT PRT_PST_TB_DLVR_CHRG_NM_PK_FK;

-- 상품 판매글 -> 회원정보
ALTER TABLE PRDT_POST_TB drop CONSTRAINT PRDT_POST_TB_MEM_ID_FK;

-- 한 줄 상품평 -> 상품 판매글
ALTER TABLE PRDT_COMMENT_TB drop CONSTRAINT PRDT_COMMENT_TB_PP_SQ_PK_FK;

-- 한 줄 상품평 -> 회원정보
ALTER TABLE PRDT_COMMENT_TB drop CONSTRAINT PRDT_COMMENT_TB_MEM_ID_PK_FK;

-- 상품판매글 이미지 목록 -> 상품 판매글
ALTER TABLE PRDT_POST_IMG_LIST_TB drop CONSTRAINT PPIL_TB_PP_SQ_PK_FK;

-- 관심 상품글 -> 회원정보
ALTER TABLE INTEREST_TB drop CONSTRAINT INSERT_TB_MEM_ID_PK_FK;

-- 관심 상품글 -> 상품판매글
ALTER TABLE INTEREST_TB drop CONSTRAINT INSERT_TB_PP_SQ_PK_FK;

-- 주문 -> 선택한 상품
ALTER TABLE ORDER_TB drop CONSTRAINT ORDER_TB_SLTPRDT_SQ_PK_FK;

-- 주문 -> 수령자 정보
ALTER TABLE ORDER_TB drop CONSTRAINT ORDER_TB_RINF_SQ_PK_FK;

-- 주문 -> 주문상태
ALTER TABLE ORDER_TB drop CONSTRAINT ORDER_TB_ORDER_ST_NM_PK_FK;

-- 주문 -> 회원정보
ALTER TABLE ORDER_TB drop CONSTRAINT ORDER_TB_MEM_ID_PK_FK;

-- 결제정보 -> 결제방식
ALTER TABLE PAYMENT_INFO_TB drop CONSTRAINT PMT_INF_TB_PAY_PLAN_NM_PK_FK;

-- 결제정보 -> 주문
ALTER TABLE PAYMENT_INFO_TB drop CONSTRAINT PMT_INF_TB_ORDER_SQ_PK_FK;


-------------------------------------------------------------------------
-------------------------------------------------------------------------


-- [기본키 제거]

-- 권한 분류
ALTER TABLE GRADE_ST_TB drop primary key;

-- 회원정보
ALTER TABLE MEMBER_TB drop primary key;

-- 마일리지 적립 내역
ALTER TABLE MILEAGE_HISTORY_TB drop primary key;

-- 수령자 정보
ALTER TABLE RECEIVER_INFO_TB drop primary key;

-- 주문상태
ALTER TABLE ORDER_ST_TB drop primary key;

-- 상품상태
ALTER TABLE PRDT_ST_TB drop primary key;

-- 배송비
ALTER TABLE DELIVERY_CHARGE_TB drop primary key;

-- 상품 카테고리
ALTER TABLE PRDT_CATEGORY_TB drop primary key;

-- 상품 공통정보
ALTER TABLE PRDT_COMMON_INFO_TB drop primary key;

-- 상품 대표 이미지 목록
ALTER TABLE PRDT_REPRESENT_IMG_LIST_TB drop primary key;

-- 치수명
ALTER TABLE PRDT_SIZE_TB drop primary key;

-- 상품
ALTER TABLE PRDT_TB drop primary key;

-- 중고상품 상태
ALTER TABLE USED_ST_TB drop primary key;

-- 중고거래 상태
ALTER TABLE USED_TRADE_ST_TB drop primary key;

-- 지역
ALTER TABLE DISTRICT_TB drop primary key;

-- 중고거래 게시글
ALTER TABLE USED_TRADE_POST_TB drop primary key;

-- 중고거래 게시글 이미지 리스트
ALTER TABLE USED_TRADE_POST_IMG_LIST_TB drop primary key;

-- 선택한 상품
ALTER TABLE SELECT_PRDT_TB drop primary key;

-- 상품 판매글
ALTER TABLE PRDT_POST_TB drop primary key;

-- 한 줄 상품평
ALTER TABLE PRDT_COMMENT_TB drop primary key;

-- 상품판매글 이미지 목록
ALTER TABLE PRDT_POST_IMG_LIST_TB drop primary key;

-- 관심 상품글
ALTER TABLE INTEREST_TB drop primary key;

-- 주문
ALTER TABLE ORDER_TB drop primary key;

-- 결제방식
ALTER TABLE PAYMENT_PLAN_TB drop primary key;

-- 결제정보
ALTER TABLE PAYMENT_INFO_TB drop primary key;


-------------------------------------------------------------------------
-------------------------------------------------------------------------


-- [테이블 삭제]

-- 권한 분류
DROP TABLE GRADE_ST_TB PURGE;

-- 회원정보
DROP TABLE MEMBER_TB PURGE;

-- 마일리지 적립 내역
DROP TABLE MILEAGE_HISTORY_TB PURGE;

-- 수령자 정보
DROP TABLE RECEIVER_INFO_TB PURGE;

-- 주문상태
DROP TABLE ORDER_ST_TB PURGE;

-- 상품상태
DROP TABLE PRDT_ST_TB PURGE;

-- 배송비
DROP TABLE DELIVERY_CHARGE_TB PURGE;

-- 상품 카테고리
DROP TABLE PRDT_CATEGORY_TB PURGE;

-- 상품 공통정보
DROP TABLE PRDT_COMMON_INFO_TB PURGE;

-- 상품 대표 이미지 목록
DROP TABLE PRDT_REPRESENT_IMG_LIST_TB PURGE;

-- 치수명
DROP TABLE PRDT_SIZE_TB PURGE;

-- 상품
DROP TABLE PRDT_TB PURGE;

-- 중고상품 상태
DROP TABLE USED_ST_TB PURGE;

-- 중고거래 상태
DROP TABLE USED_TRADE_ST_TB PURGE;

-- 지역
DROP TABLE DISTRICT_TB PURGE;

-- 중고거래 게시글
DROP TABLE USED_TRADE_POST_TB PURGE;

-- 중고거래 게시글 이미지 리스트
DROP TABLE USED_TRADE_POST_IMG_LIST_TB PURGE;

-- 선택한 상품
DROP TABLE SELECT_PRDT_TB PURGE;

-- 상품 판매글
DROP TABLE PRDT_POST_TB PURGE;

-- 한 줄 상품평
DROP TABLE PRDT_COMMENT_TB PURGE;

-- 상품판매글 이미지 목록
DROP TABLE PRDT_POST_IMG_LIST_TB PURGE;

-- 관심 상품글
DROP TABLE INTEREST_TB PURGE;

-- 주문
DROP TABLE ORDER_TB PURGE;

-- 결제방식
DROP TABLE PAYMENT_PLAN_TB PURGE;

-- 결제정보
DROP TABLE PAYMENT_INFO_TB PURGE;







