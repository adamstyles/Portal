CREATE TABLE [dbo].[jcm_Employees] (
  [Employee ID] [int] IDENTITY,
  [Employee Name] [nvarchar](30) NOT NULL,
  [Last Name] [nvarchar](30) NULL,
  [First Names] [nvarchar](30) NULL,
  [Emp Ref  Num] [nvarchar](5) NULL,
  [Normal Day Length] [real] NULL CONSTRAINT [DF_jcm_Employees_Normal Day Length] DEFAULT (7.6),
  [Casual?] [bit] NOT NULL CONSTRAINT [DF_jcm_Employees_Casual?] DEFAULT (0),
  [Payroll Rep?] [bit] NOT NULL CONSTRAINT [DF_jcm_Employees_Payroll Rep?] DEFAULT (0),
  [Hour Factor] [real] NULL CONSTRAINT [DF_jcm_Employees_Hour Factor] DEFAULT (1),
  [NT Prod] [bit] NOT NULL CONSTRAINT [DF_jcm_Employees_NT Prod] DEFAULT (0),
  [NT Eng] [bit] NOT NULL CONSTRAINT [DF_jcm_Employees_NT Eng] DEFAULT (0),
  [QLD Prod] [bit] NOT NULL CONSTRAINT [DF_jcm_Employees_QLD Prod] DEFAULT (0),
  [WA Prod] [bit] NOT NULL CONSTRAINT [DF_jcm_Employees_WA Prod] DEFAULT (0),
  [deleted] [bit] NOT NULL CONSTRAINT [DF_jcm_Employees_deleted] DEFAULT (0),
  [Occupation Category] [nvarchar](20) NULL,
  [Location] [nvarchar](2) NULL,
  CONSTRAINT [PK_jcm_Employees] PRIMARY KEY CLUSTERED ([Employee ID])
)
ON [PRIMARY]
GO