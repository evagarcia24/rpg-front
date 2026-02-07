CREATE TABLE run_chapter_event (
    run_id RAW(16) NOT NULL,
    chapter_index NUMBER(10) NOT NULL,
    event_position NUMBER(10) NOT NULL,
    event_id RAW(16) NOT NULL,
    CONSTRAINT pk_run_chapter_event PRIMARY KEY (run_id, chapter_index, event_position),
    CONSTRAINT fk_run_evt_chapter FOREIGN KEY (run_id, chapter_index) REFERENCES run_chapter(run_id, chapter_index),
    CONSTRAINT fk_run_evt_event FOREIGN KEY (event_id) REFERENCES encounter(encounter_id),
    CONSTRAINT uq_run_chapter_event_event UNIQUE (run_id, chapter_index, event_id),
    CONSTRAINT chk_run_evt_position CHECK (event_position >= 1)
);
