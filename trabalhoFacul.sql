CREATE TABLE IF NOT EXISTS Aluno (
Matricula INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255),
Nascimento DATE,
Endereco VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Professor (
ID INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
nascimento DATE,
formacao VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Disciplina (
ID INT AUTO_INCREMENT PRIMARY KEY,
id_professor INT(11),
nome VARCHAR(255),
horas VARCHAR(10)
);

INSERT INTO aluno (nome, nascimento, endereco) VALUES
('João Silva', '2000-05-12', 'Rua A, 123'),
('Maria Souza', '1999-08-20', 'Av. Central, 456'),
('Pedro Santos', '2001-02-03', 'Rua das Flores, 789'),
('Ana Costa', '2002-11-15', 'Rua Bela Vista, 321'),
('Lucas Pereira', '1998-07-30', 'Rua do Campo, 654');

INSERT INTO professor (nome, nascimento, formacao) VALUES
('Carlos Almeida', '1980-10-10', 'Matemática'),
('Fernanda Rocha', '1975-03-25', 'Física'),
('Roberto Lima', '1982-09-18', 'História'),
('Cláudia Pereira', '1988-01-05', 'Química'),
('Juliana Martins', '1979-12-22', 'Biologia');

INSERT INTO disciplina (id_professor, nome, horas) VALUES
(1, 'Cálculo I', 60),
(2, 'Física Geral', 80),
(3, 'História Moderna', 40),
(4, 'Química Orgânica', 70),
(5, 'Biologia Celular', 50);

SELECT * FROM aluno;
SELECT * FROM disciplina;
SELECT * FROM professor;

SET SQL_SAFE_UPDATES = 0;

UPDATE `faculdade`.`aluno` SET `nome` = 'Lucas Silva' WHERE (`ID` = '5');
UPDATE `faculdade`.`professor` SET `nome` = 'Cláudia Almeida' WHERE (`ID` = '4');
SELECT * FROM disciplina WHERE HORAS <= 60;

SELECT * FROM professor WHERE nome LIKE "%Almeida%";
SELECT * FROM aluno WHERE nome LIKE "%Silva%";
SELECT * FROM aluno WHERE YEAR(nascimento) > 2000;
SELECT * FROM disciplina WHERE HORAS > 50;
SELECT * FROM disciplina WHERE HORAS <= 60 LIMIT 2;
SELECT * FROM aluno ORDER BY Nascimento LIMIT 3;

DELETE FROM professor WHERE nome LIKE "%Almeida%";
DELETE FROM aluno WHERE nome LIKE "%Silva%";
DELETE FROM disciplina WHERE HORAS <= 60;