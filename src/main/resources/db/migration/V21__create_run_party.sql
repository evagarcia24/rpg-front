CREATE TABLE run_party (
    run_id RAW(16) NOT NULL,
    character_id RAW(16) NOT NULL,
    health NUMBER(3) NOT NULL,
    lives NUMBER(10) NOT NULL,
    base_attack NUMBER(10),
    base_magic NUMBER(10),
    base_defense NUMBER(10),
    base_speed NUMBER(10),
    CONSTRAINT pk_run_party PRIMARY KEY (run_id, character_id),
    CONSTRAINT fk_run_party_run FOREIGN KEY (run_id) REFERENCES game_run(run_id),
    CONSTRAINT fk_run_party_character FOREIGN KEY (character_id) REFERENCES character(character_id),
    CONSTRAINT chk_run_party_health CHECK (health >= 0)
);
