-- Sequence: public.t_account_info_id_seq

-- DROP SEQUENCE public.t_account_info_id_seq;

CREATE SEQUENCE public.t_account_info_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.t_account_info_id_seq
  OWNER TO jetty;


  -- Sequence: public.t_account_sec_id_seq

  -- DROP SEQUENCE public.t_account_sec_id_seq;

  CREATE SEQUENCE public.t_account_sec_id_seq
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;
  ALTER TABLE public.t_account_sec_id_seq
    OWNER TO jetty;

    -- Sequence: public.t_request_feeds_id_seq

    -- DROP SEQUENCE public.t_request_feeds_id_seq;

    CREATE SEQUENCE public.t_request_feeds_id_seq
      INCREMENT 1
      MINVALUE 1
      MAXVALUE 9223372036854775807
      START 1
      CACHE 1;
    ALTER TABLE public.t_request_feeds_id_seq
      OWNER TO jetty;
