-- criar a procedure:

DELIMITER $$
CREATE PROCEDURE RelatorioQuantidadeProdutosCompradosPorDia()
BEGIN
    SELECT data_compra, SUM(quantidade) AS quantidade_total
    FROM compras
    GROUP BY data_compra;
END$$
DELIMITER ;

-- Para chamar essa procedure e obter o relatório:
CALL RelatorioQuantidadeProdutosCompradosPorDia();


-- Salva o resultado do relatório em uma tabela para referência futura:
DELIMITER $$
CREATE PROCEDURE RelatorioQuantidadeProdutosCompradosPorDia()
BEGIN
    CREATE TABLE IF NOT EXISTS relatorio_quantidade_produtos_por_dia (
        data_compra DATE PRIMARY KEY,
        quantidade_total INT
    );
    
    INSERT INTO relatorio_quantidade_produtos_por_dia (data_compra, quantidade_total)
    SELECT data_compra, SUM(quantidade) AS quantidade_total
    FROM compras
    GROUP BY data_compra;
END$$
DELIMITER ;

