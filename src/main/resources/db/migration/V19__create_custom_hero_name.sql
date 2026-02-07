CREATE TABLE custom_hero_name (
    user_id RAW(16) NOT NULL,
    name VARCHAR2(255 CHAR) NOT NULL,
    CONSTRAINT pk_custom_hero_name PRIMARY KEY (user_id, name),
    CONSTRAINT fk_custom_hero_name_user FOREIGN KEY (user_id) REFERENCES app_user(user_id)
);
