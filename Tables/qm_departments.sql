CREATE TABLE [qm].[departments] (
  [dept_code] [nvarchar](2) NOT NULL,
  [dept_name] [nvarchar](15) NULL,
  [stock_location] [numeric] NULL,
  [defaultPDFpath] [nvarchar](255) NULL,
  [ProjectPath] [nvarchar](255) NULL,
  [SJProjectPath] [nvarchar](255) NULL,
  CONSTRAINT [PK_dept_code] PRIMARY KEY CLUSTERED ([dept_code])
)
ON [PRIMARY]
GO