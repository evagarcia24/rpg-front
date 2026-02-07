CREATE TABLE narration (
    narration_id RAW(16) NOT NULL,
    pack_id VARCHAR2(60) NOT NULL,
    category_id NUMBER(10),
    subtype VARCHAR2(30) NOT NULL,
    content CLOB NOT NULL,
    CONSTRAINT pk_narration PRIMARY KEY (narration_id),
    CONSTRAINT fk_narration_pack FOREIGN KEY (pack_id) REFERENCES pack(pack_id),
    CONSTRAINT fk_narration_category FOREIGN KEY (category_id) REFERENCES category(category_id),
    CONSTRAINT chk_narration_subtype CHECK (subtype IN ('OPENING', 'GAME_OVER', 'FINALE', 'CHAPTER_INTRO', 'CHAPTER_OUTRO', 'TWIST_BRIDGE_OUTRO_INTRO'))
);
