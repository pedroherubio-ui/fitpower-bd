FitPower — Banco de Dados 

Este repositório contém o banco de dados completo do sistema FitPower, desenvolvido para gerenciar alunos, planos, instrutores, treinos, modalidades e aulas de uma academia.

 Conteúdo do Repositório

fitpower.sql — criação do banco, tabelas, FKs, INSERTs, SELECTs, UPDATEs e DELETEs.

README.md — informações do projeto.

Minimundo (Resumo)

O sistema registra:

Alunos e seus planos

Instrutores e especialidades

Modalidades oferecidas

Treinos cadastrados

Aulas e horários
Com integridade, consistência e normalização (1FN, 2FN e 3FN).

Modelagem e Normalização

O modelo lógico foi revisado e normalizado:

1FN: dados atômicos

2FN: sem dependência parcial

3FN: sem dependência transitiva
O DER inclui as entidades principais: Aluno, Instrutor, Plano, Modalidade, Treino e Aula.

🛠️ Ferramentas Utilizadas

MySQL Server 8.x

MySQL Workbench

Git / GitHub

Como Executar o Projeto

Abra o MySQL Workbench

Vá em File > Open SQL Script

Selecione fitpower.sql

Execute (botão do raio)

Após executar

Você pode testar:

USE fitpower;
SHOW TABLES;
SELECT * FROM Aluno;

Scripts Inclusos

O arquivo .sql possui:

Criação do banco e das tabelas

Chaves primárias e estrangeiras

Inserts de exemplo

Consultas SELECT com JOIN

UPDATEs e DELETEs funcionais
