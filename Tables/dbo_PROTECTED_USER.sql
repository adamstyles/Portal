CREATE TABLE [dbo].[PROTECTED_USER] (
  [login_name] [nvarchar](50) NOT NULL,
  [protected] [bit] NOT NULL CONSTRAINT [DF_PROTECTED_USER_protected] DEFAULT (0),
  [edit_parts] [bit] NOT NULL CONSTRAINT [DF_PROTECTED_USER_edit_parts] DEFAULT (0),
  [delete_qm] [bit] NOT NULL CONSTRAINT [DF_PROTECTED_USER_delete_qm] DEFAULT (0),
  [admin] [bit] NOT NULL CONSTRAINT [DF_PROTECTED_USER_admin] DEFAULT (0),
  CONSTRAINT [PK_PROTECTED_USER] PRIMARY KEY CLUSTERED ([login_name])
)
ON [PRIMARY]
GO