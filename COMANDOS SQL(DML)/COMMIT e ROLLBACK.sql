START transaction;

SELECT * FROM vendedores;

UPDATE vendedores SET COMISSAO = COMISSAO * 1.15;

rollback;

COMMIT;

START transaction;

INSERT INTO `vendas_sucos`.`vendedores`
(`MATRICULA`,
`NOME`,
`BAIRRO`,
`COMISSAO`,
`DATA_ADMISSAO`,
`FERIAS`)
VALUES
('99999',
'JOÃO DA SILVA',
'Icaraí',
0.08,
'2012-01-15',
0);

UPDATE vendedores SET COMISSAO = COMISSAO * 1.15;


INSERT INTO `vendas_sucos`.`vendedores`
(`MATRICULA`,
`NOME`,
`BAIRRO`,
`COMISSAO`,
`DATA_ADMISSAO`,
`FERIAS`)
VALUES
('99998',
'JOÃO DA SILVA2',
'Icaraí',
0.08,
'2012-01-15',
0);

ROLLBACK;

COMMIT;

