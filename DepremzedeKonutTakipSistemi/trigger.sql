CREATE TRIGGER TRG_Tahsis_Insert
ON [dbo].[Tahsis]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

   
    DECLARE @KonutID INT;
    SELECT @KonutID = KonutID FROM inserted;

    
    UPDATE Konut
    SET DurumID = (SELECT DurumID FROM Konut_Durumu WHERE Durum = 'Tahsis Edilmistir.')
    WHERE KonutID = @KonutID;

    PRINT 'Konut durumu güncellendi.';
END;
GO