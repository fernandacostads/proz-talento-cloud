CREATE FUNCTION contar_clientes_por_dia(@data DATE)
RETURNS INT
AS
BEGIN
    DECLARE @total_clientes INT;
    
    SELECT @total_clientes = COUNT(*)
    FROM clientes
    WHERE data_cadastro = @data;

    RETURN @total_clientes;
END;

-- Exemplo: para conta o num de clientes em 18/04
SELECT dbo.contar_clientes_por_dia('2024-04-18') AS total_clientes;