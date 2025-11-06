CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    tipo_usuario ENUM('comum', 'administrador') DEFAULT 'comum'
);

CREATE TABLE PontoDeColeta (
    id_ponto INT PRIMARY KEY AUTO_INCREMENT,
    nome_local VARCHAR(100) NOT NULL,
    endereco VARCHAR(255) NOT NULL
);

CREATE TABLE Coleta (
    id_coleta INT PRIMARY KEY AUTO_INCREMENT,
    data DATE NOT NULL,
    status VARCHAR(50) DEFAULT 'Pendente',
    id_usuario INT NOT NULL,
    id_ponto INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
    FOREIGN KEY (id_ponto) REFERENCES PontoDeColeta(id_ponto)
);

CREATE TABLE Item (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    tipo_item VARCHAR(100) NOT NULL,
    peso_estimado DECIMAL(5,2),
    id_coleta INT NOT NULL,
    FOREIGN KEY (id_coleta) REFERENCES Coleta(id_coleta)
);
