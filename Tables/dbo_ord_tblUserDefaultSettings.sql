CREATE TABLE [dbo].[ord_tblUserDefaultSettings] (
  [current_initials] [nvarchar](4) NOT NULL,
  [current_location] [nvarchar](2) NULL,
  [current_stock_location] [nvarchar](50) NULL,
  [current_contact_name] [nvarchar](200) NULL,
  [current_delivery] [nvarchar](50) NULL,
  [current_line_type] [nvarchar](1) NULL,
  [current_db_path] [nvarchar](200) NULL,
  [current_home_page] [int] NULL CONSTRAINT [DF_ord_tblUserDefaultSettings_current_home_page] DEFAULT (1),
  [current_PDFVersion] [int] NULL CONSTRAINT [DF_ord_tblUserDefaultSettings_current_PDFVersion] DEFAULT (0),
  [current_viewallsuppliers] [int] NULL CONSTRAINT [DF_ord_tblUserDefaultSettings_current_viewallsuppliers] DEFAULT (0),
  [current_EditStockLocation] [int] NULL,
  [current_ServiceCode] [nvarchar](4) NULL,
  CONSTRAINT [PK_ord_tblUserDefaultSettings] PRIMARY KEY CLUSTERED ([current_initials])
)
ON [PRIMARY]
GO