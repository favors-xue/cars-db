-- Table: public.t_account_info

-- DROP TABLE public.t_account_info;

CREATE TABLE public.t_account_info
(
  id bigint NOT NULL DEFAULT nextval('t_account_info_id_seq'::regclass),
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
  pwd character varying(100),
  CONSTRAINT pk_sec PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.t_account_sec
  OWNER TO jetty;


  -- Table: public.t_request_feeds

  -- DROP TABLE public.t_request_feeds;

  CREATE TABLE public.t_request_feeds
  (
    id bigint NOT NULL DEFAULT nextval('t_request_feeds_id_seq'::regclass),
    owner bigint,
    CONSTRAINT pk_request_feeds PRIMARY KEY (id)
  )
  WITH (
    OIDS=FALSE
  );
  ALTER TABLE public.t_request_feeds
    OWNER TO jetty;

    -- Table: public.t_operator_info

    -- DROP TABLE public.t_operator_info;

    CREATE TABLE public.t_operator_info
    (
      id bigint NOT NULL DEFAULT nextval('t_operator_info_id_seq'::regclass),
      skills character varying(20)[],
      car_type integer[],
      rating bigint,
      CONSTRAINT pk_operator_id PRIMARY KEY (id)
    )
    WITH (
      OIDS=FALSE
    );
    ALTER TABLE public.t_operator_info
      OWNER TO jetty;
