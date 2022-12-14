USE [GTF]
GO
/****** Object:  StoredProcedure [dbo].[GetPeoplePhoneByPeopleId]    Script Date: 8/19/2022 5:26:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[GetPeoplePhoneByPeopleId]
	-- Add the parameters for the stored procedure here
	@PeopleId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT peoplePhone.PhoneNumber FROM dbo.PeoplePhoneNumber peoplePhone
	WHERE peoplePhone.People_Id = @PeopleId
END
