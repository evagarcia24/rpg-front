CREATE TABLE potion_category (
    potion_id RAW(16) NOT NULL,
    category_id NUMBER(10) NOT NULL,
    CONSTRAINT pk_potion_category PRIMARY KEY (potion_id, category_id),
    CONSTRAINT fk_potion_cat_potion FOREIGN KEY (potion_id) REFERENCES potion(potion_id),
    CONSTRAINT fk_potion_cat_category FOREIGN KEY (category_id) REFERENCES category(category_id)
);
