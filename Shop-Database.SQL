-- Criação do banco de dados e das tabelas

-- Cria o banco de dados chamado 'shop'
CREATE DATABASE shop;

-- Seleciona o banco de dados 'shop' para ser usado
USE shop;

-- Cria a tabela 'customers'
CREATE TABLE customers (
    customerID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    PRIMARY KEY (customerID)
);

-- Cria a tabela 'orders'
CREATE TABLE orders (
    orderID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    orderDate DATE NOT NULL,
    totalAmount DECIMAL(10, 2) NOT NULL,
    customerID INT UNSIGNED,
    PRIMARY KEY (orderID),
    FOREIGN KEY (customerID) REFERENCES customers(customerID)
);

-- Inserindo clientes
INSERT INTO customers (name, phone, email) VALUES
('Carlos Silva', '11987654321', 'carlos.silva@email.com'),
('Maria Oliveira', '11912345678', 'maria.oliveira@email.com'),
('João Santos', '31987654321', 'joao.santos@email.com');

-- Inserindo pedidos
-- Pedidos para o cliente 1
INSERT INTO orders (customerID, orderDate, totalAmount) VALUES
(1, '2024-10-20', 100.50),
(1, '2024-10-21', 150.75);

-- Pedidos para o cliente 2
INSERT INTO orders (customerID, orderDate, totalAmount) VALUES
(2, '2024-10-20', 200.00),
(2, '2024-10-21', 250.25);

-- Pedidos para o cliente 3
INSERT INTO orders (customerID, orderDate, totalAmount) VALUES
(3, '2024-10-20', 50.00),
(3, '2024-10-21', 75.25);

-- Consulta JOIN entre pedidos e clientes
SELECT
    o.orderID,      -- ID do pedido
    o.orderDate,    -- Data do pedido
    o.totalAmount,  -- Valor total do pedido
    c.customerID,   -- ID do cliente
    c.name,         -- Nome do cliente
    c.phone,        -- Telefone do cliente
    c.email         -- Email do cliente
FROM
    orders o
JOIN
    customers c
ON
    o.customerID = c.customerID;

-- Atualizar o valor de um pedido
UPDATE orders
SET totalAmount = 250.00
WHERE orderID = 2;

-- Deletar todos os pedidos de um cliente específico
DELETE FROM orders
WHERE customerID = 1;
