CREATE TABLE [dbo].[jcm_AccountsData] (
  [Name] [nvarchar](20) NOT NULL,
  [Admin] [bit] NOT NULL CONSTRAINT [DF_jcm_AccountsData_Admin] DEFAULT (0),
  [User] [bit] NOT NULL CONSTRAINT [DF_jcm_AccountsData_User] DEFAULT (0),
  [Master] [bit] NOT NULL CONSTRAINT [DF_jcm_AccountsData_Master] DEFAULT (0),
  [debtorVerify] [bit] NOT NULL CONSTRAINT [DF_jcm_AccountsData_debtorVerify] DEFAULT (0),
  [jobVerify] [bit] NOT NULL CONSTRAINT [DF_jcm_AccountsData_jobVerify] DEFAULT (0),
  [tonyVerify] [bit] NOT NULL CONSTRAINT [DF_jcm_AccountsData_tonyVerify] DEFAULT (0),
  [RestrictedDefault] [bit] NOT NULL CONSTRAINT [DF_jcm_AccountsData_CIN_Only] DEFAULT (0),
  [Limited] [bit] NOT NULL CONSTRAINT [DF_jcm_AccountsData_Limited] DEFAULT (0),
  CONSTRAINT [PK_jcm_AccountsData] PRIMARY KEY CLUSTERED ([Name])
)
ON [PRIMARY]
GO