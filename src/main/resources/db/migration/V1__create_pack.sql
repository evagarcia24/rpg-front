CREATE TABLE pack (
    pack_id VARCHAR2(60) NOT NULL,
    version VARCHAR2(20),
    created_at TIMESTAMP,
    description VARCHAR2(800 CHAR),
    CONSTRAINT pk_pack PRIMARY KEY (pack_id)
);
