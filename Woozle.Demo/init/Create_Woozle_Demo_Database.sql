
------------------------------------------------------------

-- Creates the Woozle database including all core tables

------------------------------------------------------------

CREATE DATABASE Woozle
GO
USE [Woozle]
GO
/****** Object:  Schema [woo]    Script Date: 12/09/2013 19:23:59 ******/
CREATE SCHEMA [woo] AUTHORIZATION [dbo]
GO
/****** Object:  Table [woo].[Role]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [woo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[LogicalId] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [woo].[Permission]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [woo].[Permission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[LogicalId] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [woo].[ModuleGroup]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [woo].[ModuleGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [image] NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
 CONSTRAINT [PK_ModuleGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [woo].[City]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [woo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ZipCode] [varchar](15) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [woo].[Language]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [woo].[Language](
	[Id] [int] NOT NULL,
	[Code] [varchar](10) NOT NULL,
	[Name] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [woo].[MandatorGroup]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [woo].[MandatorGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [woo].[Translation]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [woo].[Translation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DefaultDescription] [varchar](max) NULL,
 CONSTRAINT [PK_Translation_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [woo].[StatusField]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [woo].[StatusField](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_StatusField] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [woo].[Version]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [woo].[Version](
	[Version] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Version] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [woo].[TranslationItem]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [woo].[TranslationItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TranslationId] [int] NOT NULL,
	[LanguageId] [int] NOT NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_TranslationItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [woo].[Country]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [woo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TranslationId] [int] NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [woo].[Status]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [woo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [varchar](50) NOT NULL,
	[StatusFieldId] [int] NOT NULL,
	[TranslationId] [int] NOT NULL,
 CONSTRAINT [PK_StatusFieldValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [woo].[Mandator]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [woo].[Mandator](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Street] [varchar](40) NULL,
	[Phone] [varchar](25) NULL,
	[CityId] [int] NULL,
	[ChangeCounter] [timestamp] NULL,
	[Email] [varchar](50) NULL,
	[Picture] [image] NULL,
	[MandatorGroupId] [int] NULL,
 CONSTRAINT [PK_Mandator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [woo].[Module]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [woo].[Module](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [image] NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[Version] [varchar](50) NULL,
	[ModuleGroupId] [int] NOT NULL,
	[LogicalId] [varchar](15) NULL,
	[Sequence] [smallint] NULL,
	[TranslationId] [int] NOT NULL,
 CONSTRAINT [PK_Module] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [woo].[Person]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [woo].[Person](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](40) NULL,
	[FirstName] [varchar](30) NULL,
	[EMail] [varchar](50) NULL,
	[Picture] [image] NULL,
	[MandatorId] [int] NOT NULL,
	[Street] [varchar](40) NULL,
	[CityId] [int] NULL,
	[Phone] [varchar](25) NULL,
	[Mobile] [varchar](25) NULL,
	[Birthdate] [date] NULL,
	[EnterpriseName] [varchar](40) NULL,
	[SalutationStatusId] [int] NULL,
	[ChangeCounter] [timestamp] NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [woo].[MandatorRole]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [woo].[MandatorRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MandId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [woo].[MandatorModules]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [woo].[MandatorModules](
	[ModuleId] [int] NOT NULL,
	[MandatorId] [int] NOT NULL,
 CONSTRAINT [PK_MandatorModules] PRIMARY KEY CLUSTERED 
(
	[ModuleId] ASC,
	[MandatorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [woo].[Location]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [woo].[Location](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MandatorId] [int] NOT NULL,
	[Name] [varchar](40) NOT NULL,
	[Street] [varchar](40) NULL,
	[CityId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [woo].[Settings]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [woo].[Settings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MandatorId] [int] NOT NULL,
	[EventManagementPlanningEMail] [varchar](50) NULL,
	[EventManagementPlanningMobile] [varchar](25) NULL,
	[ChangeCounter] [timestamp] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [woo].[Function]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [woo].[Function](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [image] NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[ModuleId] [int] NOT NULL,
	[LogicalId] [varchar](50) NULL,
	[TranslationId] [int] NOT NULL,
	[Sequence] [smallint] NOT NULL,
 CONSTRAINT [PK_Function] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [woo].[User]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [woo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[FlagActive] [bit] NOT NULL,
	[LastLogin] [datetime] NULL,
	[LastPasswordChange] [date] NULL,
	[LanguageId] [int] NOT NULL,
	[FlagActiveStatusId] [int] NOT NULL,
	[ChangeCounter] [timestamp] NOT NULL,
	[FirstName] [varchar](20) NULL,
	[LastName] [varchar](20) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [woo].[UserMandatorRole]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [woo].[UserMandatorRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[MandatorRoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [woo].[FunctionPermission]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [woo].[FunctionPermission](
	[Id] [int] NOT NULL,
	[FunctionId] [int] NOT NULL,
	[PermissionId] [int] NOT NULL,
 CONSTRAINT [PK_FunctionPermission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [woo].[MandatorRoleFunctionPermission]    Script Date: 12/09/2013 19:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [woo].[MandatorRoleFunctionPermission](
	[MandatorRoleId] [int] NOT NULL,
	[FunctionPermissionId] [int] NOT NULL,
 CONSTRAINT [PK_MandatorRoleFunctionPermission] PRIMARY KEY CLUSTERED 
(
	[MandatorRoleId] ASC,
	[FunctionPermissionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [woo].[ExternalSystemType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ExternalServiceType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [woo].[ExternalSystem]    Script Date: 12/20/2013 11:19:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [woo].[ExternalSystem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MandatorId] [int] NOT NULL,
	[ExternalSystemTypeId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ExternalService] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  ForeignKey [FK_ExternalService_ExternalServiceType]    Script Date: 12/20/2013 11:19:35 ******/
ALTER TABLE [woo].[ExternalSystem]  WITH CHECK ADD  CONSTRAINT [FK_ExternalService_ExternalServiceType] FOREIGN KEY([ExternalSystemTypeId])
REFERENCES [woo].[ExternalSystemType] ([Id])
GO
ALTER TABLE [woo].[ExternalSystem] CHECK CONSTRAINT [FK_ExternalService_ExternalServiceType]
GO
/****** Object:  ForeignKey [FK_ExternalService_Mandator]    Script Date: 12/20/2013 11:19:35 ******/
ALTER TABLE [woo].[ExternalSystem]  WITH CHECK ADD  CONSTRAINT [FK_ExternalService_Mandator] FOREIGN KEY([MandatorId])
REFERENCES [woo].[Mandator] ([Id])
GO
ALTER TABLE [woo].[ExternalSystem] CHECK CONSTRAINT [FK_ExternalService_Mandator]
GO
/****** Object:  ForeignKey [FK_Country_Translation]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Translation] FOREIGN KEY([TranslationId])
REFERENCES [woo].[Translation] ([Id])
GO
ALTER TABLE [woo].[Country] CHECK CONSTRAINT [FK_Country_Translation]
GO
/****** Object:  ForeignKey [FK_Function_Module]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[Function]  WITH CHECK ADD  CONSTRAINT [FK_Function_Module] FOREIGN KEY([ModuleId])
REFERENCES [woo].[Module] ([Id])
GO
ALTER TABLE [woo].[Function] CHECK CONSTRAINT [FK_Function_Module]
GO
/****** Object:  ForeignKey [FK_Function_Translation]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[Function]  WITH CHECK ADD  CONSTRAINT [FK_Function_Translation] FOREIGN KEY([TranslationId])
REFERENCES [woo].[Translation] ([Id])
GO
ALTER TABLE [woo].[Function] CHECK CONSTRAINT [FK_Function_Translation]
GO
/****** Object:  ForeignKey [FK__FunctionP__Funct__4183B671]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[FunctionPermission]  WITH CHECK ADD  CONSTRAINT [FK__FunctionP__Funct__4183B671] FOREIGN KEY([FunctionId])
REFERENCES [woo].[Function] ([Id])
GO
ALTER TABLE [woo].[FunctionPermission] CHECK CONSTRAINT [FK__FunctionP__Funct__4183B671]
GO
/****** Object:  ForeignKey [FK__FunctionP__Permi__4277DAAA]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[FunctionPermission]  WITH CHECK ADD  CONSTRAINT [FK__FunctionP__Permi__4277DAAA] FOREIGN KEY([PermissionId])
REFERENCES [woo].[Permission] ([Id])
GO
ALTER TABLE [woo].[FunctionPermission] CHECK CONSTRAINT [FK__FunctionP__Permi__4277DAAA]
GO
/****** Object:  ForeignKey [FK_Location_City]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_City] FOREIGN KEY([CityId])
REFERENCES [woo].[City] ([Id])
GO
ALTER TABLE [woo].[Location] CHECK CONSTRAINT [FK_Location_City]
GO
/****** Object:  ForeignKey [FK_Location_Mandator]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_Mandator] FOREIGN KEY([MandatorId])
REFERENCES [woo].[Mandator] ([Id])
GO
ALTER TABLE [woo].[Location] CHECK CONSTRAINT [FK_Location_Mandator]
GO
/****** Object:  ForeignKey [FK_Mandator_CityId]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[Mandator]  WITH CHECK ADD  CONSTRAINT [FK_Mandator_CityId] FOREIGN KEY([CityId])
REFERENCES [woo].[City] ([Id])
GO
ALTER TABLE [woo].[Mandator] CHECK CONSTRAINT [FK_Mandator_CityId]
GO
/****** Object:  ForeignKey [FK_Mandator_MandatorGroup]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[Mandator]  WITH CHECK ADD  CONSTRAINT [FK_Mandator_MandatorGroup] FOREIGN KEY([MandatorGroupId])
REFERENCES [woo].[MandatorGroup] ([Id])
GO
ALTER TABLE [woo].[Mandator] CHECK CONSTRAINT [FK_Mandator_MandatorGroup]
GO
/****** Object:  ForeignKey [FK_MandatorHasModules_Mandator]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[MandatorModules]  WITH CHECK ADD  CONSTRAINT [FK_MandatorHasModules_Mandator] FOREIGN KEY([MandatorId])
REFERENCES [woo].[Mandator] ([Id])
GO
ALTER TABLE [woo].[MandatorModules] CHECK CONSTRAINT [FK_MandatorHasModules_Mandator]
GO
/****** Object:  ForeignKey [FK_MandatorHasModules_Module]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[MandatorModules]  WITH CHECK ADD  CONSTRAINT [FK_MandatorHasModules_Module] FOREIGN KEY([ModuleId])
REFERENCES [woo].[Module] ([Id])
GO
ALTER TABLE [woo].[MandatorModules] CHECK CONSTRAINT [FK_MandatorHasModules_Module]
GO
/****** Object:  ForeignKey [FK__MandatorR__MandI__412EB0B6]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[MandatorRole]  WITH CHECK ADD FOREIGN KEY([MandId])
REFERENCES [woo].[Mandator] ([Id])
GO
/****** Object:  ForeignKey [FK__MandatorR__RoleI__4222D4EF]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[MandatorRole]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [woo].[Role] ([Id])
GO
/****** Object:  ForeignKey [FK_MandatorRoleFunctionPermission_FunctionPermission]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[MandatorRoleFunctionPermission]  WITH CHECK ADD  CONSTRAINT [FK_MandatorRoleFunctionPermission_FunctionPermission] FOREIGN KEY([FunctionPermissionId])
REFERENCES [woo].[FunctionPermission] ([Id])
GO
ALTER TABLE [woo].[MandatorRoleFunctionPermission] CHECK CONSTRAINT [FK_MandatorRoleFunctionPermission_FunctionPermission]
GO
/****** Object:  ForeignKey [FK_MandatorRoleFunctionPermission_MandatorRole]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[MandatorRoleFunctionPermission]  WITH CHECK ADD  CONSTRAINT [FK_MandatorRoleFunctionPermission_MandatorRole] FOREIGN KEY([MandatorRoleId])
REFERENCES [woo].[MandatorRole] ([Id])
GO
ALTER TABLE [woo].[MandatorRoleFunctionPermission] CHECK CONSTRAINT [FK_MandatorRoleFunctionPermission_MandatorRole]
GO
/****** Object:  ForeignKey [FK_Module_ModuleGroup]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[Module]  WITH CHECK ADD  CONSTRAINT [FK_Module_ModuleGroup] FOREIGN KEY([ModuleGroupId])
REFERENCES [woo].[ModuleGroup] ([Id])
GO
ALTER TABLE [woo].[Module] CHECK CONSTRAINT [FK_Module_ModuleGroup]
GO
/****** Object:  ForeignKey [FK_Module_Translation]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[Module]  WITH CHECK ADD  CONSTRAINT [FK_Module_Translation] FOREIGN KEY([TranslationId])
REFERENCES [woo].[Translation] ([Id])
GO
ALTER TABLE [woo].[Module] CHECK CONSTRAINT [FK_Module_Translation]
GO
/****** Object:  ForeignKey [FK_Person_City]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_City] FOREIGN KEY([CityId])
REFERENCES [woo].[City] ([Id])
GO
ALTER TABLE [woo].[Person] CHECK CONSTRAINT [FK_Person_City]
GO
/****** Object:  ForeignKey [FK_Person_Mandator]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Mandator] FOREIGN KEY([MandatorId])
REFERENCES [woo].[Mandator] ([Id])
GO
ALTER TABLE [woo].[Person] CHECK CONSTRAINT [FK_Person_Mandator]
GO
/****** Object:  ForeignKey [FK_Person_Status_Salutation]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Status_Salutation] FOREIGN KEY([SalutationStatusId])
REFERENCES [woo].[Status] ([Id])
GO
ALTER TABLE [woo].[Person] CHECK CONSTRAINT [FK_Person_Status_Salutation]
GO
/****** Object:  ForeignKey [FK_Settings_Mandator]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[Settings]  WITH CHECK ADD  CONSTRAINT [FK_Settings_Mandator] FOREIGN KEY([MandatorId])
REFERENCES [woo].[Mandator] ([Id])
GO
ALTER TABLE [woo].[Settings] CHECK CONSTRAINT [FK_Settings_Mandator]
GO
/****** Object:  ForeignKey [FK_Status_StatusField]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[Status]  WITH CHECK ADD  CONSTRAINT [FK_Status_StatusField] FOREIGN KEY([StatusFieldId])
REFERENCES [woo].[StatusField] ([Id])
GO
ALTER TABLE [woo].[Status] CHECK CONSTRAINT [FK_Status_StatusField]
GO
/****** Object:  ForeignKey [FK_Status_Translation]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[Status]  WITH CHECK ADD  CONSTRAINT [FK_Status_Translation] FOREIGN KEY([TranslationId])
REFERENCES [woo].[Translation] ([Id])
GO
ALTER TABLE [woo].[Status] CHECK CONSTRAINT [FK_Status_Translation]
GO
/****** Object:  ForeignKey [FK_TranslationItem_Language]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[TranslationItem]  WITH CHECK ADD  CONSTRAINT [FK_TranslationItem_Language] FOREIGN KEY([LanguageId])
REFERENCES [woo].[Language] ([Id])
GO
ALTER TABLE [woo].[TranslationItem] CHECK CONSTRAINT [FK_TranslationItem_Language]
GO
/****** Object:  ForeignKey [FK_TranslationItem_Translation]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[TranslationItem]  WITH CHECK ADD  CONSTRAINT [FK_TranslationItem_Translation] FOREIGN KEY([TranslationId])
REFERENCES [woo].[Translation] ([Id])
GO
ALTER TABLE [woo].[TranslationItem] CHECK CONSTRAINT [FK_TranslationItem_Translation]
GO
/****** Object:  ForeignKey [FK_User_Language]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Language] FOREIGN KEY([LanguageId])
REFERENCES [woo].[Language] ([Id])
GO
ALTER TABLE [woo].[User] CHECK CONSTRAINT [FK_User_Language]
GO
/****** Object:  ForeignKey [FK_User_Status]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Status] FOREIGN KEY([FlagActiveStatusId])
REFERENCES [woo].[Status] ([Id])
GO
ALTER TABLE [woo].[User] CHECK CONSTRAINT [FK_User_Status]
GO
/****** Object:  ForeignKey [FK_UserMandatorRole_MandatorRole]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[UserMandatorRole]  WITH CHECK ADD  CONSTRAINT [FK_UserMandatorRole_MandatorRole] FOREIGN KEY([MandatorRoleId])
REFERENCES [woo].[MandatorRole] ([Id])
GO
ALTER TABLE [woo].[UserMandatorRole] CHECK CONSTRAINT [FK_UserMandatorRole_MandatorRole]
GO
/****** Object:  ForeignKey [FK_UserMandatorRole_User]    Script Date: 12/09/2013 19:23:59 ******/
ALTER TABLE [woo].[UserMandatorRole]  WITH CHECK ADD  CONSTRAINT [FK_UserMandatorRole_User] FOREIGN KEY([UserId])
REFERENCES [woo].[User] ([Id])
GO
ALTER TABLE [woo].[UserMandatorRole] CHECK CONSTRAINT [FK_UserMandatorRole_User]
GO

------------------------------------------------------------

-- Initializationscript to insert all needed data for woozle tables

------------------------------------------------------------

-- Creating Language
INSERT INTO woo.[Language] VALUES(1,'en', 'English')

-- Creating Translation Record for Country Name with the fallback description
INSERT INTO woo.Translation VALUES('Schweiz')

-- Creating Translation Item for the Country Name for the Language 'en'
INSERT INTO woo.TranslationItem VALUES((SELECT TOP 1 Id FROM woo.Translation), (SELECT TOP 1 Id FROM woo.[Language]), 'Switzerland')

-- Creating Country with the translated name
INSERT INTO woo.Country VALUES((SELECT TOP 1 Id FROM woo.Translation))

-- Creating City
INSERT INTO woo.City VALUES('6003', 'Lucerne',(SELECT TOP 1 Id FROM woo.Country))

-- Creating Mandator Group
INSERT INTO woo.MandatorGroup VALUES('Mandator Group 1')

-- Creating Example Mandators
INSERT INTO woo.Mandator VALUES('Mandator 1', 'Test street 1', '044 445 45 45', (SELECT TOP 1 Id FROM woo.City), null, 'info@mandator1.com', null, (select TOP 1 Id from woo.MandatorGroup))
INSERT INTO woo.Mandator VALUES('Mandator 2', 'Test street 2', '044 445 45 46', (SELECT TOP 1 Id FROM woo.City), null, 'info@mandator2.com', null, (select TOP 1 Id from woo.MandatorGroup))


---------------------------------------------------------------------

-- Initializationscript for an example User with mandator assignment

---------------------------------------------------------------------

-- Translation Records for Active/Inactive User Status
INSERT INTO woo.Translation VALUES ('Aktiv')
INSERT INTO woo.Translation VALUES ('Inaktiv')

INSERT INTO woo.TranslationItem VALUES ((SELECT Id FROM woo.Translation WHERE DefaultDescription = 'Aktiv'), (SELECT TOP 1 Id FROM woo.Language), 'Active')
INSERT INTO woo.TranslationItem VALUES ((SELECT Id FROM woo.Translation WHERE DefaultDescription = 'Inaktiv'), (SELECT TOP 1 Id FROM woo.Language), 'Inactive')

-- Creating Statusfield
INSERT INTO woo.StatusField VALUES('Flagactive')

-- Creating Statusvalues
INSERT INTO woo.Status VALUES('Active', (SELECT Id from woo.StatusField where Name = 'Flagactive'), (SELECT Id FROM woo.Translation where DefaultDescription = 'Aktiv')) 
INSERT INTO woo.Status VALUES('Inactive', (SELECT Id from woo.StatusField where Name = 'Flagactive'), (SELECT Id FROM woo.Translation where DefaultDescription = 'Inaktiv')) 

-- Creating User
INSERT INTO woo.[User] VALUES('user1', 'pass1', 1, GETDATE(), GETDATE(), (SELECT TOP 1 Id FROM woo.Language), (SELECT TOP 1 Id FROM woo.Status where Value = 'Active'), null, 'Firstname', 'Lastname') 

-- Creating Role
INSERT INTO woo.[Role] VALUES('Administrator', 'Administrator Role', 'ADM')

-- Assign Role to the example mandator
INSERT INTO woo.MandatorRole VALUES((SELECT Id FROM woo.Mandator where Name='Mandator 1'), (SELECT TOP 1 Id FROM woo.[Role]))
INSERT INTO woo.MandatorRole VALUES((SELECT Id FROM woo.Mandator where Name='Mandator 2'), (SELECT TOP 1 Id FROM woo.[Role]))

-- Assign the User to the Mandator Role
INSERT INTO woo.UserMandatorRole VALUES((SELECT TOP 1 Id FROM woo.[User]), 
(SELECT MandatorRole.Id FROM woo.MandatorRole inner join woo.Mandator on MandatorRole.MandId=Mandator.Id where Mandator.Name='Mandator 1'))
INSERT INTO woo.UserMandatorRole VALUES((SELECT TOP 1 Id FROM woo.[User]), 
(SELECT MandatorRole.Id FROM woo.MandatorRole inner join woo.Mandator on MandatorRole.MandId=Mandator.Id where Mandator.Name='Mandator 2'))

---------------------------------------------------------------------

-- Initializationscript for an example module

---------------------------------------------------------------------

INSERT INTO [woo].[ModuleGroup]
           ([Icon]
           ,[Name]
           ,[Description])
     VALUES
           (null
           ,'Test-Group'
           ,'Contains all specific modules')
GO
INSERT INTO [woo].[Translation]
           ([DefaultDescription])
     VALUES
           ('Product Management')
GO
INSERT INTO [woo].[TranslationItem]
           ([TranslationId]
           ,[LanguageId]
           ,[Description])
     VALUES
           ((SELECT TOP 1 Id FROM woo.Translation where DefaultDescription = 'Product Management')
           ,(SELECT TOP 1 Id FROM woo.[Language])
           ,'Product Management')
GO
INSERT INTO [woo].[Module]
           ([Icon]
           ,[Name]
           ,[Description]
           ,[Version]
           ,[ModuleGroupId]
           ,[LogicalId]
           ,[Sequence]
           ,[TranslationId])
     VALUES
           (null,
           'Product Management'
           ,'Manages products'
           ,'0'
           ,1
           ,'TES'
           ,0
           ,(SELECT TOP 1 Id FROM woo.Translation where DefaultDescription = 'Product Management'))
GO

INSERT INTO [woo].[MandatorModules]
           ([ModuleId]
           ,[MandatorId])
		VALUES
           ((select TOP 1 Id from woo.Module)
           ,(select Id from woo.Mandator where Name='Mandator 1'))
           
INSERT INTO [woo].[MandatorModules]
           ([ModuleId]
           ,[MandatorId])
		VALUES
           ((select TOP 1 Id from woo.Module)
           ,(select Id from woo.Mandator where Name='Mandator 2'))         
           
	INSERT INTO woo.[Permission] (Name, [Description], LogicalId) values ('Login', 'Kann sich am System anmelden', 'LOGIN')
		INSERT INTO woo.[Permission] (Name, [Description], LogicalId) values ('Editieren', 'Kann einen bestimmten Datensatz editieren', 'EDIT')
		INSERT INTO woo.[Permission] (Name, [Description], LogicalId) values ('Löschen', 'Kann einen bestimmten Datensatz löschen', 'DELETE')
		INSERT INTO woo.[Permission] (Name, [Description], LogicalId) values ('Erstellen', 'Kann einen bestimmten Datensatz erstellen', 'CREATE')
		INSERT INTO woo.[Permission] (Name, [Description], LogicalId) values ('Funktion sichtbar', 'Sieht Funktion in der Navigation', 'FUNCTION')
		
		print('Insert Translations for function')
		Insert into woo.Translation (DefaultDescription) values ('Search products');

		print('Insert function')
		--Funktionen hinzufügen		
		insert into woo.[Function] 
			(Name, 
			 ModuleId, 
			 LogicalId, 
			 TranslationId,
			 Sequence) 
		values 
			('Search products', 
			(select Id from woo.[Module] where Name='Product Management'), 
			'SearchProductsV1', 
			(select Id from woo.[Translation] where DefaultDescription='Search products'), 0)

		print('Insert FunctionPermission entries')
		--Berechtigungen hinzufügen		
		INSERT INTO woo.[FunctionPermission] 
			(Id, 
			FunctionId, 
			PermissionId) 
			values (1,
			(Select Id from woo.[Function] where Name='Search products'), 
			(Select Id from woo.[Permission] where Name='Funktion sichtbar'))

		print('Insert MandatorRoleFunctionPermission entries')
		INSERT INTO woo.[MandatorRoleFunctionPermission] (MandatorRoleId, FunctionPermissionId) 
		values ((Select mr.Id from woo.[MandatorRole] mr inner join woo.[Mandator] m on mr.MandId = m.Id inner join woo.[Role] r 
		on mr.RoleId = r.Id where m.Name='Mandator 1' and r.Name = 'Administrator'), 
		(Select fp.Id from woo.[FunctionPermission] fp inner join woo.[Function] f on fp.FunctionId = f.Id inner join woo.[Permission] p 
		on fp.PermissionId = p.Id where f.Name='Search products' and p.Name = 'Funktion sichtbar'))

		INSERT INTO woo.[MandatorRoleFunctionPermission] (MandatorRoleId, FunctionPermissionId) 
		values ((Select mr.Id from woo.[MandatorRole] mr inner join woo.[Mandator] m on mr.MandId = m.Id inner join woo.[Role] r 
		on mr.RoleId = r.Id where m.Name='Mandator 2' and r.Name = 'Administrator'), 
		(Select fp.Id from woo.[FunctionPermission] fp inner join woo.[Function] f on fp.FunctionId = f.Id inner join woo.[Permission] p 
		on fp.PermissionId = p.Id where f.Name='Search products' and p.Name = 'Funktion sichtbar'))
		GO
		
------------------------------------------------------------

-- Initializationscript to add a schema, sample table and data for the demo application

------------------------------------------------------------

CREATE SCHEMA [demo] AUTHORIZATION [dbo]
GO

CREATE TABLE [demo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MandatorId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Product_Mandator] ******/
ALTER TABLE [demo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Mandator] FOREIGN KEY([MandatorId])
REFERENCES [woo].[Mandator] ([Id])
GO
ALTER TABLE [demo].[Product] CHECK CONSTRAINT [FK_Product_Mandator]
GO

INSERT INTO [demo].[Product] (MandatorId, Name) VALUES((select Id from woo.Mandator where Name='Mandator 1'), 'Apple')
INSERT INTO [demo].[Product] (MandatorId, Name) VALUES((select Id from woo.Mandator where Name='Mandator 1'), 'Banana')
INSERT INTO [demo].[Product] (MandatorId, Name) VALUES((select Id from woo.Mandator where Name='Mandator 1'), 'Pineapple')
INSERT INTO [demo].[Product] (MandatorId, Name) VALUES((select Id from woo.Mandator where Name='Mandator 1'), 'Coconut')
INSERT INTO [demo].[Product] (MandatorId, Name) VALUES((select Id from woo.Mandator where Name='Mandator 1'), 'Orange')
INSERT INTO [demo].[Product] (MandatorId, Name) VALUES((select Id from woo.Mandator where Name='Mandator 1'), 'Kiwi')
INSERT INTO [demo].[Product] (MandatorId, Name) VALUES((select Id from woo.Mandator where Name='Mandator 1'), 'Pear')
INSERT INTO [demo].[Product] (MandatorId, Name) VALUES((select Id from woo.Mandator where Name='Mandator 1'), 'Lemon')
INSERT INTO [demo].[Product] (MandatorId, Name) VALUES((select Id from woo.Mandator where Name='Mandator 1'), 'Peach')
INSERT INTO [demo].[Product] (MandatorId, Name) VALUES((select Id from woo.Mandator where Name='Mandator 1'), 'Apricot')


INSERT INTO [demo].[Product] (MandatorId, Name) VALUES((select Id from woo.Mandator where Name='Mandator 2'), 'Chocholate')
INSERT INTO [demo].[Product] (MandatorId, Name) VALUES((select Id from woo.Mandator where Name='Mandator 2'), 'French fries')
INSERT INTO [demo].[Product] (MandatorId, Name) VALUES((select Id from woo.Mandator where Name='Mandator 2'), 'Steak')
INSERT INTO [demo].[Product] (MandatorId, Name) VALUES((select Id from woo.Mandator where Name='Mandator 2'), 'Brownies')
INSERT INTO [demo].[Product] (MandatorId, Name) VALUES((select Id from woo.Mandator where Name='Mandator 2'), 'Toblerone')
