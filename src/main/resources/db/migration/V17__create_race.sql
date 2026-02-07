CREATE TABLE race (
    race_id RAW(16) NOT NULL,
    user_id RAW(16),
    origin VARCHAR2(20) NOT NULL,
    name VARCHAR2(255 CHAR) NOT NULL,
    description VARCHAR2(800 CHAR),
    base_attack NUMBER(10),
    base_magic NUMBER(10),
    base_defense NUMBER(10),
    base_speed NUMBER(10),
    CONSTRAINT pk_race PRIMARY KEY (race_id),
    CONSTRAINT fk_race_user FOREIGN KEY (user_id) REFERENCES app_user(user_id),
    CONSTRAINT chk_race_origin CHECK (origin IN ('SYSTEM', 'CUSTOM'))
);
