CREATE TABLE tbl1 (
    id int NOT NULL,
    first_name character varying NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE tbl2 (
    pid int NOT NULL,
    second_name character varying NOT NULL,
    id int,
    PRIMARY KEY (pid)
);
ALTER TABLE tbl2
ADD CONSTRAINT FK_tbl1_TO_tbl2 FOREIGN KEY (id) REFERENCES tbl1 (id);