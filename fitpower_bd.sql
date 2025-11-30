DROP DATABASE IF EXISTS fitpower;
CREATE DATABASE fitpower;
USE fitpower;

CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    peso DECIMAL(5,2),
    altura DECIMAL(4,2),
    email VARCHAR(120)
);

CREATE TABLE Planos (
    id_plano INT AUTO_INCREMENT PRIMARY KEY,
    nome_plano VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    duracao_meses INT NOT NULL
);

CREATE TABLE Matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_plano INT,
    data_inicio DATE,
    ativo BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (id_plano) REFERENCES Planos(id_plano)
);

CREATE TABLE Treinos (
    id_treino INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    descricao VARCHAR(255),
    data DATE,
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno)
);

INSERT INTO Alunos (nome, idade, peso, altura, email) VALUES
('Pedro Henrique', 19, 72.0, 1.75, 'pedro@example.com'),
('Ana Souza', 25, 60.5, 1.65, 'ana.souza@example.com'),
('Carlos Lima', 32, 85.3, 1.80, 'carlos.lima@example.com');

INSERT INTO Planos (nome_plano, valor, duracao_meses) VALUES
('Mensal', 100.00, 1),
('Trimestral', 270.00, 3),
('Anual', 900.00, 12);

INSERT INTO Matriculas (id_aluno, id_plano, data_inicio) VALUES
(1, 1, '2025-02-01'),
(2, 3, '2025-01-20'),
(3, 2, '2025-02-10');

INSERT INTO Treinos (id_aluno, descricao, data) VALUES
(1, 'Treino A: Peito e Tríceps', '2025-02-05'),
(1, 'Treino B: Costas e Bíceps', '2025-02-07'),
(2, 'Treino C: Pernas e Abdômen', '2025-02-06');

SELECT * FROM Alunos;

SELECT nome, idade FROM Alunos
WHERE idade > 20;

SELECT A.nome, P.nome_plano, P.valor
FROM Matriculas M
JOIN Alunos A ON M.id_aluno = A.id_aluno
JOIN Planos P ON M.id_plano = P.id_plano;

SELECT * FROM Planos
ORDER BY valor ASC;

SELECT * FROM Alunos
LIMIT 2;

UPDATE Alunos
SET peso = 73.5
WHERE id_aluno = 1;

UPDATE Matriculas
SET id_plano = 3
WHERE id_matricula = 1;

UPDATE Matriculas
SET ativo = FALSE
WHERE id_matricula = 3;

DELETE FROM Treinos
WHERE id_treino = 3;

DELETE FROM Matriculas
WHERE id_matricula = 2;

DELETE FROM Alunos
WHERE id_aluno = 3;
