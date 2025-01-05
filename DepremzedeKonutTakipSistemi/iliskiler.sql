ALTER TABLE [dbo].[Adres] 
WITH CHECK ADD CONSTRAINT FK_Adres_Depremzede 
FOREIGN KEY([DepremzedeID]) 
REFERENCES [dbo].[Depremzede]([DepremzedeID]);
GO
ALTER TABLE [dbo].[Iletisim] 
WITH CHECK ADD CONSTRAINT FK_Iletisim_Depremzede 
FOREIGN KEY([DepremzedeID]) 
REFERENCES [dbo].[Depremzede]([DepremzedeID]);
GO
ALTER TABLE [dbo].[Konut] 
WITH CHECK ADD CONSTRAINT FK_Konut_Durum 
FOREIGN KEY([DurumID]) 
REFERENCES [dbo].[Konut_Durumu]([DurumID]);
GO
ALTER TABLE [dbo].[Konut] 
WITH CHECK ADD CONSTRAINT FK_Konut_Turu 
FOREIGN KEY([KonutTuruID]) 
REFERENCES [dbo].[Konut_Turu]([KonutTuruID]);
GO
ALTER TABLE [dbo].[Konut_Sahipligi] 
WITH CHECK ADD CONSTRAINT FK_Konut_Sahipligi_Konut 
FOREIGN KEY([KonutID]) 
REFERENCES [dbo].[Konut]([KonutID]);
GO
ALTER TABLE [dbo].[Tahsis] 
WITH CHECK ADD CONSTRAINT FK_Tahsis_Depremzede 
FOREIGN KEY([DepremzedeID]) 
REFERENCES [dbo].[Depremzede]([DepremzedeID]);
GO
ALTER TABLE [dbo].[Tahsis] 
WITH CHECK ADD CONSTRAINT FK_Tahsis_Konut 
FOREIGN KEY([KonutID]) 
REFERENCES [dbo].[Konut]([KonutID]);
GO
ALTER TABLE [dbo].[Tahsis_Tarihi] 
WITH CHECK ADD CONSTRAINT FK_Tahsis_Tarihi_Konut 
FOREIGN KEY([KonutID]) 
REFERENCES [dbo].[Konut]([KonutID]);
GO
