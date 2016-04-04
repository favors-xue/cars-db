-- Table: public.t_account_info

-- DROP TABLE public.t_account_info;

CREATE TABLE public.t_account_info
(
  id integer NOT NULL DEFAULT nextval('t_account_info_id_seq'::regclass),
  name character varying(20),
  sec_id bigint,
  email character varying(100),
  remark character varying(255),
  type bit(1),
  CONSTRAINT pk_acct PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.t_account_info
  OWNER TO jetty;

  -- Table: public.t_account_sec

  -- DROP TABLE public.t_account_sec;

  CREATE TABLE public.t_account_sec
  (
    id bigint NOT NULL DEFAULT nextval('t_account_sec_id_seq'::regclass),
    role_id bigint,
    pwd character(100),
    CONSTRAINT pk_sec PRIMARY KEY (id)
  )
  WITH (
    OIDS=FALSE
  );
  ALTER TABLE public.t_account_sec
    OWNER TO jetty;

    -- Table: public.t_requests

    -- DROP TABLE public.t_requests;

    CREATE TABLE public.t_requests
    (
      id bigint,
      owner bigint
    )
    WITH (
      OIDS=FALSE
    );
    ALTER TABLE public.t_requests
      OWNER TO jetty;
