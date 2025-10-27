CREATE DATABASE livraria_db;
USE livraria_db;

CREATE TABLE Produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL
);

CREATE TABLE Pedido (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    id_produto INT,
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

INSERT INTO Produto (nome, preco, estoque) VALUES
('Harry Potter, 0.99, 47),
('O Senhor dos Anéis', 1.50, 30),
('O Guia do Mochileiro das Galáxias', 99.00, 42);

INSERT INTO Pedido (data_pedido, valor_total, id_produto) VALUES
('2024-01-15', 0.99, 1),
('2024-02-20', 1.50, 2),
('2024-03-10', 99.00, 3);

