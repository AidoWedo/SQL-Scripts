CREATE PROCEDURE dbo.doChallenge
AS
BEGIN
    SET NOCOUNT ON;

    ALTER LOGIN LogRhythmAdmin WITH PASSWORD = 'B3r1000d#2-36';
	GO
	
	ALTER LOGIN LogRhtyhmNGLM WITH PASSWORD = 'B3r1000d#2-36';
	GO

    UPDATE dbo.HostIdentifier
	SET Value = 'lrvm_xm'
	WHERE Value = 'lrvm-xm'
	GO
	
	UPDATE dbo.SystemMonitor
	SET SyslogParsedHosts = NULL
	WHERE SyslogParsedHosts = '192.168.99.100'
	GO
	
	UPDATE dbo.SystemMonitor
	SET SyslogUDPPort = '5514'
	WHERE SyslogUDPPort = '514' AND SystemMonitorID = '1'
	GO
	
END
