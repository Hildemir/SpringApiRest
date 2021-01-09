CREATE TABLE public.ordem_servico
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    cliente_id bigint NOT NULL,
    descricao text NOT NULL,
    preco numeric NOT NULL,
    status character varying(20) NOT NULL,
    data_abertura date NOT NULL,
    data_finalizacao date,
    PRIMARY KEY (id),
    CONSTRAINT fk_ordem_servico_cliente FOREIGN KEY (cliente_id)
        REFERENCES public.cliente (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE public.ordem_servico
    OWNER to postgres;