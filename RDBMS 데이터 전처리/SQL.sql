DROP DATABASE IF EXISTS prac;
CREATE DATABASE prac;

USE prac;

-- TABLE 추가
DROP TABLE IF EXISTS ssafy_1241530;
CREATE TABLE ssafy_1241530 (
	`car_test_nm` VARCHAR(100), 
    `addr_road` VARCHAR(500),
    `x` VARCHAR(100),
    `y` VARCHAR(100),
    `tel` VARCHAR(100),
    `tester` INTEGER,
    `work_time` VARCHAR(500),
    `agency_cd` VARCHAR(20),
    `agency_nm` VARCHAR(100),
    `ssafy_id` VARCHAR(100),
    `reg_dt` DATE
);

-- ssafy_id에 일괄 추가
UPDATE ssafy_1241530 SET ssafy_id = 'ksh96611';

-- Sql 쿼리를 이용하여 자동차검사소명 필드의 특수문자 제거
UPDATE ssafy_1241530 SET car_test_nm = REGEXP_REPLACE(car_test_nm, '[`~!#$%^&*|\\\'\";:\/?]','');

-- Sql 쿼리를 이용하여 자동차검사소명 필드의 텍스트 공백제거
UPDATE ssafy_1241530 SET car_test_nm = REGEXP_REPLACE(car_test_nm, ' ','');

-- 위도, 경도 필드 값을 소수점 2자리까지만 남도록 가공
UPDATE ssafy_1241530 SET x = CONVERT(CAST(x AS DECIMAL(10,2)), CHAR);
UPDATE ssafy_1241530 SET y = CONVERT(CAST(y AS DECIMAL(10,2)), CHAR);
