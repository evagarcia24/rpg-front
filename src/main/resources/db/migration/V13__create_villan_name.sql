CREATE TABLE villan_name (
    category_id NUMBER(10) NOT NULL,
    name VARCHAR2(255 CHAR) NOT NULL,
    CONSTRAINT pk_villan_name PRIMARY KEY (category_id, name),
    CONSTRAINT fk_villan_name_category FOREIGN KEY (category_id) REFERENCES category(category_id)
);
