CREATE DATABASE Combatentes;

USE angola_janga;

CREATE TABLE combatentes (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50),
quilombo VARCHAR(50),
idade INT,
bantu VARCHAR(50),
combate VARCHAR(100)
);

INSERT INTO combatentes (nome, quilombo, idade, bantu, combate)
VALUES ('Jelani', 'Subupira', 25, 'Kikongo', 'velocidade, resistência'),
('Kwame', 'Aqualtune', 20, 'Quimbundo', 'comunicação, resistência'),
('Malik', 'Andalaquituche', 18, 'Kimbundu', 'resistência, camuflagem'),
('Jelani', 'Subupira', 22, 'Kikongo', 'camuflagem, habilidade com lança'),
('Tariq', 'Macaco', 24, 'Umbundu', 'habilidade com lança, habilidade com arco e
flecha'),
('Amari', 'Aqualtune', 21, 'Quimbundo', 'habilidade com arco e flecha,
comunicação'),
('Oluwafemi', 'Aqualtune', 19, 'Quimbundo', 'habilidade com lança, comunicação'),
('Zuberi', 'Andalaquituche', 20, 'Kimbundu', 'resistência, habilidade com lança'),
('Kofi', 'Subupira', 23, 'Kikongo', 'camuflagem, habilidade com arco e flecha'),
('Ayodele', 'Macaco', 25, 'Umbundu', 'habilidade com arco e flecha, comunicação'),
('Jabari', 'Aqualtune', 22, 'Quimbundo', 'resistência, camuflagem'),
('Ayo', 'Andalaquituche', 20, 'Kimbundu', 'habilidade com lança, comunicação'),
('Dike', 'Subupira', 24, 'Kikongo', 'camuflagem, habilidade com arco e flecha'),
('Obi', 'Macaco', 21, 'Umbundu', 'habilidade com arco e flecha, resistência'),
('Tendai', 'Aqualtune', 23, 'Quimbundo', 'comunicação, habilidade com lança'),
('Chidi', 'Andalaquituche', 22, 'Kimbundu', 'habilidade com arco e flecha,
resistência'),
('Jafari', 'Subupira', 20, 'Kikongo', 'camuflagem, habilidade com lança'),
('Kwasi', 'Macaco', 25, 'Umbundu', 'habilidade com arco e flecha, comunicação'),
('Osei', 'Aqualtune', 19, 'Quimbundo', 'resistência, habilidade com lança'),
('Oumar', 'Andalaquituche', 21, 'Kimbundu', 'camuflagem, habilidade com arco e
flecha'),
('Aisha', 'Subupira', 23, 'Kikongo', 'habilidade com arco e flecha, comunicação');

##drop database angola_janga;