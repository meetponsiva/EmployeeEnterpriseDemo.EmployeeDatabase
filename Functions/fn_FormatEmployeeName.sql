CREATE FUNCTION [dbo].[fn_FormatEmployeeName]
(
    @Name NVARCHAR(100),
    @Department NVARCHAR(50)
)
RETURNS NVARCHAR(160)
AS
BEGIN
    RETURN @Name + ' (' + ISNULL(@Department, 'Engineering') + ')';
END
