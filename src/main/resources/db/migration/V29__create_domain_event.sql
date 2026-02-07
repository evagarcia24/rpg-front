CREATE TABLE domain_event (
    event_id RAW(16) NOT NULL,
    aggregate_type VARCHAR2(100 CHAR) NOT NULL,
    aggregate_id RAW(16) NOT NULL,
    event_type VARCHAR2(100 CHAR) NOT NULL,
    occurred_at TIMESTAMP NOT NULL,
    payload CLOB NOT NULL,
    CONSTRAINT pk_domain_event PRIMARY KEY (event_id),
    CONSTRAINT chk_domain_event_json CHECK (payload IS JSON)
);
