-- 1분마다 데이터 생성
CREATE
    EVENT
    reg_data
    ON SCHEDULE EVERY 1 MINUTE
    COMMENT '1분마다 데이터 생성'
    DO INSERT INTO schedule_data VALUES ('test', now());
    
-- 현재 시간으로부터 5분 후 모든 데이터 삭제
CREATE
    EVENT
    delete_all
    ON SCHEDULE AT ADDDATE(NOW(), INTERVAL 5 MINUTE)
    COMMENT '5분 후 데이터 삭제'
    DO DELETE FROM schedule_data;

-- 특정 기간동안만 반복 실행되는 scheduler
CREATE
    EVENT
    only_during_5days
    ON SCHEDULE EVERY 3 MINUTE
    STARTS (current_date() + INTERVAL 1 DAY)
    ENDS (current_date() + INTERVAL 6 DAY)
    COMMENT '5일 동안만 작동되는 스케쥴러'
    DO INSERT INTO schedule_data VALUES ('special', now());

  
