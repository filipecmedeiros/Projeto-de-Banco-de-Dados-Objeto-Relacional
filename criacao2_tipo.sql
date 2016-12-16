DROP TYPE tp_pais force;
DROP TYPE tp_endereco force;
DROP TYPE tp_nt_fones force;
DROP TYPE tp_pessoa force;
DROP TYPE tp_atleta force;
DROP TYPE tp_tecnico force;
DROP TYPE tp_equipe force;
DROP TYPE tp_equipamento force;
DROP TYPE tp_local force;
DROP TYPE tp_competicao force;
DROP TYPE tp_modalidade force;
DROP TYPE tp_competicao_modalidade force;
DROP TYPE tp_evento force;
DROP TYPE tp_medalha force;

CREATE OR REPLACE TYPE tp_pais AS OBJECT(
	id NUMBER,
	nome VARCHAR2(30),
	sigla CHAR(3),
	ref_pais_sede REF tp_pais
)FINAL;
/

CREATE OR REPLACE TYPE tp_endereco AS OBJECT(
  rua VARCHAR2(30),
  bairro VARCHAR2(30),
  cep NUMBER
)FINAL;
/

CREATE TYPE tp_nt_fones AS TABLE OF VARCHAR2(10);
/

CREATE OR REPLACE TYPE tp_pessoa AS OBJECT(
	cpf NUMBER,
  nome VARCHAR2(30),
	endereco tp_endereco,
  telefones tp_nt_fones,
	ref_pais_id REF tp_pais
)NOT FINAL NOT INSTANTIABLE;
/

CREATE OR REPLACE TYPE tp_atleta UNDER tp_pessoa(
	numero NUMBER
)FINAL;
/

CREATE OR REPLACE TYPE tp_tecnico UNDER tp_pessoa(
  diploma NUMBER
)FINAL;
/

CREATE OR REPLACE TYPE tp_equipe AS OBJECT(
  tecnico_cpf NUMBER,
  nome_equipe VARCHAR2(30),
  atleta_cpf NUMBER,
  ref_tecnico REF tp_tecnico,
  ref_atleta REF tp_atleta
)FINAL;
/

CREATE OR REPLACE TYPE tp_equipamento AS OBJECT(
	id NUMBER,
  nome VARCHAR2(30),
  descricao VARCHAR2(30),
  atleta_cpf NUMBER,
  ref_atleta REF tp_atleta
)FINAL;
/

CREATE OR REPLACE TYPE tp_local AS OBJECT(
  id NUMBER,
  nome VARCHAR2(30),
  capacidade NUMBER
)FINAL;
/

CREATE OR REPLACE TYPE tp_competicao AS OBJECT(
  id NUMBER,
  nome VARCHAR2(30),
  descricao VARCHAR2(30)
)FINAL;
/

CREATE OR REPLACE TYPE tp_modalidade AS OBJECT(
  id NUMBER,
  nome VARCHAR2(30),
  descricao VARCHAR2(30)
)FINAL;
/

CREATE OR REPLACE TYPE tp_competicao_modalidade AS OBJECT(
  competicao_id NUMBER,
  modalidade_id NUMBER,
  ref_competicao REF tp_competicao,
  ref_modalidade REF tp_modalidade
)FINAL;
/

CREATE OR REPLACE TYPE tp_evento AS OBJECT(
  pessoa_cpf NUMBER,
  local_id NUMBER,
  competicao_id NUMBER,
	data_evento DATE,
  ref_cpf REF tp_pessoa,
  ref_local REF tp_local,
  ref_competicao REF tp_competicao
)FINAL;
/

CREATE OR REPLACE TYPE tp_medalha AS OBJECT(
	id 	NUMBER,
  tipo CHAR(1),
  premiacao	DECIMAL(9,2),
  ref_evento REF tp_evento
)FINAL;
/