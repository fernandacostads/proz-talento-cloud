-- Criar a base de dados
CREATE DATABASE IF NOT EXISTS programming_languages_db;

-- Usar a base de dados criada
USE programming_languages_db;

-- Criar tabela para as linguagens de programação
CREATE TABLE IF NOT EXISTS linguagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) UNIQUE,
    paradigma VARCHAR(100),
    ano_lancamento INT
);

-- Criar tabela para os desenvolvedores famosos
CREATE TABLE IF NOT EXISTS desenvolvedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    linguagem_principal VARCHAR(50),
    contribuicoes TEXT
);

-- Criar tabela para os projetos famosos
CREATE TABLE IF NOT EXISTS projetos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    linguagem_utilizada VARCHAR(50),
    descricao TEXT
);

-- inserção de dados

-- Inserir dados na tabela de linguagens
INSERT INTO linguagens (nome, paradigma, ano_lancamento)
VALUES
    ('Python', 'Multiparadigma', 1991),
    ('JavaScript', 'Multiparadigma', 1995),
    ('Java', 'Orientada a Objetos', 1995);

-- Inserir dados na tabela de desenvolvedores
INSERT INTO desenvolvedores (nome, linguagem_principal, contribuicoes)
VALUES
    ('Guido van Rossum', 'Python', 'Criador do Python'),
    ('Brendan Eich', 'JavaScript', 'Criador do JavaScript'),
    ('James Gosling', 'Java', 'Criador do Java');

-- Inserir dados na tabela de projetos
INSERT INTO projetos (nome, linguagem_utilizada, descricao)
VALUES
    ('Django', 'Python', 'Framework web em Python'),
    ('React', 'JavaScript', 'Biblioteca JavaScript para construção de interfaces de usuário'),
    ('Apache Tomcat', 'Java', 'Servidor de aplicação web');

--Criação de trigger

-- Criar o trigger
DELIMITER $$
CREATE TRIGGER novo_desenvolvedor_trigger
AFTER INSERT ON desenvolvedores
FOR EACH ROW
BEGIN
    INSERT INTO projetos (nome, linguagem_utilizada, descricao)
    VALUES
        (CONCAT('Projeto Pessoal de ', NEW.nome), NEW.linguagem_principal, 'Projeto pessoal de desenvolvimento');
END$$
DELIMITER ;

-- Agora, sempre que inserirmos um novo desenvolvedor na tabela desenvolvedores, um novo projeto pessoal
-- associado a esse desenvolvedor será automaticamente criado na tabela projetos. Por exemplo:
-- Inserir um novo desenvolvedor
INSERT INTO desenvolvedores (nome, linguagem_principal, contribuicoes)
VALUES
    ('Linus Torvalds', 'C', 'Criador do Linux');

-- Vai acionar o trigger e automaticamente criar um novo projeto na tabela projetos chamado 
-- "Projeto Pessoal de Linus Torvalds", utilizando a linguagem "C".

