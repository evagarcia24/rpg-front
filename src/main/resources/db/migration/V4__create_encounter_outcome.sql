CREATE TABLE encounter_outcome (
    encounter_id RAW(16) NOT NULL,
    outcome_type VARCHAR2(20) NOT NULL,
    content CLOB,
    CONSTRAINT pk_encounter_outcome PRIMARY KEY (encounter_id, outcome_type),
    CONSTRAINT fk_encounter_outcome_parent FOREIGN KEY (encounter_id) REFERENCES encounter(encounter_id),
    CONSTRAINT chk_outcome_type CHECK (outcome_type IN ('FAILURE', 'NEUTRAL', 'SUCCESS', 'GREAT_SUCCESS'))
);
