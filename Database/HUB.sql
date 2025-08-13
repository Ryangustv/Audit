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
