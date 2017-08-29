DROP SEQUENCE IF EXISTS account_id_seq;
CREATE SEQUENCE account_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
DROP TABLE IF EXISTS account;
CREATE TABLE account (
 id  integer NOT NULL DEFAULT nextval('account_id_seq'::regclass),
 name text NOT NULL DEFAULT ''::text,
 balance integer NOT NULL,
  CONSTRAINT account_pkey PRIMARY KEY (id)
);