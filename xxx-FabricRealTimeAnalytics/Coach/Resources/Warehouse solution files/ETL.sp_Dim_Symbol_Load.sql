
/*******************************************************/
CREATE PROC [ETL].[sp_Dim_Symbol_Load]
AS
BEGIN

DECLARE @MaxSK INT = (SELECT ISNULL(MAX(Symbol_SK),0) + 1 FROM [dbo].[dim_Symbol])

INSERT [dbo].[dim_Symbol]
SELECT DISTINCT 
    Symbol_SK = @MaxSK + ROW_NUMBER() OVER(ORDER BY Symbol)  
    , sdp.Symbol 
    , Name  = 'Stock ' + sdp.Symbol 
    , Market = case substring(Symbol,1,1)
                when 'B' then 'NASDAQ'
                when 'W' then 'NASDAQ'
                when 'I' then 'DOJ'
                when 'T' then 'SP500'
                else 'No Market'
                end
FROM 
    [stg].[vw_StocksDailyPrices] sdp
WHERE 
    sdp.Symbol NOT IN (SELECT Symbol FROM [dbo].[dim_Symbol])

END
GO