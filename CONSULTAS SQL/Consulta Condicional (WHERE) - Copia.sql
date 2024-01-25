select * from tabela_de_produtos where sabor = 'Manga'
or TAMANHO = '470 ml';

select * from tabela_de_produtos where sabor = 'Manga'
AND tamanho = '470 ml';

select * from tabela_de_produtos where NOT (sabor = 'Manga'
AND tamanho = '470 ml');

select * from tabela_de_produtos where NOT( sabor = 'Manga'
or TAMANHO = '470 ml');

select * from tabela_de_produtos where sabor = 'Manga'
AND NOT ( TAMANHO = '470 ml');

SELECT * FROM tabela_de_produtos WHERE SABOR in ('Laranja', 'Manga');

SELECT * FROM tabela_de_clientes WHERE CIDADE IN ('Rio de Janeiro', 'São Paulo') and IDADE >= 20;

SELECT * FROM tabela_de_clientes WHERE CIDADE IN ('Rio de Janeiro', 'São Paulo') and (IDADE >= 20
AND IDADE <= 22);






