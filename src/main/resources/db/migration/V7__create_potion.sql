CREATE TABLE potion (
    potion_id RAW(16) NOT NULL,
    pack_id VARCHAR2(60) NOT NULL,
    subtype VARCHAR2(20) NOT NULL,
    name VARCHAR2(255 CHAR) NOT NULL,
    description VARCHAR2(800 CHAR),
    CONSTRAINT pk_potion PRIMARY KEY (potion_id),
    CONSTRAINT fk_potion_pack FOREIGN KEY (pack_id) REFERENCES pack(pack_id),
    CONSTRAINT chk_potion_subtype CHECK (subtype IN ('HEAL', 'IMMUNITY', 'POWER'))
);
