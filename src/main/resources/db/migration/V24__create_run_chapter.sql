CREATE TABLE run_chapter (
    run_id RAW(16) NOT NULL,
    chapter_index NUMBER(10) NOT NULL,
    category_id NUMBER(10) NOT NULL,
    CONSTRAINT pk_run_chapter PRIMARY KEY (run_id, chapter_index),
    CONSTRAINT fk_run_chapter_run FOREIGN KEY (run_id) REFERENCES game_run(run_id),
    CONSTRAINT fk_run_chapter_category FOREIGN KEY (category_id) REFERENCES category(category_id)
);
