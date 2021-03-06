CREATE TABLE if not exists users
(
    chat_id   BIGINT NOT NULL
        CONSTRAINT users_pk
            PRIMARY KEY ,
    username  TEXT,
    full_name TEXT,
    referral  INTEGER,
    id        SERIAL NOT NULL,
    balance   INTEGER DEFAULT 0 NOT NULL
);

ALTER TABLE users OWNER TO postgres;

CREATE UNIQUE INDEX if not exists users_id_uindex ON users(id);
