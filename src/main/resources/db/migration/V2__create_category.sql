CREATE TABLE category (
    category_id NUMBER(10) NOT NULL,
    pack_id VARCHAR2(60) NOT NULL,
    display_name VARCHAR2(255) NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (category_id),
    CONSTRAINT fk_category_pack FOREIGN KEY (pack_id) REFERENCES pack(pack_id),
    CONSTRAINT uq_category_display_name UNIQUE (display_name)
);
