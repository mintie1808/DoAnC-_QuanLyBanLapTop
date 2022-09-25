USE QuanLyBanLapTop
GO

CREATE PROC Proc_addReceipt
/* tạo biến trùng tên với biến trong code */
@id int,
@idSupplier NVARCHAR(50)

/* @dateReceipt DATE,
@sumPay FLOAT */
as
BEGIN 
/* câu lệnh SELECT */
INSERT INTO dbo.Tbl_PhieuNhapKho (id, idSupplier)
VALUES (@id, @idSupplier)
END 

CREATE PROC Proc_deleteReceipt
/* tạo biến trùng tên với biến trong code */
@idReceipt int
as
BEGIN 
DELETE FROM dbo.Tbl_PhieuNhapKho WHERE id = @id
END 


CREATE PROC Proc_updateReceipt
/* tạo biến trùng tên với biến trong code */
@idReceipt int,
@idSupplier NVARCHAR(50)
as
BEGIN 
UPDATE dbo.Tbl_PhieuNhapKho
SET id = @id, idSupplier = @idSupplier
WHERE id = @id
END
