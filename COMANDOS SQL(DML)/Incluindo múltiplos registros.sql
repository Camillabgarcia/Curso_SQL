USE VENDAS_SUCOS;

SELECT * FROM sucos_vendas.tabela_de_produtos;

SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR, EMBALAGEM, TAMANHO, SABOR,
PRECO_DE_LISTA AS PRECO_LISTA
FROM sucos_vendas.tabela_de_produtos
WHERE CODIGO_DO_PRODUTO NOT IN (SELECT CODIGO FROM produtos);

INSERT INTO produtos
SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR, SABOR, TAMANHO, EMBALAGEM,
PRECO_DE_LISTA AS PRECO_LISTA
FROM sucos_vendas.tabela_de_produtos
WHERE CODIGO_DO_PRODUTO NOT IN (SELECT CODIGO FROM produtos);

SELECT * FROM produtos;

INSERT INTO clientes (CPF, NOME, ENDERECO, BAIRRO, CIDADE, ESTADO, CEP, DATA_NASCIMENTO, IDADE, SEXO, LIMITE_CREDITO,
VOLUME_COMPRA, PRIMEIRA_COMPRA)
SELECT CPF, NOME, ENDERECO_1 AS ENDERECO, BAIRRO, CIDADE, ESTADO, CEP, DATA_DE_NASCIMENTO AS DATA_NASCIMENTO,
IDADE, SEXO, LIMITE_DE_CREDITO AS LIMITE_CREDITO, VOLUME_DE_COMPRA AS VOLUME_COMPRA, PRIMEIRA_COMPRA
FROM sucos_vendas.tabela_de_clientes
WHERE CPF NOT IN (SELECT CPF FROM CLIENTES);

SELECT * FROM clientes;

