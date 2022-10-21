/*MUDANDO O DELIMITADOR PARA $$ COM A FINALIDADE DE EVITAR CONFLITO NA PROCEDURE*/
DELIMITER $$
/*CRIA A PROCEDURE sp_pessoa_save E INDICA OS PARAMETROS RECEBIDOS*/
CREATE PROCEDURE sp_pessoa_save (
	pdesnome VARCHAR(200)
)

/*Declara o que a procedure fará com os dados recebidos*/
BEGIN
	INSERT INTO tb_pessoas VALUES(NULL,pdesnome,NULL);
    
    SELECT * FROM tb_pessoas WHERE idpessoa = LAST_INSERT_ID();
END $$
/*ENCERRA A PROCEDURE E RETORNA O DELIMITADOR PARA ;*/
DELIMITER ;
/*CHAMA A PROCEDURE*/
CALL sp_pessoa_save("Jotaro");