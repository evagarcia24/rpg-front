CREATE TABLE run_chapter_narration (
    run_id RAW(16) NOT NULL,
    chapter_index NUMBER(10) NOT NULL,
    narration_role VARCHAR2(20) NOT NULL,
    narration_id RAW(16) NOT NULL,
    CONSTRAINT pk_run_chap_narration PRIMARY KEY (run_id, chapter_index, narration_role),
    CONSTRAINT fk_run_chap_nar_chapter FOREIGN KEY (run_id, chapter_index) REFERENCES run_chapter(run_id, chapter_index),
    CONSTRAINT fk_run_chap_nar_id FOREIGN KEY (narration_id) REFERENCES narration(narration_id),
    CONSTRAINT chk_run_chap_nar_role CHECK (narration_role IN ('CHAPTER_INTRO', 'CHAPTER_OUTRO'))
);
