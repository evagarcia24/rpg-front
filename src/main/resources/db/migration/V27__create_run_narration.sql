CREATE TABLE run_narration (
    run_id RAW(16) NOT NULL,
    narration_type VARCHAR2(30) NOT NULL,
    narration_id RAW(16) NOT NULL,
    CONSTRAINT pk_run_narration PRIMARY KEY (run_id, narration_type),
    CONSTRAINT fk_run_narration_run FOREIGN KEY (run_id) REFERENCES game_run(run_id),
    CONSTRAINT fk_run_narration_id FOREIGN KEY (narration_id) REFERENCES narration(narration_id),
    CONSTRAINT chk_run_narration_type CHECK (narration_type IN ('OPENING', 'GAME_OVER', 'FINALE', 'TWIST_BRIDGE_OUTRO_INTRO'))
);
