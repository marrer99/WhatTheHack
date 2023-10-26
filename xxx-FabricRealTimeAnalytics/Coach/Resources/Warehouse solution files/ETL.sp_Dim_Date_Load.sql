/*******************************************************/
CREATE PROC [ETL].[sp_Dim_Date_Load]
@BeginDate DATE = '09/01/2023'
,@EndDate DATE = '12/31/2023'
AS
BEGIN
Declare @NumberOfDates int = Datediff(day,@BeginDate, @EndDate)
--select @NumberOfDates

WHILE @NumberOfDates > 0 
begin
    Insert Into [dbo].[dim_Date]
    SELECT DateKey
    ,Datepart(dd,DateKey) as DayOfMonth
    ,FORMAT(DateKey, 'MMMM') as MonthName
    ,Year(DateKey) as [Year]
    FROM 
    (SELECT DateKey = dateadd(d,@NumberOfDates, @BeginDate)
    ) Dates

    SET @NumberOfDates = @NumberOfDates - 1

end
END
GO