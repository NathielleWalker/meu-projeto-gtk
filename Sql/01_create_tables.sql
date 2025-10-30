CREATE DATABASE Elles_shine;
USE Elles_shine;

CREATE TABLE vendedor (
    id_vendedor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefone CHAR(11),
    instagram VARCHAR(25),
    senha VARCHAR(6) NOT NULL
);

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefone CHAR(11),
    senha VARCHAR(6) NOT NULL
);

CREATE TABLE avaliacao_vendedor (
    id_avaliacao INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_cliente INT NOT NULL,
    id_vendedor INT NOT NULL,
    comentario TEXT NOT NULL,
    nota INT CHECK (nota >= 0 AND nota <= 5),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE endereco (
    id_endereco INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    rua VARCHAR(100) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    cep CHAR(8) NOT NULL,
    id_cliente INT,
    id_vendedor INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    id_vendedor INT NOT NULL,
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE pedido (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    valor_total DECIMAL(10,2) NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


-- Tabela de Relacionamento entre Pedido e Produto
CREATE TABLE contem (
    id_item_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    quantidade INT NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

