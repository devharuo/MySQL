CREATE TABLE TB_CLASSE (
ID_CLASSE INT AUTO_INCREMENT PRIMARY KEY,
SIGNO VARCHAR(30) NOT NULL,
GOLPE_MORTAL VARCHAR(50)
);

INSERT INTO TB_CLASSE(ID_CLASSE, SIGNO, GOLPE_MORTAL)VALUES
(DEFAULT, "PÉGASO", "METEORO DE PÉGASO"),
(DEFAULT, "DRAGÃO", "CÓLERA DO DRAGÃO"),
(DEFAULT, "CISNE", "PÓ DE DIAMANTE"),
(DEFAULT, "FÊNIX", "AVE FÊNIX"),
(DEFAULT, "ANDRÔMEDA", "CORRENTE DE ANDRÕMEDA");

CREATE TABLE TB_CAVALEIRO (
ID_CAVALEIRO INT AUTO_INCREMENT PRIMARY KEY,
NIVEL VARCHAR(50) NOT NULL,
COR VARCHAR(30) NOT NULL,
COSMO INT NOT NULL,
foreign key (COSMO) references TB_CLASSE(ID_CLASSE)
);

INSERT INTO TB_CAVALEIRO (ID_CAVALEIRO, NIVEL, COR, COSMO) VALUES
(DEFAULT, "SEYIA", "BRONZE", "VERMELHO", 100),
(DEFAULT, "SHIRYU", "BRONZE", "VERDE", 60),
(DEFAULT, "HYOGA", "BRONZE", "AZUL", 40),
(DEFAULT, "SHUN", "BRONZE", "VERDE", 95),
(DEFAULT, "IKKI", "BRONZE", "LARANJA", 70);

-- FAÇA UM SELECT QUE RETORNE TODOS OS CAVALEIROS CUJO COSMO SEJA MAIOR QUE 95.

SELECT * FROM TB_CAVALEIRO WHERE COSMO > 95;

-- FAÇA UM SELECT QUE RETORNE TODOS OS CAVALEIROS CUJO COSMO ESTEJA ENTRE 50-70.

SELECT * FROM TB_CAVALEIRO WHERE COSMO BETWEEN 50 AND 70;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra S no atributo nome.

SELECT ID_CAVALEIRO FROM TB_CAVALEIRO WHERE ID_CAVALEIRO LIKE "%S%";

SELECT SIGNO, TB_CLASSE.ID_CLASSE
FROM TB_CAVALEIRO
INNER JOIN TB_CLASSE
ON TB_CLASSE.ID_CLASSE = TB_CAVALEIRO.COSMO;







