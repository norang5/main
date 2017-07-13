-- [트리거 생성: 테이블 먼저 생성후에, 프롬프트에서 직접 실행할 것]

CREATE OR REPLACE TRIGGER MILEAGE_SUM
	AFTER
	INSERT ON MILEAGE_HISTORY_TB
	FOR EACH ROW
BEGIN
	UPDATE MEMBER_TB
	SET MEMBER_MILEAGE = MEMBER_MILEAGE + :NEW.MLH_FLUCTUATION_AMOUNT
	WHERE MEM_ID_PK = :NEW.MEM_ID_PK;
END;
/





-- [트리거 삭제]

DROP TRIGGER MILEAGE_SUM_TO_MEMER_TB;