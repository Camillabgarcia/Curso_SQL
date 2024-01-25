SELECT current_timestamp() AS RESULTADO;

SELECT concat('O DIA DE HOJE É: ',current_timestamp()) AS RESULTADO;

SELECT concat('O DIA DE HOJE É: ',
DATE_FORMAT (current_timestamp(),'%W, %d/%m/%Y') ) AS RESULTADO;

SELECT SUBSTRING(convert(23.3, CHAR), 1, 1) AS RESULTADO;