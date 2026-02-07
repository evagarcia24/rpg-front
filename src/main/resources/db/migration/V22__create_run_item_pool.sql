CREATE TABLE run_item_pool (
    run_id RAW(16) NOT NULL,
    item_type VARCHAR2(20) NOT NULL,
    item_id RAW(16) NOT NULL,
    assigned_times NUMBER(10) DEFAULT 0 NOT NULL,
    CONSTRAINT pk_run_item_pool PRIMARY KEY (run_id, item_type, item_id),
    CONSTRAINT fk_run_item_pool_run FOREIGN KEY (run_id) REFERENCES game_run(run_id),
    CONSTRAINT chk_run_item_type CHECK (item_type IN ('WEAPON', 'SHIELD', 'POTION')),
    CONSTRAINT chk_run_item_pool_assigned CHECK (assigned_times >= 0)
);
