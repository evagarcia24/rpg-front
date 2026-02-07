CREATE TABLE character (
    character_id RAW(16) NOT NULL,
    user_id RAW(16) NOT NULL,
    race_id RAW(16) NOT NULL,
    status VARCHAR2(20) NOT NULL,
    name VARCHAR2(255 CHAR) NOT NULL,
    CONSTRAINT pk_character PRIMARY KEY (character_id),
    CONSTRAINT fk_character_user FOREIGN KEY (user_id) REFERENCES app_user(user_id),
    CONSTRAINT fk_character_race FOREIGN KEY (race_id) REFERENCES race(race_id),
    CONSTRAINT chk_character_status CHECK (status IN ('ACTIVE', 'ARCHIVED'))
);
