SELECT c.name AS 'analysis_code'
FROM sys.columns c

SELECT c.name AS ColumnName, t.name AS TableName 
FROM sys.columns c JOIN sys.views t ON c.object_id = t.object_id 
WHERE c.name LIKE '%analysis_code%'

SELECT name FROM sys.databases WHERE CASE
WHEN state_desc = 'ONLINE'
THEN OBJECT_ID(QUOTENAME(name) + '.[dbo].[WEBAPP_COMPSALES_REPORT_UPDATEABLE]', 'U')
END IS NOT NULL 


SELECT * FROM sys.objects
WHERE type = 'PK'
AND object_id = OBJECT_ID('WEBAPP_COMP_SALES_COMP')



