﻿USE [DevOpsDB]
GO 

ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO 

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO 

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO 

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO 

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO 

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO 

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO 

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO 

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO 

ALTER DATABASE [DevOpsDB] SET  READ_WRITE 
GO 


GO
/****** Object:  User [kh]    Script Date: 16/05/2018 17:18:17 ******/
If not Exists (select * from DevOpsDB.sys.database_principals
    where name = 'kh' )
Begin
CREATE USER [kh] FOR LOGIN [kh] WITH DEFAULT_SCHEMA=[dbo]
end 

GO
ALTER ROLE [db_owner] ADD MEMBER [kh]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16/05/2018 17:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] NOT NULL,
	[FirstName] [nchar](60) NULL,
	[Email] [nchar](100) NULL,
	[MobileNumber] [nchar](30) NULL,
	[FamilyName] [nchar](60) NULL,
 CONSTRAINT [PK__Users__3214EC07590F876E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
