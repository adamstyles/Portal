SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[fill_std_part_table]
AS
INSERT INTO temp_add_std_parts (brand, cat_no, description, secondary_part_code, comment, price, disc, date_last_updated) 
SELECT qrytblPart.Brand, qrytblPart.cat_no, qrytblPart.Description, qrytblPart.secondary_part_code, qrytblPart.default_comment, qrytblPart.default_price, qrytblPart.default_discount, qrytblPart.date_last_updated
FROM qrytblPart 
GO