CREATE TABLE public.cliente
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    nome character varying(60) NOT NULL,
    email character varying(255) NOT NULL,
    telefone character varying(20) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE public.cliente
    OWNER to postgres;