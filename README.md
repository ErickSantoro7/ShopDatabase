📦 Projeto Shop – Banco de Dados SQL

Este projeto consiste na criação e manipulação de um banco de dados relacional simples chamado shop, desenvolvido em SQL, com o objetivo de praticar conceitos fundamentais de modelagem de dados, relacionamentos, CRUD e JOINs.

🛠️ Tecnologias Utilizadas

MySQL (ou outro SGBD compatível com SQL)

Linguagem SQL

📚 Estrutura do Banco de Dados

O banco de dados possui duas tabelas principais:

🧑‍💼 Tabela customers

Armazena os dados dos clientes.

Campo	Tipo	Descrição
customerID	INT (PK)	Identificador do cliente
name	VARCHAR(50)	Nome do cliente
email	VARCHAR(100)	Email do cliente
phone	VARCHAR(15)	Telefone do cliente
🛒 Tabela orders

Armazena os pedidos realizados pelos clientes.

Campo	Tipo	Descrição
orderID	INT (PK)	Identificador do pedido
orderDate	DATE	Data do pedido
totalAmount	DECIMAL(10,2)	Valor total do pedido
customerID	INT (FK)	Referência ao cliente (customers)

📌 Relacionamento:

Um cliente pode ter vários pedidos (1:N).

⚙️ Funcionalidades Implementadas

✔️ Criação do banco de dados e tabelas
✔️ Inserção de dados (INSERT)
✔️ Consulta com JOIN entre clientes e pedidos
✔️ Atualização de registros (UPDATE)
✔️ Exclusão de dados (DELETE)
✔️ Uso de chave primária e chave estrangeira

🔎 Exemplo de Consulta JOIN

A consulta abaixo retorna os pedidos junto com os dados do cliente:

SELECT
    o.orderID,
    o.orderDate,
    o.totalAmount,
    c.customerID,
    c.name,
    c.phone,
    c.email
FROM orders o
JOIN customers c
ON o.customerID = c.customerID;

🎯 Objetivo do Projeto

Este projeto foi desenvolvido com fins educacionais, visando:

Praticar SQL básico e intermediário

Entender relacionamentos entre tabelas

Aplicar operações CRUD na prática

Servir como projeto de portfólio para vagas de estágio ou júnior em dados/back-end
