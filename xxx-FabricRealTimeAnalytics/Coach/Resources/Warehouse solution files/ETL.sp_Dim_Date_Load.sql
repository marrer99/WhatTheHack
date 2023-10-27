/*******************************************************/
CREATE PROC [ETL].[sp_Dim_Date_Load]
@BeginDate DATE  
,@EndDate DATE 
AS
BEGIN
Select @BeginDate  = ISNULL(@BeginDate, DATEADD ( DAY , 1 , EOMONTH ( GETDATE ( ) , - 2 ) ))
Select @EndDate = ISNULL(@EndDate,EOMONTH ( GETDATE ( ) , 1 ))
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