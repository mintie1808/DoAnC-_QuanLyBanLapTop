USE QuanLyBanLapTop
GO

CREATE PROC Proc_addReceipt
/* tạo biến trùng tên với biến trong code */
@idReceipt int,
@idSupplier NVARCHAR(50),
@dateReceipt DATE,
@sumPay FLOAT
as
BEGIN 
/* câu lệnh SELECT */
INSERT INTO dbo.Tbl_PhieuNhapKho (idReceipt, idSupplier, dateReceipt, sumPay)
VALUES (@idReceipt, @idSupplier, @dateReceipt, @sumPay)
END 

CREATE PROC Proc_deleteReceipt
/* tạo biến trùng tên với biến trong code */
@idReceipt int
as
BEGIN 
DELETE FROM dbo.Tbl_PhieuNhapKho WHERE idReceipt = @idReceipt
END 


CREATE PROC Proc_updateReceipt
/* tạo biến trùng tên với biến trong code */
@idReceipt int,
@idSupplier NVARCHAR(50),
@dateReceipt DATE,
@sumPay FLOAT
as
BEGIN 
UPDATE dbo.Tbl_PhieuNhapKho
SET idReceipt = @idReceipt, idSupplier = @idSupplier, dateReceipt = @dateReceipt, sumPay = @sumPay
WHERE idReceipt = @idReceipt
END