USE LogRhythm_Events
Create PROCEDURE dbo.doShrink
AS
BEGIN
	SET NOCOUNT ON;

	DBCC SHRINKFILE(LogRhythm_Events, 3000);

END