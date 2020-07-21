DROP TABLE IF EXISTS LONG_TYPES;
DROP TABLE IF EXISTS MISC_TYPES;
DROP TABLE IF EXISTS CHAR_TYPES;
DROP TABLE IF EXISTS FLOATING_POINT_TYPES;
DROP TABLE IF EXISTS INTEGER_TYPES;
DROP TABLE IF EXISTS DECIMAL_TYPES;
DROP TABLE IF EXISTS SMALL_INT_TYPES;

CREATE TABLE LONG_TYPES(
    "L1" BIGSERIAL,
    "L2" BIGINT
);
CREATE TABLE MISC_TYPES(
    "M1" BOOLEAN,
    "M2" BYTEA,
    "M3" UUID
);
CREATE TABLE CHAR_TYPES(
    "C1" CHARACTER(5),
    "C2" CHAR,
    "C3" CHARACTER VARYING,
    "C4" VARCHAR(5),
    "C5" TEXT
);
CREATE TABLE FLOATING_POINT_TYPES(
    "F1" DOUBLE PRECISION,
    "F2" FLOAT8,
    "F3" REAL,
    "F4" FLOAT4
);
CREATE TABLE INTEGER_TYPES(
    "I1" SERIAL,
    "I2" INTEGER,
    "I3" INT,
    "I4" INT4
);
CREATE TABLE DECIMAL_TYPES(
    "N1" NUMERIC,
    "N2" NUMERIC(4),
    "N3" NUMERIC(5, 2),
    "N4" DECIMAL,
    "N5" DECIMAL(6),
    "N6" DECIMAL(7, 3)
);
CREATE TABLE SMALL_INT_TYPES(
    "S1" SMALLINT,
    "S2" INT2
);
