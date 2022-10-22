

/****** Object:  Table [dbo].[tbl_Order]    Script Date: 11/19/2017 10:44:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_AdminLogin](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tbl_AdminLogin]    Script Date: 10/06/2018  10:45:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].[tbl_StudentLogin](
	[id] int IDENTITY(1,1),
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Year] [nvarchar] (10) NOT NULL,
	[Branch] [nvarchar] (10) NOT NULL,
	[Email] [nvarchar] (50) NOT NULL,
	[Phone] [nvarchar] (10) NOT NULL
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tbl_StudentLogin]    Script Date: 10/06/2018 10:45:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].[tbl_FacultyLogin](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Designation] [nvarchar] (50) NOT NULL,
	[Branch] [nvarchar] (10) NOT NULL,
	[Email] [nvarchar] (50) NOT NULL,
	[Phone] [nvarchar] (10) NOT NULL
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tbl_FacultyLogin]    Script Date: 10/06/2018  10:46:11 PM ******/

CREATE TABLE [dbo].[tbl_LecturerQuality](
	[Excellent] [bit] NOT NULL,
	[VeryGood] [bit] NOT NULL,
	[Good] [bit] NOT NULL,
	[Bad] [bit] NOT NULL,
	[VeryPoor] [bit] NOT NULL,
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tbl_lecturerQuality]    Script Date: 10/06/2018  10:46:11 PM ******/

CREATE TABLE [dbo].[tbl_ConstHour](
	[Excellent] [bit] NOT NULL,
	[VeryGood] [bit] NOT NULL,
	[Good] [bit] NOT NULL,
	[Bad] [bit] NOT NULL,
	[VeryPoor] [bit] NOT NULL,
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tbl_ConstHour]    Script Date: 10/06/2018  10:46:11 PM ******/

CREATE TABLE [dbo].[tbl_Qots](
	[Excellent] [bit] NOT NULL,
	[VeryGood] [bit] NOT NULL,
	[Good] [bit] NOT NULL,
	[Bad] [bit] NOT NULL,
	[VeryPoor] [bit] NOT NULL,
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tbl_Qots]    Script Date: 10/06/2018  10:46:11 PM ******/

CREATE TABLE [dbo].[tbl_Pae](
	[Excellent] [bit] NOT NULL,
	[VeryGood] [bit] NOT NULL,
	[Good] [bit] NOT NULL,
	[Bad] [bit] NOT NULL,
	[VeryPoor] [bit] NOT NULL,
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tbl_Pae]    Script Date: 10/06/2018  10:46:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





