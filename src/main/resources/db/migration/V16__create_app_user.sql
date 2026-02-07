CREATE TABLE app_user (
    user_id RAW(16) NOT NULL,
    role VARCHAR2(20) NOT NULL,
    name VARCHAR2(255 CHAR) NOT NULL,
    email VARCHAR2(255 CHAR) NOT NULL,
    password_hash VARCHAR2(255 CHAR) NOT NULL,
    banned NUMBER(1) DEFAULT 0 NOT NULL,
    picture_id RAW(16),
    CONSTRAINT pk_app_user PRIMARY KEY (user_id),
    CONSTRAINT uq_app_user_email UNIQUE (email),
    CONSTRAINT chk_app_user_role CHECK (role IN ('ADMIN', 'PLAYER')),
    CONSTRAINT chk_app_user_banned CHECK (banned IN (0, 1))
);
