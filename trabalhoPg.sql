CREATE TABLE filme (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100),
    genero VARCHAR(100),
    ano INT,
    duracao INT,
    diretor VARCHAR(100)
);

CREATE TABLE funcionarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(100),
    salario NUMERIC(10,2),
    idade INT,
    cidade VARCHAR(100),
    ativo BOOLEAN
);

CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(100),
    cargo VARCHAR(100),
    preco NUMERIC(10,2),
    estoque INT
);

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    cliente VARCHAR(100),
    produto VARCHAR(100),
    quantidade INT,
    valor_total NUMERIC(10,2),
    data_pedido DATE
);

SELECT * FROM funcionarios;

SELECT * FROM produtos;

SELECT * FROM pedidos;

SELECT nome FROM funcionarios;

SELECT nome, cargo FROM funcionarios;

SELECT * FROM funcionarios WHERE salario > 3000;

SELECT * FROM funcionarios WHERE idade < 30;

SELECT * FROM funcionarios WHERE ativo = true;

SELECT * FROM funcionarios WHERE ativo = false;

SELECT * FROM produtos WHERE preco > 500;

SELECT * FROM produtos WHERE preco < 100;

SELECT * FROM produtos WHERE estoque > 20;

SELECT * FROM pedidos WHERE valor_total > 500;

SELECT * FROM pedidos WHERE valor_total BETWEEN 200 AND 800;

SELECT * FROM funcionarios WHERE cidade = 'Porto Alegre';

SELECT * FROM funcionarios WHERE cidade IN ('Porto Alegre', 'Canoas');

SELECT * FROM funcionarios WHERE idade BETWEEN 20 AND 40;

SELECT * FROM produtos WHERE nome LIKE 'M%';

SELECT * FROM produtos WHERE nome LIKE '%a';

SELECT * FROM produtos WHERE nome LIKE '%Mouse%';

SELECT * FROM funcionarios WHERE idade > 25 AND ativo = true;

SELECT * FROM funcionarios WHERE cidade = 'Canoas' OR cidade = 'Novo Hamburgo';

SELECT * FROM funcionarios WHERE NOT ativo;

SELECT * FROM produtos ORDER BY preco ASC;

SELECT * FROM produtos ORDER BY preco DESC;

SELECT * FROM funcionarios ORDER BY nome ASC;

SELECT * FROM produtos LIMIT 5;

SELECT * FROM funcionarios LIMIT 3;

SELECT * FROM produtos WHERE categoria IN ('Acessórios', 'Escritorio');

SELECT * FROM pedidos WHERE data_pedido BETWEEN '2026-02-01' AND '2026-04-30';

CREATE TABLE fornecedores (
id SERIAL PRIMARY KEY,
nome VARCHAR(100),
cidade VARCHAR(100),
categoria VARCHAR(100),
telefone VARCHAR(11),
ativo BOOLEAN
);

INSERT INTO fornecedores(nome, cidade, categoria, telefone, ativo) VALUES
('Alpha Distribuidora', 'Porto Alegre', 'Eletrônicos', '51999990001', true),
('Beta Comercial', 'Canoas', 'Papelaria', '51999990002', true),
('Gamma Imports', 'Novo Hamburgo', 'Informática', '51999990003', false),
('Delta Atacado', 'Gravataí', 'Móveis', '51999990004', true),
('Omega Suprimentos', 'São Leopoldo', 'Escritório', '51999990005', false);

