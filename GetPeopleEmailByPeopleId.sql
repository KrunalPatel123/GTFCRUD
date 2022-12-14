USE [GTF]
GO
/****** Object:  StoredProcedure [dbo].[GetPeopleEmailByPeopleId]    Script Date: 8/19/2022 5:25:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[GetPeopleEmailByPeopleId]
	-- Add the parameters for the stored procedure here
	@PeopleId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT peopleEmail.Email FROM PeopleEmail peopleEmail
	WHERE peopleEmail.People_Id = @PeopleId
END
