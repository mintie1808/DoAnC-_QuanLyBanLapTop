﻿USE QuanLyBanLapTop
GO

CREATE PROC Proc_addSupplier
/* tạo biến trùng tên với biến trong code */
@idSupplier NVARCHAR(50),
@nameSupplier NVARCHAR(50)
as
BEGIN 
/* câu lệnh SELECT */
INSERT INTO dbo.Tbl_NhaCungCap (idSupplier,nameSupplier)
VALUES (@idSupplier, @nameSupplier)
END 

CREATE PROC Proc_deleteSupplier
/* tạo biến trùng tên với biến trong code */
@idSupplier NVARCHAR(50)
as
BEGIN 
DELETE FROM dbo.Tbl_NhaCungCap WHERE idSupplier = @idSupplier
END 


CREATE PROC Proc_updateSupplier
/* tạo biến trùng tên với biến trong code */
@idSupplier NVARCHAR(50),
@nameSupplier NVARCHAR(50)
as
BEGIN 
UPDATE dbo.Tbl_NhaCungCap
SET idSupplier = @idSupplier, nameSupplier = @nameSupplier
WHERE idSupplier = @idSupplier
END