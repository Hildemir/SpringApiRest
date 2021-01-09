CREATE TABLE public.comentario
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    ordem_servico_id bigint NOT NULL,
    descricao text NOT NULL,
    data_envio date NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_comentario_ordem_servico FOREIGN KEY (ordem_servico_id)
        REFERENCES public.ordem_servico (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE public.comentario
    OWNER to postgres;