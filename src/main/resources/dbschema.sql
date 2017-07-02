DROP TABLE IF EXISTS USER;
DROP TABLE IF EXISTS LOG;

CREATE TABLE IF NOT EXISTS USER (
    IDUSER INT GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1) NOT NULL,
    USERNAME VARCHAR(255) NOT NULL PRIMARY KEY,
    PASSWORD  VARCHAR(255) NOT NULL,
    ENABLED BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS AUTHORITIES(
      USERNAME VARCHAR(255) NOT NULL,
      AUTHORITY VARCHAR(255) NOT NULL,
      CONSTRAINT FK_AUTHORITIES_USER FOREIGN KEY(USERNAME) REFERENCES USER(USERNAME));
;

CREATE TABLE IF NOT EXISTS LOG (
	IDLOG INT GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1) NOT NULL,
    LOGSTRING VARCHAR(1000) NULL,
    PRIMARY KEY (IDLOG)
);