SELECT curdate();

SELECT current_time();

SELECT current_timestamp();

SELECT YEAR(current_timestamp());
SELECT DAY(current_timestamp());

SELECT MONTH(current_timestamp());

SELECT monthname(current_timestamp());

SELECT datediff(CURRENT_TIMESTAMP(), '1991-11-26') AS RESULTADO;

SELECT date_sub(CURRENT_TIMESTAMP(), INTERVAL 5 DAY) AS RESULTADO;

SELECT DISTINCT DATA_VENDA, 
dayname(DATA_VENDA) AS DIA, monthname(DATA_VENDA) AS MES,
 year(DATA_VENDA) AS ANO FROM notas_fiscais;
