USE [GTF]
GO

/****** Object:  Table [dbo].[StudentsEmail]    Script Date: 8/19/2022 5:21:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[StudentsEmail](
	[Id] [int] NOT NULL,
	[Email] [varchar](50) NULL,
	[Student_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[StudentsEmail]  WITH CHECK ADD  CONSTRAINT [FK_PeopleEmail] FOREIGN KEY([Student_Id])
REFERENCES [dbo].[Students] ([Id])
GO

ALTER TABLE [dbo].[StudentsEmail] CHECK CONSTRAINT [FK_PeopleEmail]
GO


