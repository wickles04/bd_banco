CREATE TABLE Cliente (
idCliente INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL,
dataNascimento DATETIME NOT NULL,
celular CHAR(11) NOT NULL,
cpf CHAR(11) NOT NULL,
tipoLogradouro VARCHAR(15),
nomeLogradouro VARCHAR(50) NOT NULL,
numero VARCHAR(6) NOT NULL,
complemento VARCHAR(10) DEFAULT 'não existe',
cidade VARCHAR(30) NOT NULL,
cep CHAR(8) NOT NULL,
estado CHAR(2) NOT NULL,
CONSTRAINT PRIMARY KEY(idCliente),
CONSTRAINT ck_tipoLogradouro CHECK (tipoLogradouro='Praça' OR tipoLogradouro='Rua' OR tipoLogradouro='Avenida' OR tipoLogradouro='Rodovia' OR tipoLogradouro='Viela')

);

SELECT * FROM CLIENTE

CREATE TABLE TipoConta(
idTipoConta INT AUTO_INCREMENT NOT NULL,
nomeTipoconta VARCHAR(20) NOT NULL,
CONSTRAINT PRIMARY KEY (idTipoConta),
CONSTRAINT UNIQUE (nomeTipoConta)
);