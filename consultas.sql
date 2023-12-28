-- Criação das tabelas
CREATE TABLE Produtos (
    ID_Produto INT PRIMARY KEY,
    Nome_Produto VARCHAR(50),
    Categoria VARCHAR(50),
    Preco DECIMAL(10, 2)
);

CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nome_Cliente VARCHAR(50),
    Email VARCHAR(50),
    Cidade VARCHAR(50)
);

CREATE TABLE Vendas (
    ID_Venda INT PRIMARY KEY,
    ID_Cliente INT,
    ID_Produto INT,
    Quantidade INT,
    Data_Venda DATE,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
    FOREIGN KEY (ID_Produto) REFERENCES Produtos(ID_Produto)
);

-- Inserção de dados fictícios
INSERT INTO Produtos (ID_Produto, Nome_Produto, Categoria, Preco)
VALUES
    (1, 'Camisa', 'Roupas', 29.99),
    (2, 'Calça Jeans', 'Roupas', 49.99),
    (3, 'Tênis', 'Calçados', 59.99),
    (4, 'Jaqueta', 'Roupas', 79.99),
    (5, 'Sapato Social', 'Calçados', 89.99),
    (6, 'Bermuda', 'Roupas', 39.99);

INSERT INTO Clientes (ID_Cliente, Nome_Cliente, Email, Cidade)
VALUES
    (1, 'João', 'joao@email.com', 'São Paulo'),
    (2, 'Maria', 'maria@email.com', 'Rio de Janeiro'),
    (3, 'Pedro', 'pedro@email.com', 'Belo Horizonte'),
    (4, 'Ana', 'ana@email.com', 'Curitiba'),
    (5, 'Lucas', 'lucas@email.com', 'Salvador'),
    (6, 'Mariana', 'mariana@email.com', 'Fortaleza');

INSERT INTO Vendas (ID_Venda, ID_Cliente, ID_Produto, Quantidade, Data_Venda)
VALUES
    (1, 1, 1, 2, '2023-01-15'),
    (2, 2, 2, 1, '2023-02-20'),
    (3, 3, 3, 3, '2023-03-10'),
    (4, 1, 4, 1, '2023-04-05'),
    (5, 2, 5, 2, '2023-05-12'),
    (6, 3, 6, 2, '2023-06-20'),
    (7, 4, 3, 1, '2023-07-25'),
    (8, 5, 2, 3, '2023-08-10'),
    (9, 6, 1, 2, '2023-09-15'),
    (10, 1, 5, 1, '2023-10-22'),
    (11, 2, 4, 3, '2023-11-30'),
    (12, 3, 6, 1, '2023-12-05'),
    (13, 1, 1, 2, '2022-01-15'),
    (14, 2, 2, 1, '2021-02-20'),
    (15, 3, 3, 3, '2019-03-10'),
    (16, 1, 4, 1, '2018-04-05'),
    (17, 2, 5, 2, '2024-05-12'),
    (18, 3, 6, 2, '2025-06-20'),
    (19, 4, 3, 1, '2022-07-25'),
    (20, 5, 2, 3, '2021-08-10'),
    (21, 6, 1, 2, '2020-09-15'),
    (22, 1, 5, 1, '2020-10-22'),
    (23, 2, 4, 3, '2020-11-30'),
    (24, 3, 6, 1, '2021-12-05');