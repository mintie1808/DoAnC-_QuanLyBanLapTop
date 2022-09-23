USE QuanLyBanLapTop
GO

CREATE PROC Proc_addDetailReceipt
/* tạo biến trùng tên với biến trong code */
@idReceipt int,
@idCoupon int,
@quantityRequest int,
@quantityActual INT,
@unitPrice FLOAT,
@intoMoney FLOAT
as
BEGIN 
/* câu lệnh SELECT */
INSERT INTO dbo.Tbl_ChiTietNhapKho
VALUES (@idReceipt, @idCoupon, @quantityRequest, @quantityActual, @unitPrice, @intoMoney)
END 

CREATE PROC Proc_deleteDetailReceipt
/* tạo biến trùng tên với biến trong code */
@idReceipt int
as
BEGIN 
DELETE FROM dbo.Tbl_ChiTietNhapKho WHERE idReceipt = @idReceipt
END 

CREATE PROC Proc_updateDetailReceipt
/* tạo biến trùng tên với biến trong code */
@idReceipt int,
@idCoupon int,
@quantityRequest int,
@quantityActual INT,
@unitPrice FLOAT,
@intoMoney FLOAT
as
BEGIN 
UPDATE dbo.Tbl_ChiTietNhapKho
SET idReceipt = @idReceipt, idCoupon = @idCoupon, quantityRequest = @quantityRequest, quantityActual = @quantityActual, unitPrice = @unitPrice, intoMoney = @intoMoney
WHERE idReceipt = @idReceipt
END