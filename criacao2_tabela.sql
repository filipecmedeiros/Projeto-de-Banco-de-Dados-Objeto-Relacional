DROP TABLE tb_medalha;
DROP TABLE tb_evento;
DROP TABLE tb_competicao_modalidade;
DROP TABLE tb_modalidade;
DROP TABLE tb_competicao;
DROP TABLE tb_local;
DROP TABLE tb_equipamento;
DROP TABLE tb_equipe;
DROP TABLE tb_tecnico;
DROP TABLE tb_atleta;
DROP TABLE tb_pais;

CREATE TABLE tb_pais OF tp_pais(
	PRIMARY KEY (id),
  FOREIGN KEY (ref_pais_sede) REFERENCES tb_pais
); 
/

CREATE TABLE tb_atleta OF tp_atleta(
	PRIMARY KEY (cpf),
  nome NOT NULL,
  FOREIGN KEY (ref_pais_id) REFERENCES tb_pais
)NESTED TABLE telefones STORE AS tb_telefones_atleta;
/

CREATE TABLE tb_tecnico OF tp_tecnico(
	PRIMARY KEY (cpf),
  nome NOT NULL,
  FOREIGN KEY (ref_pais_id) REFERENCES tb_pais
)NESTED TABLE telefones STORE AS tb_telefones_tecnico;
/

CREATE TABLE tb_equipe OF tp_equipe(
  PRIMARY KEY (tecnico_cpf, nome_equipe, atleta_cpf),
  FOREIGN KEY (ref_tecnico) REFERENCES tb_tecnico,
  FOREIGN KEY (ref_atleta) REFERENCES tb_atleta
);
/

CREATE TABLE tb_equipamento OF tp_equipamento(
  PRIMARY KEY (id),
  atleta_cpf UNIQUE NOT NULL,
  FOREIGN KEY (ref_atleta) REFERENCES tb_atleta
);
/

CREATE TABLE tb_local OF tp_local(
  PRIMARY KEY (id)
);
/

CREATE TABLE tb_competicao OF tp_competicao(
  PRIMARY KEY (id)
);
/

CREATE TABLE tb_modalidade OF tp_modalidade(
  PRIMARY KEY (id)
);
/

CREATE TABLE tb_competicao_modalidade OF tp_competicao_modalidade(
  PRIMARY KEY (modalidade_id, competicao_id),
  FOREIGN KEY (ref_modalidade) REFERENCES tb_modalidade,
  FOREIGN KEY (ref_competicao) REFERENCES tb_competicao
);
/

CREATE TABLE tb_evento OF tp_evento(
	PRIMARY KEY (pessoa_cpf, local_id, competicao_id, data_evento),
  FOREIGN KEY (ref_local) REFERENCES tb_local,
  FOREIGN KEY (ref_competicao) REFERENCES tb_competicao
);
/

CREATE TABLE tb_medalha OF tp_medalha(
  PRIMARY KEY (id),
  CHECK (tipo='O' OR tipo='P' OR tipo='B'),
  FOREIGN KEY (ref_evento) REFERENCES tb_evento
);
/