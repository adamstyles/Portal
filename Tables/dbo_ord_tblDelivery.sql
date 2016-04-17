CREATE TABLE [dbo].[ord_tblDelivery] (
  [deliveryID] [int] IDENTITY,
  [deliveryMethod] [nvarchar](50) NULL,
  [via] [bit] NULL DEFAULT (0),
  [serviceAccount] [bit] NULL DEFAULT (0),
  CONSTRAINT [aaaaaord_tblDelivery_PK] PRIMARY KEY NONCLUSTERED ([deliveryID])
)
ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'Attributes', N'0', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery'
GO

EXEC sys.sp_addextendedproperty N'DateCreated', N'12/05/2003 11:50:10 AM', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery'
GO

EXEC sys.sp_addextendedproperty N'LastUpdated', N'13/06/2003 2:52:03 PM', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery'
GO

EXEC sys.sp_addextendedproperty N'Name', N'ord_tblDelivery', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery'
GO

EXEC sys.sp_addextendedproperty N'OrderByOn', N'False', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery'
GO

EXEC sys.sp_addextendedproperty N'RecordCount', N'7', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery'
GO

EXEC sys.sp_addextendedproperty N'Updatable', N'True', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery'
GO

EXEC sys.sp_addextendedproperty N'AllowZeroLength', N'False', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryID'
GO

EXEC sys.sp_addextendedproperty N'Attributes', N'17', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryID'
GO

EXEC sys.sp_addextendedproperty N'CollatingOrder', N'1033', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryID'
GO

EXEC sys.sp_addextendedproperty N'ColumnHidden', N'False', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryID'
GO

EXEC sys.sp_addextendedproperty N'ColumnOrder', N'0', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryID'
GO

EXEC sys.sp_addextendedproperty N'ColumnWidth', N'-1', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryID'
GO

EXEC sys.sp_addextendedproperty N'DataUpdatable', N'False', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryID'
GO

EXEC sys.sp_addextendedproperty N'Name', N'deliveryID', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryID'
GO

EXEC sys.sp_addextendedproperty N'OrdinalPosition', N'1', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryID'
GO

EXEC sys.sp_addextendedproperty N'Required', N'False', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryID'
GO

EXEC sys.sp_addextendedproperty N'Size', N'4', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryID'
GO

EXEC sys.sp_addextendedproperty N'SourceField', N'deliveryID', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryID'
GO

EXEC sys.sp_addextendedproperty N'SourceTable', N'ord_tblDelivery', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryID'
GO

EXEC sys.sp_addextendedproperty N'Type', N'4', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryID'
GO

EXEC sys.sp_addextendedproperty N'AllowZeroLength', N'False', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryMethod'
GO

EXEC sys.sp_addextendedproperty N'Attributes', N'2', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryMethod'
GO

EXEC sys.sp_addextendedproperty N'CollatingOrder', N'1033', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryMethod'
GO

EXEC sys.sp_addextendedproperty N'ColumnHidden', N'False', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryMethod'
GO

EXEC sys.sp_addextendedproperty N'ColumnOrder', N'0', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryMethod'
GO

EXEC sys.sp_addextendedproperty N'ColumnWidth', N'3150', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryMethod'
GO

EXEC sys.sp_addextendedproperty N'DataUpdatable', N'False', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryMethod'
GO

EXEC sys.sp_addextendedproperty N'MS_DisplayControl', N'109', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryMethod'
GO

EXEC sys.sp_addextendedproperty N'Name', N'deliveryMethod', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryMethod'
GO

EXEC sys.sp_addextendedproperty N'OrdinalPosition', N'2', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryMethod'
GO

EXEC sys.sp_addextendedproperty N'Required', N'False', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryMethod'
GO

EXEC sys.sp_addextendedproperty N'Size', N'50', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryMethod'
GO

EXEC sys.sp_addextendedproperty N'SourceField', N'deliveryMethod', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryMethod'
GO

EXEC sys.sp_addextendedproperty N'SourceTable', N'ord_tblDelivery', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryMethod'
GO

EXEC sys.sp_addextendedproperty N'Type', N'10', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'deliveryMethod'
GO

EXEC sys.sp_addextendedproperty N'AllowZeroLength', N'False', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'via'
GO

EXEC sys.sp_addextendedproperty N'Attributes', N'1', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'via'
GO

EXEC sys.sp_addextendedproperty N'CollatingOrder', N'1033', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'via'
GO

EXEC sys.sp_addextendedproperty N'ColumnHidden', N'False', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'via'
GO

EXEC sys.sp_addextendedproperty N'ColumnOrder', N'0', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'via'
GO

EXEC sys.sp_addextendedproperty N'ColumnWidth', N'-1', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'via'
GO

EXEC sys.sp_addextendedproperty N'DataUpdatable', N'False', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'via'
GO

EXEC sys.sp_addextendedproperty N'MS_DisplayControl', N'106', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'via'
GO

EXEC sys.sp_addextendedproperty N'MS_Format', N'Yes/No', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'via'
GO

EXEC sys.sp_addextendedproperty N'Name', N'via', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'via'
GO

EXEC sys.sp_addextendedproperty N'OrdinalPosition', N'3', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'via'
GO

EXEC sys.sp_addextendedproperty N'Required', N'False', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'via'
GO

EXEC sys.sp_addextendedproperty N'Size', N'1', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'via'
GO

EXEC sys.sp_addextendedproperty N'SourceField', N'via', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'via'
GO

EXEC sys.sp_addextendedproperty N'SourceTable', N'ord_tblDelivery', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'via'
GO

EXEC sys.sp_addextendedproperty N'Type', N'1', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'via'
GO

EXEC sys.sp_addextendedproperty N'AllowZeroLength', N'False', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'serviceAccount'
GO

EXEC sys.sp_addextendedproperty N'Attributes', N'1', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'serviceAccount'
GO

EXEC sys.sp_addextendedproperty N'CollatingOrder', N'1033', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'serviceAccount'
GO

EXEC sys.sp_addextendedproperty N'ColumnHidden', N'False', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'serviceAccount'
GO

EXEC sys.sp_addextendedproperty N'ColumnOrder', N'0', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'serviceAccount'
GO

EXEC sys.sp_addextendedproperty N'ColumnWidth', N'-1', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'serviceAccount'
GO

EXEC sys.sp_addextendedproperty N'DataUpdatable', N'False', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'serviceAccount'
GO

EXEC sys.sp_addextendedproperty N'MS_DisplayControl', N'106', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'serviceAccount'
GO

EXEC sys.sp_addextendedproperty N'MS_Format', N'Yes/No', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'serviceAccount'
GO

EXEC sys.sp_addextendedproperty N'Name', N'serviceAccount', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'serviceAccount'
GO

EXEC sys.sp_addextendedproperty N'OrdinalPosition', N'4', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'serviceAccount'
GO

EXEC sys.sp_addextendedproperty N'Required', N'False', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'serviceAccount'
GO

EXEC sys.sp_addextendedproperty N'Size', N'1', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'serviceAccount'
GO

EXEC sys.sp_addextendedproperty N'SourceField', N'serviceAccount', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'serviceAccount'
GO

EXEC sys.sp_addextendedproperty N'SourceTable', N'ord_tblDelivery', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'serviceAccount'
GO

EXEC sys.sp_addextendedproperty N'Type', N'1', 'SCHEMA', N'dbo', 'TABLE', N'ord_tblDelivery', 'COLUMN', N'serviceAccount'
GO