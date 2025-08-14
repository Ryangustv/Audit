CREATE TABLE IF NOT EXISTS produtos (
    codigo VARCHAR(255),
    descricao VARCHAR(255),
    preco DECIMAL,
    ecommerce BOOLEAN
);

CREATE TABLE IF NOT EXISTS grades (
    escala VARCHAR(255),
    grade1 VARCHAR(255),
    grade2 VARCHAR(255),
    grade3 VARCHAR(255),
    grade4 VARCHAR(255),
    grade5 VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS estoques (
    produto VARCHAR(255),
    empresa VARCHAR(255),
    quantidade INTEGER
);


INSERT INTO produtos (codigo, descricao, preco, ecommerce) VALUES
('001', 'Camisa Esportiva', 49.90, TRUE),
('002', 'Bola de Futebol', 79.90, TRUE),
('003', 'Chuteira Profissional', 199.90, TRUE),
('004', 'Calção Esportivo', 29.90, FALSE),
('005', 'Meião de Futebol', 19.90, TRUE),
('006', 'Luvas de Goleiro', 89.90, FALSE),
('007', 'Garrafa Squeeze', 14.90, TRUE),
('008', 'Coletes de Treino', 39.90, FALSE),
('009', 'Apito para Árbitro', 9.90, TRUE),
('010', 'Caneleira Profissional', 24.90, FALSE);

INSERT INTO grades (escala, grade1, grade2, grade3, grade4, grade5) VALUES
('ROUPA', 'PP', 'P', 'M', 'G', 'GG'),
('TENIS', '38', '39', '40', '41', '42');

INSERT INTO grades (escala, grade1) VALUES
('UNICO', 'U');

INSERT INTO estoques (produto, empresa, quantidade) VALUES
('001PP', '01', 10),
('001P', '01', 15),
('001M', '01', 5),
('001G', '01', 2),
('001GG', '01', 1),
('002U', '01', 12),
('00338', '01', 3),
('00339', '01', 4),
('00340', '01', 4),
('00341', '01', 3),
('00342', '01', 1),
('007U', '01', 2),
('009U', '01', 5),
('010U', '01', 6);