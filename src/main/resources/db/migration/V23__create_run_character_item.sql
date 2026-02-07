CREATE TABLE run_character_item (
    run_id RAW(16) NOT NULL,
    character_id RAW(16) NOT NULL,
    item_type VARCHAR2(20) NOT NULL,
    item_id RAW(16) NOT NULL,
    assigned_times NUMBER(10) NOT NULL,
    CONSTRAINT pk_run_char_item PRIMARY KEY (run_id, character_id, item_type, item_id),
    CONSTRAINT fk_run_char_item_party FOREIGN KEY (run_id, character_id) REFERENCES run_party(run_id, character_id),
    CONSTRAINT fk_run_char_item_pool FOREIGN KEY (run_id, item_type, item_id) REFERENCES run_item_pool(run_id, item_type, item_id),
    CONSTRAINT chk_run_char_item_assigned CHECK (assigned_times >= 0)
);
