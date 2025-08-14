CREATE TABLE IF NOT EXISTS mpp_produto (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    codigo VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS mpp_produto_sku (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    codigo VARCHAR(255),
    id_mpp_produto INT REFERENCES mpp_produto(id)
);

CREATE TABLE IF NOT EXISTS mpp_armazem (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    descricao VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS mpp_produto_sku_armazem (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    saldo INT,
    id_mpp_produto_sku INT REFERENCES mpp_produto_sku(id),
    id_mpp_armazem INT REFERENCES mpp_armazem(id)
);

CREATE TABLE IF NOT EXISTS mpp_entidade (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    id_entidade INT,
    status VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS mpp_entidade_sinc (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    id_entidade INT REFERENCES mpp_entidade(id),
    status VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS mpp_iee (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    tabela_erp_pk INT,
    tabela_erp VARCHAR(255),
    tabela_hub_pk INT,
    tabela_hub VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS mpp_seller_produto (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    codigo VARCHAR(255),
    id_mpp_produto INT REFERENCES mpp_produto(id)
);

CREATE TABLE IF NOT EXISTS mpp_seller_produto_sku (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    codigo VARCHAR(255),
    id_mpp_seller_produto INT REFERENCES mpp_seller_produto(id),
    id_mpp_produto_sku INT REFERENCES mpp_produto_sku(id)
);

INSERT INTO mpp_produto (codigo) VALUES
('PROD001'),
('PROD002'),
('PROD003');

INSERT INTO mpp_produto_sku (codigo, id_mpp_produto) VALUES
('PROD001-SKU1', 1),
('PROD001-SKU2', 1),
('PROD002-SKU1', 2),
('PROD003-SKU1', 3),
('PROD003-SKU2', 3);

INSERT INTO mpp_armazem (descricao) VALUES
('Armazém Centro'),
('Armazém Norte');

INSERT INTO mpp_produto_sku_armazem (saldo, id_mpp_produto_sku, id_mpp_armazem) VALUES
(100, 1, 1),
(50, 2, 1),
(200, 3, 2),
(30, 4, 1),
(60, 5, 2);

INSERT INTO mpp_entidade (id_entidade, status) VALUES
(101, 'Ativo'),
(102, 'Inativo');

INSERT INTO mpp_entidade_sinc (id_entidade, status) VALUES
(1, 'Sincronizado'),
(2, 'Pendente');


INSERT INTO mpp_iee (tabela_erp_pk, tabela_erp, tabela_hub_pk, tabela_hub) VALUES
(1, 'produtos', 101, 'mpp_produto'),
(2, 'estoques', 102, 'mpp_produto_sku_armazem');


INSERT INTO mpp_seller_produto (codigo, id_mpp_produto) VALUES
('SELLER_PROD001', 1),
('SELLER_PROD002', 2);

INSERT INTO mpp_seller_produto_sku (codigo, id_mpp_seller_produto, id_mpp_produto_sku) VALUES
('SELLER_PROD001-SKU1', 1, 1),
('SELLER_PROD001-SKU2', 1, 2),
('SELLER_PROD002-SKU1', 2, 3);