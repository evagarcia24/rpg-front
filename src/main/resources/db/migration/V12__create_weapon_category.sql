CREATE TABLE weapon_category (
    weapon_id RAW(16) NOT NULL,
    category_id NUMBER(10) NOT NULL,
    CONSTRAINT pk_weapon_category PRIMARY KEY (weapon_id, category_id),
    CONSTRAINT fk_weapon_category_weapon FOREIGN KEY (weapon_id) REFERENCES weapon(weapon_id),
    CONSTRAINT fk_weapon_category_category FOREIGN KEY (category_id) REFERENCES category(category_id)
);
