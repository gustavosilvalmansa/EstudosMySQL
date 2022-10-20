

/* DESCREVE A TABELA FUNCIONARIOS ("FIELDS, TYPE, NULL, KEY, DEFAULT, EXTRA")*/
DESCRIBE tb_funcionarios; 



/*ATUALIZA O SALARIO EM 20%(SALARIO = SALARIO * 1.2) DO USUARIO DA TABELA tb_funcionarios QUE POSSUI O id = 2*/
UPDATE tb_funcionarios SET salario = salario* 1.2 WHERE id="2";


/*EXCLUI O USUARIO QUE POSSUI O ID = 1*/
DELETE from tb_funcionarios where id ="1";

/*ATUALIZA A TABELA tb_funcionarios AUMENTANDO O salario EM 20% QUANDO O sexo FOR = "F"*/
UPDATE tb_funcionarios SET salario = salario * 1.2 WHERE sexo = "F";

/*ATUALIZE A admissao DOS FUNCIONARIOS PARA A DATA ATUAL QUANDO O id FOR = 2*/
UPDATE tb_funcionarios SET admissao = CURRENT_DATE() WHERE id = 2 ;

/*ATUALIZE A admissao DOS FUNCIONARIOS PARA A 60 DIAS A FRENTE QUANDO O id FOR = 2*/
UPDATE tb_funcionarios SET admissao = DATE_ADD(CURRENT_DATE(), INTERVAL 60  DAY) WHERE id = 2 ;


/*COMANDO INSERT */
INSERT INTO tb_funcionarios VALUES(1,"Gustavo","4999.00","2016-01-01", "M", NULL);

INSERT INTO tb_funcionarios(id, nome, salario, admissao, sexo) VALUES(2,"Gustavo2","8999.00","2022-10-01", "M");

INSERT INTO tb_funcionarios(nome, salario, admissao, sexo) VALUES("Gustavo1","8999.00","2022-10-01", "M"),("Gustavo2","5400.00","2022-10-01", "M"),("Gustavo3","8000.00","2022-10-01", "M");


/*INSERE LINHAS NA TABELA*/
INSERT INTO tb_pessoa(nome,sexo) VALUES 
("MARCO","M"),
("TIGRINHO","M"),
("RUGA","M"),
("JU","F"),
("JAQUE","F"),
("RITA","F"),
("LU","F");

/*INSERE NA TABELA tb_funcionarios OS DADOS VINDOS DA tb_pessoa
CAMPOS JA EXISTENTES COMO id,nome e sexo PODEMOS PEGAR DO CONTEUDO DA TABELA. 
CAMPOS NÃO EXISTANTES COMO salario, admissao e cadastro UTILIZAMOS FUNCOES OU DEFINIMOS VALOR FIXO
*/
INSERT into tb_funcionarios 
SELECT id,nome, 950.00, CURRENT_DATE(), sexo, NULL FROM tb_pessoa;