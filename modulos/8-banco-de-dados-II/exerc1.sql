-- Criar a base de dados
CREATE DATABASE IF NOT EXISTS videogames_db;

-- Usar a base de dados criada
USE videogames_db;

-- Criar tabela para os jogos
CREATE TABLE IF NOT EXISTS jogos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100),
    genero VARCHAR(50),
    plataforma VARCHAR(50),
    lancamento_year INT,
    desenvolvedora VARCHAR(100)
);

-- Criar tabela para as empresas desenvolvedoras
CREATE TABLE IF NOT EXISTS desenvolvedoras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    sede VARCHAR(100),
    fundacao_year INT
);

-- Criar tabela para as plataformas de jogos
CREATE TABLE IF NOT EXISTS plataformas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    fabricante VARCHAR(100),
    lancamento_year INT
);

-- Inserir dados na tabela de jogos
INSERT INTO jogos (titulo, genero, plataforma, lancamento_year, desenvolvedora)
VALUES
    ('The Witcher 3: Wild Hunt', 'RPG', 'PlayStation 4', 2015, 'CD Projekt Red'),
    ('The Legend of Zelda: Breath of the Wild', 'Action-Adventure', 'Nintendo Switch', 2017, 'Nintendo'),
    ('Grand Theft Auto V', 'Action', 'Xbox One', 2014, 'Rockstar Games');

-- Inserir dados na tabela de empresas desenvolvedoras
INSERT INTO desenvolvedoras (nome, sede, fundacao_year)
VALUES
    ('CD Projekt Red', 'Polônia', 1994),
    ('Nintendo', 'Japão', 1889),
    ('Rockstar Games', 'Estados Unidos', 1998);

-- Inserir dados na tabela de plataformas
INSERT INTO plataformas (nome, fabricante, lancamento_year)
VALUES
    ('PlayStation 4', 'Sony', 2013),
    ('Nintendo Switch', 'Nintendo', 2017),
    ('Xbox One', 'Microsoft', 2013);

-- Listar todos os jogos com informações sobre a desenvolvedora:
SELECT jogos.titulo, jogos.genero, jogos.plataforma, desenvolvedoras.nome AS desenvolvedora
FROM jogos
INNER JOIN desenvolvedoras ON jogos.desenvolvedora = desenvolvedoras.nome;

-- Listar todos os jogos lançados em plataformas da Sony:
SELECT jogos.titulo, jogos.genero, jogos.plataforma
FROM jogos
INNER JOIN plataformas ON jogos.plataforma = plataformas.nome
WHERE plataformas.fabricante = 'Sony';

 -- Listar todos os jogos com informações sobre a desenvolvedora e a plataforma em que foram lançados:
 SELECT jogos.titulo, jogos.genero, jogos.lancamento_year,
       desenvolvedoras.nome AS desenvolvedora, desenvolvedoras.sede,
       plataformas.nome AS plataforma, plataformas.fabricante
FROM jogos
INNER JOIN desenvolvedoras ON jogos.desenvolvedora = desenvolvedoras.nome
INNER JOIN plataformas ON jogos.plataforma = plataformas.nome;
