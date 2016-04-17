SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[qrylstDelivery] () 
RETURNS TABLE 
AS RETURN (SELECT TOP 100 PERCENT qrytblDelivery.deliveryID, qrytblDelivery.deliveryMethod AS Delivery, qrytblDelivery.via AS VIA, qrytblDelivery.serviceAccount AS Account
FROM qrytblDelivery
ORDER BY Delivery) 
GO