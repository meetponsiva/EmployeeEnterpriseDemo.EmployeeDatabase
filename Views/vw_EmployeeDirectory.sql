CREATE VIEW [dbo].[vw_EmployeeDirectory]
AS
SELECT
    [Id],
    [Name],
    DepartmentId
FROM [dbo].[EmployeeDetails];
