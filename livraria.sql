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
('Java para Iniciantes', 25.50, 15),
('Estruturas de Dados em C', 40.00, 5);

