CREATE TABLE [fc].[tblCustomerDetails] (
  [lngCustomerID] [int] IDENTITY,
  [lngCompanyID] [int] NULL,
  [strCustSurname] [nvarchar](50) NULL,
  [strCustOtherName] [nvarchar](50) NULL,
  [ynCompanyDiscOnly] [bit] NOT NULL CONSTRAINT [DF_tblCustomerDetails_ynCompanyDiscOnly] DEFAULT (-1),
  [strMailingAddress] [nvarchar](150) NULL,
  [strPhone] [nvarchar](15) NULL,
  [strFax] [nvarchar](15) NULL,
  [strEmail] [nvarchar](50) NULL,
  [strMob] [nvarchar](15) NULL,
  [ynDeleted] [bit] NOT NULL CONSTRAINT [DF_tblCustomerDetails_ynDeleted] DEFAULT (0),
  [ABN] [nvarchar](25) NULL,
  CONSTRAINT [PK_lngCustomerID] PRIMARY KEY CLUSTERED ([lngCustomerID])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_lngCompanyID]
  ON [fc].[tblCustomerDetails] ([lngCompanyID])
  ON [PRIMARY]
GO