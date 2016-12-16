-- CHECKLIST 2 - OR - GDI EC 2016.2

-- 1

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
);
/

-- 2

CREATE OR REPLACE TYPE tp_pessoa AS OBJECT(
	cpf NUMBER,
  	nome VARCHAR2(30),
	endereco tp_endereco,
  	telefones tp_nt_fones,
	ref_pais_id REF tp_pais
)NOT FINAL NOT INSTANTIABLE;
/

-- 3

CREATE OR REPLACE TYPE tp_nt_fones AS VARRAY(2) OF VARCHAR(10);
/

CREATE OR REPLACE TYPE tp_pessoa AS OBJECT(
	cpf NUMBER,
  	nome VARCHAR2(30),
	endereco tp_endereco,
  	telefones tp_nt_fones,
	ref_pais_id REF tp_pais
);
/

-- 4

CREATE OR REPLACE TYPE tp_nt_fones AS TABLE OF VARCHAR2(9);
/

CREATE OR REPLACE TYPE tp_pessoa AS OBJECT(
	cpf NUMBER,
  	nome VARCHAR2(30),
	endereco tp_endereco,
  	telefones tp_nt_fones,
	ref_pais_id REF tp_pais
)NOT FINAL NOT INSTANTIABLE;
/

-- 5

ALTER TYPE tp_pessoa ADD CONSTRUCTOR FUNCTION tp_pessoa(cpf NUMBER) RETURN SELF AS RESULT CASCADE;

CREATE OR REPLACE TYPE BODY tp_pessoa as
	CONSTRUCTOR FUNCTION tp_pessoa(cpf NUMBER) RETURN SELF AS RESULT IS
	BEGIN
		SELF.nome := 'Fulano';
		SELF.rua := rua;
		SELF.bairro := bairro;
		SELF.cep := cep;
		SELF.pais_id := pais_id;
		RETURN;
	END;
END;
/
		
-- 6

ALTER TYPE tp_pais ADD MEMBER FUNCTION retorna_sigla RETURN NUMBER CASCADE;

CREATE OR REPLACE TYPE BODY tp_pais AS
	MEMBER FUNCTION retorna_sigla RETURN NUMBER IS
	BEGIN
		RETURN SELF.sigla;
	END;
END;
/

-- Chamada em Consulta

SELECT P.nome, P.retorna_sigla() FROM tb_pais P WHERE P.id = '729';

-- Chamada em Bloco PL

DECLARE
	nome VARCHAR2(30);
	id number;
BEGIN
	SELECT P.ref_pais_sede.retorna_sigla(), P.ref_pais_sede.nome INTO id, nome FROM tb_pais P 
	WHERE P.nome = 'Brasil';
	DBMS_OUTPUT.PUT_LINE('nome pais: ' || nome);
	DBMS_OUTPUT.PUT_LINE('id pais: '|| id);	
END;
/

-- 7

ALTER TYPE tp_pessoa ADD MAP MEMBER FUNCTION cep RETURN NUMBER CASCADE;

CREATE OR REPLACE TYPE BODY tp_pessoa AS
	MAP MEMBER FUNCTION cep RETURN NUMBER IS
		BEGIN
			RETURN SELF.cep;
		END;
END;
/

--Chamada PL
 BEGIN
	DECLARE
		nome_p1 VARCHAR2(30);
		nome_p2 VARCHAR2(30);
		cep_p1 NUMBER;
		cep_p2 NUMBER;
	BEGIN
		SELECT p.nome, p.cep() INTO nome_p1, cep_p1 FROM tb_pessoa p WHERE p.cpf='09660138405';
		SELECT p.nome, p.cep() INTO nome_p2, cep_p2 FROM tb_pessoa p WHERE p.cpf='84312893207';
		
		DBMS_OUTPUT.PUT_LINE('pessoa 1: ' || nome_p1 || ', '|| cep_p1 || ' cep.');
		DBMS_OUTPUT.PUT_LINE('pessoa 2: ' || nome_p2 || ', '|| cep_p2 || ' cep.');
		
		IF (cep_p1 > cep_p2) THEN
			DBMS_OUTPUT.PUT_LINE('Pessoa 1 mora na região norte/nordeste.');
		ELSIF (cep_p1 < cep_p2) THEN
			DBMS_OUTPUT.PUT_LINE('Pessoa 2 mora na região sul/sudeste.');
		ELSE
			DBMS_OUTPUT.PUT_LINE('Os 2 moram na mesma região.');
		END IF;
	END;
END;
/

-- chamada SQL 

SELECT p2.nome AS nome, p2.CPF AS CPF, p2.cep() AS cep 
FROM tb_pessoa p1, tb_pessoa p2 
WHERE p1.cpf='09660138405' AND p1.cep()>p2.cep()
ORDER BY p2.cep;

-- 8

ALTER TYPE tp_medalha ADD ORDER MEMBER FUNCTION maior_valor(M tp_medalha) RETURN DECIMAL CASCADE;

	CREATE OR REPLACE TYPE BODY tp_medalha as
	ORDER MEMBER FUNCTION maior_valor(M tp_medalha) RETURN DECIMAL IS
	BEGIN
		IF premiacao > M.premiacao THEN
			DBMS_OUTPUT.PUT_LINE ('Maior valor!');
			RETURN 1;
		ELSIF premiacao < M.premiacao THEN
			DBMS_OUTPUT.PUT_LINE ('Menor valor!');
			RETURN -1;
		ELSE
			DBMS_OUTPUT.PUT_LINE ('Mesmo valor!');
			RETURN 0;
		END IF;
	END;
END;
/

--  CHAMADA PL 

BEGIN
    DECLARE
        A tp_medalha;
        B tp_medalha;
        C INTEGER;
     BEGIN
          SELECT VALUE(m) INTO A FROM tb_medalha m WHERE m.id = '001';
          SELECT VALUE(m) INTO B FROM tb_medalha m WHERE m.id = '002';
          C:= A.maior_valor(B);
          DBMS_OUTPUT.PUT_LINE(C);
       END;
END;
/ 

-- CHAMADA SQL 

SELECT value(m) FROM tb_medalha m, tb_medalha l WHERE l.id='001' AND m.maior_valor(value(l)) < 0;

-- 9

ALTER TYPE tp_pessoa ADD  MEMBER FUNCTION nome RETURN VARCHAR2 CASCADE;

CREATE OR REPLACE TYPE BODY tp_pessoa AS
		MEMBER FUNCTION nome RETURN VARCHAR2 IS
	BEGIN
		RETURN SELF.nome;
	END;
END;
/

--- CHAMADA PL

BEGIN
	DECLARE
		A INTEGER;
		B tp_pessoa;
	BEGIN
		SELECT VALUE(p) INTO B FROM tb_pessoa p WHERE p.nome = 'James Smith';
		A := B.nome();
		DBMS_OUTPUT.PUT_LINE(A);
	END;
END;
/

-- CHAMADA SQL
SELECT p.nome() FROM tb_pessoa p;

-- 10

ALTER TYPE tp_atleta ADD CONSTRUCTOR FUNCTION tp_atleta (x1 tp_pessoa) RETURN SELF AS RESULT CASCADE;
ALTER TYPE tp_atleta ADD OVERRIDING MAP MEMBER FUNCTION IDADE RETURN NUMBER CASCADE;

CREATE OR REPLACE TYPE BODY tp_atleta AS
	
	CONSTRUCTOR FUNCTION tp_atleta (x1 tp_pessoa) RETURN SELF AS RESULT IS 
	BEGIN
		cpf := x1.cpf;
		numero := x1.numero;
	END;
	
	OVERRIDING MAP MEMBER FUNCTION numero RETURN NUMBER IS
	BEGIN
		RETURN SELF.numero;
	END;
END;
/

-- 11

ALTER TYPE tp_pessoa ADD ATTRIBUTE (sexo CHAR) CASCADE;

-- 12

ALTER TYPE tp_pessoa MODIFY ATTRIBUTE (nome VARCHAR2(50)) CASCADE;

-- 13

ALTER TYPE tp_pessoa DROP ATTRIBUTE (endereco) CASCADE;

-- 14

ALTER TYPE tp_pessoa ADD ATTRIBUTE (nome_mae VARCHAR2(50)) CASCADE;

-- 15

ALTER TYPE tp_pessoa DROP ATTRIBUTE (nome_mae) INVALIDATE;

-- 16

CREATE OR REPLACE TYPE tp_evento AS OBJECT(
  	pessoa_cpf NUMBER,
  	local_id NUMBER,
  	competicao_id NUMBER,
	data_evento DATE,
  	ref_cpf REF tp_pessoa,
  	ref_local REF tp_local,
  	ref_competicao REF tp_competicao
);
/

-- 17

CREATE OR REPLACE TYPE tp_competicao_modalidade AS OBJECT(
  	competicao_id NUMBER,
  	modalidade_id NUMBER,
  	ref_competicao REF tp_competicao,
  	ref_modalidade REF tp_modalidade
)FINAL;
/

CREATE TABLE tb_competicao_modalidade OF tp_competicao_modalidade(
  	PRIMARY KEY (modalidade_id, competicao_id),
  	FOREIGN KEY (ref_modalidade) REFERENCES tb_modalidade,
  	FOREIGN KEY (ref_competicao) REFERENCES tb_competicao,
  	ref_competicao SCOPE IS tb_competicao
);
/

-- 18 Todas as tabelas dos scripts são criadas a partir de tipos.

-- 19

-- 20

SELECT DEREF(E.ref_atleta)
FROM tb_equipe E;

-- 21

SELECT VALUE(A)
FROM tb_atleta A
WHERE A.nome = 'Alex Lange';

-- 22

SELECT* FROM TABLE(
	SELECT A.nome
	FROM tb_atleta A
	WHERE cpf = '09328948979'
);

-- 23

SELECT nome FROM tb_pessoa WHERE nome LIKE 'O%';
SELECT nome FROM tb_atleta WHERE numero BETWEEN 0 AND 100;
SELECT * FROM tb_atleta ORDER BY numero;
SELECT diploma,Count(*) FROM tb_tecnico GROUP BY diploma HAVING COUNT(*)>1;

-- 24

-- 25

-- 26

SELECT* FROM TABLE(
	SELECT A.numero
	FROM tb_atleta A
	WHERE cpf = '84312893207'
);

-- 27

-- 28

CREATE OR REPLACE TRIGGER verifica
BEFORE INSERT ON tb_pessoa
FOR EACH ROW
DECLARE
	cont NUMBER;
BEGIN
	SELECT COUNT(*) INTO cont FROM tb_pessoa p WHERE p.nome = :NEW.nome;
	IF (cont > 0) THEN
		RAISE_APPLICATION_ERROR(-20020, 'Nome ja cadastrado');
	END IF;
END verifica;
/

-- 29

Create OR REPLACE TRIGGER impedir
BEFORE UPDATE ON tb_medalha
FOR EACH ROW
WHEN (NEW.premiacao > Old.premiacao)
BEGIN
	RAISE_APPLICATION_ERROR(-20017, 'Premiacao não pode aumentar');
END impedir;
/

-- 30

