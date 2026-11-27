-- Runs in ALL environments (DEV, UAT, PROD, COB)
IF NOT EXISTS (SELECT 1 FROM [dbo].[DepartmentDetails] WHERE [DepartmentName] = 'IT Operations')
BEGIN
    INSERT INTO [dbo].[DepartmentDetails] ([DepartmentName]) VALUES ('IT Operations');
END

-- Runs ONLY in DEV and UAT (Skipped in PROD and COB!)
IF '$(EnvironmentName)' IN ('DEV', 'UAT')
BEGIN
    IF NOT EXISTS (SELECT 1 FROM [dbo].[EmployeeDetails] WHERE [Name] = 'QA Test User')
    BEGIN
        INSERT INTO [dbo].[EmployeeDetails] ([Name], [DepartmentId]) VALUES ('QA Test User', 1);
    END
END
