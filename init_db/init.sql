-- Create
--usr tbl
CREATE TABLE usr (
    user_id VARCHAR(255) PRIMARY KEY NOT NULL,
    user_name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role_name VARCHAR(255) NOT NULL
);

-- task tbl
CREATE TABLE task (
    task_id VARCHAR(255) PRIMARY KEY NOT NULL,
    task_name VARCHAR(255) NOT NULL,
    task_desc TEXT,
    user_id VARCHAR(255) NOT NULL,
    use_count INT NOT NULL,
    last_update timestamp NOT NULL
);

-- log tbl
CREATE TABLE log (
    log_id VARCHAR(255) PRIMARY KEY NOT NULL,
    task_id VARCHAR(255) NOT NULL,
    log_decl INT NOT NULL,
    log_real INT NOT NULL
);

-- INSERT
INSERT INTO usr
VALUES (1, 'Tanaka', 'password', 'USER'),(2, 'Sato', 'password', 'USER'),(3, 'Saitou', 'password', 'USER'),(4, 'Tanugami', 'password', 'ADMIN');

INSERT INTO task
VALUES (1, 'test1','this is test',1,1,'2021-02-01T03:15:45.000Z');

INSERT INTO log
VALUES (1,1,2,1);