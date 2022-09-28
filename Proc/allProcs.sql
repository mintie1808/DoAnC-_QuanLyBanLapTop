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

go
CREATE PROC Proc_deleteDetailReceipt
/* tạo biến trùng tên với biến trong code */
@idReceipt INT,
@idCoupon INT
as
BEGIN 
DELETE FROM dbo.Tbl_ChiTietNhapKho WHERE idReceipt = @idReceipt AND idCoupon = @idCoupon
END 

go
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
WHERE idReceipt = @idReceipt AND idCoupon = @idCoupon
END

go
create proc		[dbo].[Proc_addDetailCoupon]
@quantityImport int,
@unitPrice float,
@intoMoney float,
@idCoupon int,
@idProduct nvarchar(50)
as
begin
insert into Tbl_ChiTietPhieuYcNhapHang(quantityImport,unitPrice, intoMoney, idCoupon , idProduct)
values (@quantityImport,@unitPrice, @intoMoney, @idCoupon , @idProduct)
end

go
create proc [dbo].[Proc_deleteDetailCoupon]

@idProduct nvarchar(50),
@idCoupon int
as
begin

delete from Tbl_ChiTietPhieuYcNhapHang
WHERE idCoupon = @idCoupon and idProduct = @idProduct
end

go
create proc [dbo].[Proc_updateDetailCoupon]

@quantityImport int,
@unitPrice float,
@intoMoney float,
@idCoupon int,
@idProduct nvarchar(50)
as
begin

UPDATE Tbl_ChiTietPhieuYcNhapHang
SET quantityImport = @quantityImport,  unitPrice = @unitPrice, intoMoney = @intoMoney
WHERE idCoupon = @idCoupon and idProduct = @idProduct
end
go

use QuanLyBanLapTop
go
 
create proc Proc_addTypeProduct
@id int,
@name nvarchar(50)
as 
begin
	insert into [dbo].[Tbl_DanhMucLapTop] (idTypeProduct, nameTypeProduct)
	values (@id, @name)
end
go

create proc [dbo].[Proc_updateTypeProduct]
@id int,
@name nvarchar(50)
as
begin
	UPDATE Tbl_DanhMucLapTop
	SET idTypeProduct=@id, nameTypeProduct=@name
	WHERE idTypeProduct = @id
end
go
create proc [dbo].[Proc_deleteTypeProduct]
@id int
as
begin
	delete from Tbl_DanhMucLapTop
WHERE idTypeProduct = @id
end
go

create proc [dbo].[Proc_addManufacture]
@id int,
@name nvarchar(50)
as
begin
insert into Tbl_HangSP(idManufactutre, nameManufactutre)
values (@id, @name)
end

go
create proc [dbo].[Proc_deleteManufacture]
@id int
as
begin
delete from Tbl_HangSP
WHERE idManufactutre = @id
end

go
create proc [dbo].[Proc_updateManufacture]
@id int,
@name nvarchar(50)
as
begin
UPDATE Tbl_HangSP
SET idManufactutre=@id, nameManufactutre = @name
WHERE idManufactutre = @id
end
go
USE QuanLyBanLapTop
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

go
CREATE PROC Proc_deleteSupplier
/* tạo biến trùng tên với biến trong code */
@idSupplier NVARCHAR(50)
as
BEGIN 
DELETE FROM dbo.Tbl_NhaCungCap WHERE idSupplier = @idSupplier
END 

go
CREATE PROC Proc_updateSupplier
/* tạo biến trùng tên với biến trong code */
@idSupplier NVARCHAR(50),
@nameSupplier NVARCHAR(50)
as
BEGIN 
UPDATE dbo.Tbl_NhaCungCap
SET nameSupplier = @nameSupplier
WHERE idSupplier = @idSupplier
END
go
create proc [dbo].[Proc_addEmployee]

@idEmployee nvarchar(50),
@nameEmployee nvarchar(50),
@serviceEmployee nvarchar(50),
@phoneNumber nvarchar(50),
@salaryEmployee float,
@totalSales float,
@quantityBillPay int,
@idUser nvarchar(50),
@birthday date
as
begin
insert into Tbl_NhanVien(idEmployee, nameEmployee, serviceEmployee, phoneNumber, salaryEmployee, totalSales, quantityBillPay, idUser, birthday)
values (@idEmployee, @nameEmployee, @serviceEmployee, @phoneNumber, @salaryEmployee, @totalSales, @quantityBillPay, @idUser, @birthday)
end

go
create proc [dbo].[Proc_deleteEmployee]
@idEmployee nvarchar(50)
as
begin
delete from Tbl_NhanVien
WHERE idEmployee = @idEmployee
end

go
create proc [dbo].[Proc_updateEmployee]
@idEmployee nvarchar(50),
@nameEmployee nvarchar(50),
@serviceEmployee nvarchar(50),
@phoneNumber nvarchar(50),
@salaryEmployee float,
@totalSales float,
@quantityBillPay int,
@idUser nvarchar(50),
@birthday date
as
begin
UPDATE Tbl_NhanVien
SET nameEmployee = @nameEmployee, serviceEmployee = @serviceEmployee, phoneNumber = @phoneNumber, salaryEmployee = @salaryEmployee, totalSales = @totalSales, quantityBillPay = @quantityBillPay, idUser = @idUser, birthday = @birthday
WHERE idEmployee = @idEmployee
end
go
USE QuanLyBanLapTop
GO

CREATE PROC Proc_addReceipt
/* tạo biến trùng tên với biến trong code */
@idReceipt int,
@idSupplier NVARCHAR(50),
@dateReceipt date,
@sumPay float

/* @dateReceipt DATE,
@sumPay FLOAT */
as
BEGIN 
/* câu lệnh SELECT */
INSERT INTO dbo.Tbl_PhieuNhapKho (idReceipt, idSupplier, dateReceipt,sumPay)
VALUES (@idReceipt, @idSupplier, @dateReceipt, @sumPay)
END 

go
CREATE PROC Proc_deleteReceipt
/* tạo biến trùng tên với biến trong code */
@idReceipt int
as
BEGIN 
DELETE FROM dbo.Tbl_PhieuNhapKho WHERE idReceipt = @idReceipt
END 

go
CREATE PROC Proc_updateReceipt
/* tạo biến trùng tên với biến trong code */
@idReceipt int,
@idSupplier NVARCHAR(50),
@dateReceipt date,
@sumPay float
as
BEGIN 
UPDATE dbo.Tbl_PhieuNhapKho
SET idSupplier = @idSupplier , dateReceipt = @dateReceipt, sumPay = @sumPay
WHERE idReceipt = @idReceipt
END
go
create proc		[dbo].[Proc_addCoupon]
@idCoupon int,
@dateAdded date,
@intoMoney float,
@idSupplier nvarchar(50)
as
begin
insert into Tbl_PhieuYeuCauNhapHang(idCoupon, dateAdded, intoMoney,idSupplier)
values (@idCoupon, @dateAdded, @intoMoney, @idSupplier)
end

go
create proc [dbo].[Proc_deleteCoupon]

@idCoupon int
as
begin

delete from Tbl_PhieuYeuCauNhapHang
WHERE idCoupon = @idCoupon
end

go
create proc [dbo].[Proc_updateCoupon]
@idCoupon int,
@dateAdded date,
@intoMoney float,
@idSupplier nvarchar(50)
as
begin

UPDATE Tbl_PhieuYeuCauNhapHang
SET dateAdded = @dateAdded,  intoMoney = @intoMoney, idSupplier = @idSupplier
WHERE idCoupon = @idCoupon
end
go
create proc [dbo].[Proc_addQuyen]
@id int,
@name nvarchar(50)
as
begin
insert into Tbl_Quyen(idQuyen, nameAuth)
values (@id, @name)
end

go
create proc [dbo].[Proc_deleteQuyen]
@id int
as
begin

delete from Tbl_Quyen
WHERE idQuyen = @id
end

go
create proc [dbo].[Proc_updateQuyen]
@id int,
@name nvarchar(50)
as
begin

UPDATE Tbl_Quyen
SET nameAuth = @name
WHERE idQuyen = @id
end
go

create proc [dbo].[Proc_addProduct]
@idProduct nvarchar(50),
@nameProduct nvarchar(max),
@unitPrice float,
@quantityProduct int,
@statusProduct nvarchar(max),
@idTypeProduct int,
@idManufactutre int,
@image nvarchar(50)
as
begin
insert into Tbl_SanPham(idProduct, nameProduct,unitPrice,quantityProduct,statusProduct,idTypeProduct,idManufactutre, image)
values (@idProduct, @nameProduct,@unitPrice,@quantityProduct,@statusProduct,@idTypeProduct,@idManufactutre, @image)
end
go

create proc [dbo].[Proc_deleteProduct]
@idProduct nvarchar(50)
as
begin

delete from Tbl_SanPham
WHERE idProduct = @idProduct
end
go

create proc [dbo].[Proc_updateProduct]
@idProduct nvarchar(50),
@nameProduct nvarchar(max),
@unitPrice float,
@quantityProduct int,
@statusProduct nvarchar(max),
@idTypeProduct int,
@idManufactutre int,
@image nvarchar(50)
as
begin

UPDATE Tbl_SanPham
SET nameProduct = @nameProduct, unitPrice = @unitPrice, quantityProduct = @quantityProduct, statusProduct = @statusProduct, idTypeProduct = @idTypeProduct, idManufactutre = @idManufactutre, image = @image
WHERE idProduct = @idProduct
end
go

create proc [dbo].[proc_login]
@user nvarchar(50),
@pass nvarchar(50)
as
begin
select * from Tbl_TaiKhoan where UserName = @user and Password = @pass
end
go