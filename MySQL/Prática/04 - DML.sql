-- Insert

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Notebook', '1200', 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Macbook Pro', '7200', 1);
INSERT INTO produtos VALUES (NULL, 'Notbook Acer Pro', '3300', 1);

INSERT INTO tipos_produto (descricao) VALUES ('Apple');

-- Update
UPDATE produtos set codigo_tipo = 3 WHERE codigo = 6;
UPDATE produtos SET descricao = 'Impressora Laser', preco = '700' WHERE  codigo = 4;

SELECT * FROM produtos;
SELECT * FROM tipos_produto;
