CREATE TABLE shield_category (
    shield_id RAW(16) NOT NULL,
    category_id NUMBER(10) NOT NULL,
    CONSTRAINT pk_shield_category PRIMARY KEY (shield_id, category_id),
    CONSTRAINT fk_shield_category_shield FOREIGN KEY (shield_id) REFERENCES shield(shield_id),
    CONSTRAINT fk_shield_category_category FOREIGN KEY (category_id) REFERENCES category(category_id)
);
