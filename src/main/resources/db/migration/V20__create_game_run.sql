CREATE TABLE game_run (
    run_id RAW(16) NOT NULL,
    user_id RAW(16) NOT NULL,
    pack_id VARCHAR2(60) NOT NULL,
    status VARCHAR2(20) NOT NULL,
    CONSTRAINT pk_game_run PRIMARY KEY (run_id),
    CONSTRAINT fk_game_run_user FOREIGN KEY (user_id) REFERENCES app_user(user_id),
    CONSTRAINT fk_game_run_pack FOREIGN KEY (pack_id) REFERENCES pack(pack_id),
    CONSTRAINT chk_game_run_status CHECK (status IN ('ACTIVE', 'ARCHIVED'))
);
