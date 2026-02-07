CREATE TABLE run_villan (
    run_id RAW(16) NOT NULL,
    villan_id RAW(16) NOT NULL,
    chapter_index NUMBER(10) NOT NULL,
    name VARCHAR2(255 CHAR) NOT NULL,
    health NUMBER(10) NOT NULL,
    lives NUMBER(10) NOT NULL,
    attack NUMBER(10) NOT NULL,
    magic NUMBER(10) NOT NULL,
    defense NUMBER(10) NOT NULL,
    speed NUMBER(10) NOT NULL,
    CONSTRAINT pk_run_villan PRIMARY KEY (run_id, villan_id),
    CONSTRAINT fk_run_villan_run FOREIGN KEY (run_id) REFERENCES game_run(run_id),
    CONSTRAINT fk_run_villan_race FOREIGN KEY (villan_id) REFERENCES villan_race(race_id),
    CONSTRAINT fk_run_villan_chapter FOREIGN KEY (run_id, chapter_index) REFERENCES run_chapter(run_id, chapter_index),
    CONSTRAINT chk_run_villan_health CHECK (health >= 0),
    CONSTRAINT chk_run_villan_lives CHECK (lives >= 0),
    CONSTRAINT chk_run_villan_stats CHECK (attack >= 0 AND magic >= 0 AND defense >= 0 AND speed >= 0)
);
