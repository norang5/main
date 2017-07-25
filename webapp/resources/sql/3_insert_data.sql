-- 상품 카테고리(모두 소문자임에 주의)
INSERT INTO PRDT_CATEGORY_TB(PRDT_CTG_NM)
VALUES('superstar');
INSERT INTO PRDT_CATEGORY_TB(PRDT_CTG_NM)
VALUES('stan smith');
INSERT INTO PRDT_CATEGORY_TB(PRDT_CTG_NM)
VALUES('tubular');
INSERT INTO PRDT_CATEGORY_TB(PRDT_CTG_NM)
VALUES('nmd');
INSERT INTO PRDT_CATEGORY_TB(PRDT_CTG_NM)
VALUES('ultra boost');
INSERT INTO PRDT_CATEGORY_TB(PRDT_CTG_NM)
VALUES('yeezy boost');

-- 치수명(210 ~ 310, mm단위 안붙였음에 주의)
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('210');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('215');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('220');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('225');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('230');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('235');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('240');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('245');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('250');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('255');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('260');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('265');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('270');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('275');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('280');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('285');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('290');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('295');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('300');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('305');
INSERT INTO PRDT_SIZE_TB(PRDT_SIZE_PK)
VALUES('310');

-- 중고상품 상태
INSERT INTO USED_ST_TB(USED_ST_GRADE_PK)
VALUES('최상');
INSERT INTO USED_ST_TB(USED_ST_GRADE_PK)
VALUES('준수');
INSERT INTO USED_ST_TB(USED_ST_GRADE_PK)
VALUES('사용감 있음');
INSERT INTO USED_ST_TB(USED_ST_GRADE_PK)
VALUES('B급');

--중고거래 상태
INSERT INTO USED_TRADE_ST_TB(USED_TRADE_ST_PK)
VALUES('판매중');
INSERT INTO USED_TRADE_ST_TB(USED_TRADE_ST_PK)
VALUES('예약중');
INSERT INTO USED_TRADE_ST_TB(USED_TRADE_ST_PK)
VALUES('판매완료');
INSERT INTO USED_TRADE_ST_TB(USED_TRADE_ST_PK)
VALUES('판매중지');

-- 지역
INSERT INTO DISTRICT_TB(DISTRICT_PK)
VALUES('인천');
INSERT INTO DISTRICT_TB(DISTRICT_PK)
VALUES('서울');
INSERT INTO DISTRICT_TB(DISTRICT_PK)
VALUES('경기');
INSERT INTO DISTRICT_TB(DISTRICT_PK)
VALUES('강원');
INSERT INTO DISTRICT_TB(DISTRICT_PK)
VALUES('충남');
INSERT INTO DISTRICT_TB(DISTRICT_PK)
VALUES('충북');
INSERT INTO DISTRICT_TB(DISTRICT_PK)
VALUES('대전');
INSERT INTO DISTRICT_TB(DISTRICT_PK)
VALUES('경북');
INSERT INTO DISTRICT_TB(DISTRICT_PK)
VALUES('대구');
INSERT INTO DISTRICT_TB(DISTRICT_PK)
VALUES('전북');
INSERT INTO DISTRICT_TB(DISTRICT_PK)
VALUES('광주');
INSERT INTO DISTRICT_TB(DISTRICT_PK)
VALUES('전남');
INSERT INTO DISTRICT_TB(DISTRICT_PK)
VALUES('경남');
INSERT INTO DISTRICT_TB(DISTRICT_PK)
VALUES('울산');
INSERT INTO DISTRICT_TB(DISTRICT_PK)
VALUES('부산');
INSERT INTO DISTRICT_TB(DISTRICT_PK)
VALUES('제주');

select * from GRADE_ST_TB;
-- 권한 분류
INSERT INTO GRADE_ST_TB(GRADE_ST_PK)
VALUES('일반회원');
INSERT INTO GRADE_ST_TB(GRADE_ST_PK)
VALUES('운영자');
INSERT INTO GRADE_ST_TB(GRADE_ST_PK)
VALUES('관리자');

-- 결제방식
INSERT INTO PAYMENT_PLAN_TB(PAY_PLAN_NM_PK)
VALUES('무통장입금');
INSERT INTO PAYMENT_PLAN_TB(PAY_PLAN_NM_PK)
VALUES('계좌이체');

-- 주문상태
INSERT INTO ORDER_ST_TB(ORDER_ST_NM_PK)
VALUES('주문접수');
INSERT INTO ORDER_ST_TB(ORDER_ST_NM_PK)
VALUES('결제확인/상품준비중');
INSERT INTO ORDER_ST_TB(ORDER_ST_NM_PK)
VALUES('배송중');
INSERT INTO ORDER_ST_TB(ORDER_ST_NM_PK)
VALUES('배송완료');
INSERT INTO ORDER_ST_TB(ORDER_ST_NM_PK)
VALUES('주문취소');

-- 상품상태
INSERT INTO PRDT_ST_TB(PRDT_ST_NM_PK)
VALUES('준비중');
INSERT INTO PRDT_ST_TB(PRDT_ST_NM_PK)
VALUES('판매중');
INSERT INTO PRDT_ST_TB(PRDT_ST_NM_PK)
VALUES('품절');
INSERT INTO PRDT_ST_TB(PRDT_ST_NM_PK)
VALUES('절판');
INSERT INTO PRDT_ST_TB(PRDT_ST_NM_PK)
VALUES('완판');

-- 배송비
INSERT INTO DELIVERY_CHARGE_TB(DLVR_CHRG_NM_PK)
VALUES('무료배송');
INSERT INTO DELIVERY_CHARGE_TB(DLVR_CHRG_NM_PK)
VALUES('2,500원');
INSERT INTO DELIVERY_CHARGE_TB(DLVR_CHRG_NM_PK)
VALUES('2,800원');
INSERT INTO DELIVERY_CHARGE_TB(DLVR_CHRG_NM_PK)
VALUES('3,000원');
INSERT INTO DELIVERY_CHARGE_TB(DLVR_CHRG_NM_PK)
VALUES('5만원 이상 구매시 무료배송');


-- 비밀번호 찾기 질문 분류
INSERT INTO PW_FIND_ASK_TB(PW_FIND_ASK_PK)
VALUES('어릴 적 나의 별명은?');
INSERT INTO PW_FIND_ASK_TB(PW_FIND_ASK_PK)
VALUES('내가 나온 초등학교는?');
INSERT INTO PW_FIND_ASK_TB(PW_FIND_ASK_PK)
VALUES('가장 친한 친구의 이름은?');
INSERT INTO PW_FIND_ASK_TB(PW_FIND_ASK_PK)
VALUES('나의 어머니의 성함은?');
INSERT INTO PW_FIND_ASK_TB(PW_FIND_ASK_PK)
VALUES('나의 아버지의 성함은?');

