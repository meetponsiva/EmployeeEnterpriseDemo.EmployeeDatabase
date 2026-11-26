CREATE PROCEDURE [dbo].[sp_GetAllEmployees]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT [Id], [Name], [DepartmentId]
    FROM [dbo].[vw_EmployeeDirectory]
    ORDER BY [Id] DESC;
END
