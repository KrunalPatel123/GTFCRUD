USE [GTF]
GO

/****** Object:  Table [dbo].[StudentPhoneNumber]    Script Date: 8/19/2022 5:22:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[StudentPhoneNumber](
	[Id] [int] NOT NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Student_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[StudentPhoneNumber]  WITH CHECK ADD  CONSTRAINT [FK_PeoplePhoneNumber] FOREIGN KEY([Student_Id])
REFERENCES [dbo].[Students] ([Id])
GO

ALTER TABLE [dbo].[StudentPhoneNumber] CHECK CONSTRAINT [FK_PeoplePhoneNumber]
GO


