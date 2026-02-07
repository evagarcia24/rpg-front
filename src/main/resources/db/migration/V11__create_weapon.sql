CREATE TABLE weapon (
    weapon_id RAW(16) NOT NULL,
    pack_id VARCHAR2(60) NOT NULL,
    name VARCHAR2(255 CHAR) NOT NULL,
    description VARCHAR2(800 CHAR) NOT NULL,
    CONSTRAINT pk_weapon PRIMARY KEY (weapon_id),
    CONSTRAINT fk_weapon_pack FOREIGN KEY (pack_id) REFERENCES pack(pack_id)
);
