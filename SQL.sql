
/****** Object:  Database [QuanLyBanLapTop]    Script Date: 9/16/2022 11:13:20 PM ******/
CREATE DATABASE [QuanLyBanLapTop]
GO
ALTER DATABASE [QuanLyBanLapTop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanLapTop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanLapTop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanLapTop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanLapTop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyBanLapTop] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanLapTop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanLapTop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanLapTop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanLapTop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanLapTop] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [QuanLyBanLapTop] SET QUERY_STORE = OFF
GO
USE [QuanLyBanLapTop]
GO


/****** Object:  Table [dbo].[Tbl_ChiTietHoaDon]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ChiTietHoaDon](
	[quantityProduct] [int] NULL,
	[unitPrice] [float] NULL,
	[intoMoney] [float] NULL,
	[moneyDown] [float] NULL,
	[idProduct] [nvarchar](50) NOT NULL,
	[idBill] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_ChiTietKhuyenMai]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ChiTietKhuyenMai](
	[discount] [float] NULL,
	[status] [nvarchar](50) NULL,
	[idProduct] [nvarchar](50) NOT NULL,
	[idPromotion] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_ChiTietNhapKho]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ChiTietNhapKho](
	[idReceipt] [int] NOT NULL,
	[idCoupon] [int] NOT NULL,
	[quantityRequest] [int] NULL,
	[quantityActual] [int] NULL,
	[unitPrice] [float] NULL,
	[intoMoney] [float] NULL,
	
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_ChiTietPhieuYcNhapHang]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ChiTietPhieuYcNhapHang](
	[idProduct] [nvarchar](50) NOT NULL,
	[idCoupon] [int] NOT NULL,
	[quantityImport] [int] NULL,
	[unitPrice] [float] NULL,
	[intoMoney] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_DanhMucLapTop]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_DanhMucLapTop](
	[idTypeProduct] [int] NOT NULL,
	[nameTypeProduct] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[idTypeProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_HangSP]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_HangSP](
	[idManufactutre] [int] NOT NULL,
	[nameManufactutre] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tbl_HangSP] PRIMARY KEY CLUSTERED 
(
	[idManufactutre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_HoaDon]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_HoaDon](
	[idBill] [int] NOT NULL,
	[dateBill] [date] NULL,
	[sumPay] [float] NULL,
	[typePay] [nvarchar](50) NULL,
	[discountMoney] [float] NULL,
	[pay] [float] NULL,
	[status] [nvarchar](max) NULL,
	[idEmployee] [nvarchar](50) NOT NULL,
	[idCustomer] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Bill] PRIMARY KEY CLUSTERED 
(
	[idBill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_KhachHang]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_KhachHang](
	[idCustomer] [nvarchar](50) NOT NULL,
	[nameCustomer] [nvarchar](50) NULL,
	[address] [nvarchar](max) NULL,
	[phoneNumber] [nvarchar](10) NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_KhachHang] PRIMARY KEY CLUSTERED 
(
	[idCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_KhuyenMai]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_KhuyenMai](
	[idPromotion] [int] NOT NULL,
	[namePromotions] [nvarchar](max) NULL,
	[status] [nvarchar](50) NULL,
	[startDay] [date] NULL,
	[endDay] [date] NULL,

 CONSTRAINT [PK_Tbl_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[idPromotion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_NhaCungCap]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_NhaCungCap](
	[idSupplier] [nvarchar](50) NOT NULL,
	[nameSupplier] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[idSupplier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_NhanVien]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_NhanVien](
	[idEmployee] [nvarchar](50) NOT NULL,
	[nameEmployee] [nvarchar](50) NULL,
	[serviceEmployee] [nvarchar](50) NULL,
	[birthday] [date] NULL,
	[phoneNumber] [nchar](10) NULL,
	[salaryEmployee] [float] NULL,
	[totalSales] [float] NULL,
	[quantityBillPay] [int] NULL,
	[idUser] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_NhanVien] PRIMARY KEY CLUSTERED 
(
	[idEmployee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_PhieuNhapKho]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PhieuNhapKho](
	[idReceipt] [int] NOT NULL,
	[idSupplier] [nvarchar](50) NOT NULL,
	[dateReceipt] [date] NULL,
	[sumPay] [float] NULL,
 CONSTRAINT [Pk_id] PRIMARY KEY CLUSTERED 
(
	[idReceipt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_PhieuYeuCauNhapHang]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PhieuYeuCauNhapHang](
	[idCoupon] [int] NOT NULL,
	[dateAdded] [date] NULL,
	[intoMoney] [float] NULL,
	
 CONSTRAINT [PK_Tbl_PhieuNhapHang] PRIMARY KEY CLUSTERED 
(
	[idCoupon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Quyen]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Quyen](
	[idQuyen] [int] NOT NULL,
	[nameAuth] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Quyen] PRIMARY KEY CLUSTERED 
(
	[idQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_SanPham]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_SanPham](
	[idProduct] [nvarchar](50) NOT NULL,
	[nameProduct] [nvarchar](max) NULL,
	[unitPrice] [float] NOT NULL,
	[quantityProduct] [int] NOT NULL,
	[statusProduct] [nvarchar](max) NULL,
	[idTypeProduct] [int] NOT NULL,
	[idManufactutre] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_SanPham] PRIMARY KEY CLUSTERED 
(
	[idProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_TaiKhoan]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_TaiKhoan](
	[idUser] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NULL,
	[idQuyen] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Tbl_ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_bill] FOREIGN KEY([idBill])
REFERENCES [dbo].[Tbl_HoaDon] ([idBill])
GO
ALTER TABLE [dbo].[Tbl_ChiTietHoaDon] CHECK CONSTRAINT [fk_bill]
GO
ALTER TABLE [dbo].[Tbl_ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_ProductLapTop] FOREIGN KEY([idProduct])
REFERENCES [dbo].[Tbl_SanPham] ([idProduct])
GO
ALTER TABLE [dbo].[Tbl_ChiTietHoaDon] CHECK CONSTRAINT [fk_ProductLapTop]
GO
ALTER TABLE [dbo].[Tbl_ChiTietKhuyenMai]  WITH CHECK ADD  CONSTRAINT [fk_ProductPromotion] FOREIGN KEY([idProduct])
REFERENCES [dbo].[Tbl_SanPham] ([idProduct])
GO
ALTER TABLE [dbo].[Tbl_ChiTietKhuyenMai] CHECK CONSTRAINT [fk_ProductPromotion]
GO
ALTER TABLE [dbo].[Tbl_ChiTietKhuyenMai]  WITH CHECK ADD  CONSTRAINT [fk_Promotion] FOREIGN KEY([idPromotion])
REFERENCES [dbo].[Tbl_KhuyenMai] ([idPromotion])
GO
ALTER TABLE [dbo].[Tbl_ChiTietKhuyenMai] CHECK CONSTRAINT [fk_Promotion]
GO
ALTER TABLE [dbo].[Tbl_ChiTietNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapKho] FOREIGN KEY([idReceipt])
REFERENCES [dbo].[Tbl_PhieuNhapKho] ([idReceipt])
GO
ALTER TABLE [dbo].[Tbl_ChiTietNhapKho] CHECK CONSTRAINT [FK_PhieuNhapKho]
GO
ALTER TABLE [dbo].[Tbl_ChiTietNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_PhieuYc] FOREIGN KEY([idCoupon])
REFERENCES [dbo].[Tbl_PhieuYeuCauNhapHang] ([idCoupon])
GO
ALTER TABLE [dbo].[Tbl_ChiTietNhapKho] CHECK CONSTRAINT [FK_PhieuYc]
GO
/*ALTER TABLE [dbo].[Tbl_ChiTietNhapKho]  WITH CHECK ADD  CONSTRAINT [fk_SanPham] FOREIGN KEY([idProduct])
REFERENCES [dbo].[Tbl_SanPham] ([idProduct])
GO
ALTER TABLE [dbo].[Tbl_ChiTietNhapKho] CHECK CONSTRAINT [fk_SanPham]
GO*/
ALTER TABLE [dbo].[Tbl_ChiTietPhieuYcNhapHang]  WITH CHECK ADD  CONSTRAINT [fk_Coupon] FOREIGN KEY([idCoupon])
REFERENCES [dbo].[Tbl_PhieuYeuCauNhapHang] ([idCoupon])
GO
ALTER TABLE [dbo].[Tbl_ChiTietPhieuYcNhapHang]  WITH CHECK ADD  CONSTRAINT [fk_Product] FOREIGN KEY([idProduct])
REFERENCES [dbo].[Tbl_SanPham] ([idProduct])
GO
ALTER TABLE [dbo].[Tbl_ChiTietPhieuYcNhapHang] CHECK CONSTRAINT [fk_Coupon]
GO
/*ALTER TABLE [dbo].[Tbl_DanhMucLapTop]  WITH CHECK ADD  CONSTRAINT [fk_Manufacturer] FOREIGN KEY([idManufacturer])
REFERENCES [dbo].[Tbl_HangSP] ([id])
GO
ALTER TABLE [dbo].[Tbl_DanhMucLapTop] CHECK CONSTRAINT [fk_Manufacturer]
GO*/
ALTER TABLE [dbo].[Tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_KhachHangBill] FOREIGN KEY([idCustomer])
REFERENCES [dbo].[Tbl_KhachHang] ([idCustomer])
GO
ALTER TABLE [dbo].[Tbl_HoaDon] CHECK CONSTRAINT [fk_KhachHangBill]
GO
ALTER TABLE [dbo].[Tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_NhanVienBill] FOREIGN KEY([idEmployee])
REFERENCES [dbo].[Tbl_NhanVien] ([idEmployee])
GO
ALTER TABLE [dbo].[Tbl_HoaDon] CHECK CONSTRAINT [fk_NhanVienBill]
GO
/*ALTER TABLE [dbo].[Tbl_KhuyenMai]  WITH CHECK ADD  CONSTRAINT [fk_TypeProduct] FOREIGN KEY([idTypeProduct])
REFERENCES [dbo].[Tbl_DanhMucLapTop] ([idTypeProduct])
GO
ALTER TABLE [dbo].[Tbl_KhuyenMai] CHECK CONSTRAINT [fk_TypeProduct]
GO*/
/*ALTER TABLE [dbo].[Tbl_NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_User] FOREIGN KEY([idUser])
REFERENCES [dbo].[Tbl_TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[Tbl_NhanVien] CHECK CONSTRAINT [fk_User]
GO*/
ALTER TABLE [dbo].[Tbl_PhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [PK_NhaCungCap] FOREIGN KEY([idSupplier])
REFERENCES [dbo].[Tbl_NhaCungCap] ([idSupplier])
GO
ALTER TABLE [dbo].[Tbl_PhieuNhapKho] CHECK CONSTRAINT [PK_NhaCungCap]
GO
/*ALTER TABLE [dbo].[Tbl_PhieuYeuCauNhapHang]  WITH CHECK ADD  CONSTRAINT [fk_idSupplier] FOREIGN KEY([idSupplier])
REFERENCES [dbo].[Tbl_NhaCungCap] ([idSupplier])
GO
ALTER TABLE [dbo].[Tbl_PhieuYeuCauNhapHang] CHECK CONSTRAINT [fk_idSupplier]
GO*/
ALTER TABLE [dbo].[Tbl_SanPham]  WITH CHECK ADD  CONSTRAINT [fk_ManufacturerProduct] FOREIGN KEY([idManufactutre])
REFERENCES [dbo].[Tbl_HangSP] ([idManufactutre])
GO
ALTER TABLE [dbo].[Tbl_SanPham] CHECK CONSTRAINT [fk_ManufacturerProduct]
GO
ALTER TABLE [dbo].[Tbl_SanPham]  WITH CHECK ADD  CONSTRAINT [fk_TypeProductProduct] FOREIGN KEY([idTypeProduct])
REFERENCES [dbo].[Tbl_DanhMucLapTop] ([idTypeProduct])
GO
ALTER TABLE [dbo].[Tbl_SanPham] CHECK CONSTRAINT [fk_TypeProductProduct]
GO
ALTER TABLE [dbo].[Tbl_TaiKhoan]  WITH CHECK ADD  CONSTRAINT [fk_QuyenID] FOREIGN KEY([idQuyen])
REFERENCES [dbo].[Tbl_Quyen] ([idQuyen])
GO
ALTER TABLE [dbo].[Tbl_TaiKhoan] CHECK CONSTRAINT [fk_QuyenID]
GO
/****** Object:  StoredProcedure [dbo].[proc_login]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[proc_login]
@user nvarchar(50),
@pass nvarchar(50)
as 
BEGIN
	select * from Tbl_TaiKhoan where UserName = @user and Password = @pass
END
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanLapTop] SET  READ_WRITE 
GO


/**     Insert data to tables    **/
use QuanLyBanLapTop
go

---   1) Hãng sản phẩm   ----


INSERT INTO Tbl_HangSP VALUES
(4001, N'Asus'),
(4002, N'Acer'),
(4003, N'Apple'),
(4004, N'Dell'),
(4005, N'Lenovo')

---   2) Danh mục laptop   ---
INSERT INTO Tbl_DanhMucLapTop VALUES
(5001, N'Laptop gaming'),
(5002, N'Ultrabook mỏng nhẹ'),
(5003, N'Laptop văn phòng')



---	  4) Sản phẩm   ----
INSERT INTO Tbl_SanPham VALUES
('SP001', N'Tuf Gaming F15 2022', 21000000,  16, N'Còn hàng', 5001, 4001),
('SP002', N'Laptop Acer Swift 3', 22000000,  5, N'Còn hàng', 5002, 4002),
('SP003', N'Laptop Dell Precision 5510', 23000000,  5, N'Còn hàng', 5003, 4004),
('SP004', N'Tuf Gaming A15 2022', 24000000,  5, N'Còn hàng', 5001, 4001),
('SP005', N'Macbook Pro M2', 25000000,  5, N'Còn hàng', 5002, 4003),
('SP006', N'Laptop Asus TUF Gaming F15', 27899000,  5, N'Còn hàng', 5001, 4001),
('SP007', N'Laptop Asus ROG Flow X13', 33990000,  5, N'Còn hàng', 5001, 4001),
('SP008', N'Laptop ASUS ROG Strix SCAR 17 SE G733CX-LL6789W', 102900000 ,  5, N'Còn hàng', 5001, 4001),
('SP009', N'Laptop Acer Gaming Aspire 7 A715-42G-R4XX NH.QAYSV.008', 14690000,  5, N'Còn hàng', 5001, 4002),
('SP010', N'Laptop Gaming Acer Nitro 5 Eagle AN515-57-54MV NH.QENSV.003', 19990000,  5, N'Còn hàng', 5001, 4002),
('SP011', N'Laptop Acer Predator Helios 300 PH315-55-76KG NH.QGPSV.001', 40990000,  5, N'Còn hàng', 5001, 4002),
('SP012', N'Laptop Asus ROG Zephyrus M16 GU603ZX-K8025W', 94990000,  5, N'Còn hàng', 5001, 4001),
('SP013', N'Laptop ASUS ROG Zephyrus G15 GA503RM-LN006W', 40690000,  5, N'Còn hàng', 5001, 4001),
('SP014', N'Laptop Asus ROG Strix G15 G513RC-HN090W', 25990000,  5, N'Còn hàng', 5001, 4001),
('SP015', N'Laptop Dell G15 5511 70283449', 22590000,  5, N'Còn hàng', 5001, 4004),
('SP016', N'Laptop Dell G15 5515C P105F004CGR', 18590000,  5, N'Còn hàng', 5001, 4004),
('SP017', N'Laptop Dell G15 5515D P105F004DGR', 20690000,  5, N'Còn hàng', 5001, 4004),
('SP018', N'Laptop Lenovo IdeaPad Gaming 3 15IAH7 82S9006YVN', 26190000,  5, N'Còn hàng', 5001, 4005),
('SP019', N'Laptop Lenovo Legion 5 15IAH7H 82RB0048VN', 38990000,  5, N'Còn hàng', 5001, 4005),
('SP020', N'Laptop Lenovo Legion 5 Pro 16IAH7H 82RG008SVN', 43990000,  5, N'Còn hàng', 5001, 4005),
('SP021', N'Laptop Asus ZenBook 14 UX425EA-KI839W', 18990000,  5, N'Còn hàng', 5002, 4001),
('SP022', N'Laptop Asus ExpertBook B9400CEA-KC0773T', 29990000,  5, N'Còn hàng', 5002, 4001),
('SP023', N'Laptop Asus Zenbook 14 Flip OLED UP5401ZA-KN101W', 31690000,  5, N'Còn hàng', 5002, 4001),
('SP024', N'Laptop Acer Aspire 3 A315-56-58EG NX.HS5SV.00J', 10999000,  5, N'Còn hàng', 5002, 4002),
('SP025', N'Laptop Acer Aspire 5 A514-55-5954 NX.K5BSV.001', 16990000,  5, N'Còn hàng', 5002, 4002),
('SP026', N'Laptop Acer Swift 3 SF314-512-56QN NX.K0FSV.002', 22990000,  5, N'Còn hàng', 5002, 4002),
('SP027', N'Laptop Apple MacBook Pro M2 2022 13.3 inch MNEH3SA/A Space Grey', 29990000,  5, N'Còn hàng', 5002, 4003),
('SP028', N'Laptop Apple Macbook Air 13.6 inch MLY13SA/A STARLIGHT (Apple M2)', 29550000,  5, N'Còn hàng', 5002, 4003),
('SP029', N'Laptop Apple Macbook Air 13.6 inch MLXW3SA/A Xám (Apple M2)', 29550000,  5, N'Còn hàng', 5002, 4003),
('SP030', N'Laptop Dell Vostro 14 3400 YX51W6', 16790000,  5, N'Còn hàng', 5002, 4004),
('SP031', N'Laptop Dell Inspiron 16 5620 P1WKN', 20790000,  5, N'Còn hàng', 5002, 4004),
('SP032', N'Laptop Dell Inspiron 14 7420 1YT85', 32290000,  5, N'Còn hàng', 5002, 4004),
('SP033', N'Laptop Lenovo ThinkPad X13 Gen 3 21BN00AJVA', 30890000,  5, N'Còn hàng', 5002, 4005),
('SP034', N'Laptop Lenovo IdeaPad 5 15IAL7 82SF006LVN', 18390000,  5, N'Còn hàng', 5002, 4005),
('SP035', N'Laptop Lenovo ThinkBook 14 G2 ITL 20VD00Y0VN', 14990000,  5, N'Còn hàng', 5002, 4005),
('SP036', N'Laptop Asus ZenBook 14 UX425EA-KI839W', 18999000,  5, N'Còn hàng', 5003, 4001),
('SP037', N'Laptop Asus ExpertBook B9400CEA-KC0773T', 29990000,  5, N'Còn hàng', 5003, 4001),
('SP038', N'Laptop Asus Vivobook 14X A1403ZA-LY072W', 14490000,  5, N'Còn hàng', 5003, 4001),
('SP039', N'Laptop Acer Gaming Aspire 7 A715-42G-R4XX NH.QAYSV.008', 14690000,  5, N'Còn hàng', 5003, 4002),
('SP040', N'Laptop Acer Aspire 3 A315-56-58EG NX.HS5SV.00J', 10999000,  5, N'Còn hàng', 5003, 4002),
('SP041', N'Laptop Acer Swift 3 SF314-43-R4X3 NX.AB1SV.004', 18690000,  5, N'Còn hàng', 5003, 4002),
('SP042', N'Laptop Acer Aspire 3 A315-58G-50S4 NX.ADUSV.001', 14690000,  5, N'Còn hàng', 5003, 4002),
('SP043', N'Laptop Acer Aspire 3 A315-56-38B1 NX.HS5SV.00G', 9290000,  5, N'Còn hàng', 5003, 4002),
('SP044', N'Laptop Acer Aspire 5 A515-57-52Y2 NX.K3KSV.003', 16990000,  5, N'Còn hàng', 5003, 4002),
('SP045', N'Laptop Dell Latitude 3420 42LT342001', 10990000,  5, N'Còn hàng', 5003, 4004),
('SP046', N'Laptop Dell Vostro 14 3400 YX51W5', 16790000,  5, N'Còn hàng', 5003, 4004),
('SP047', N'Laptop Dell Vostro 3400 V4I7015W1', 22390000,  5, N'Còn hàng', 5003, 4004),
('SP048', N'Laptop Lenovo V14 G2 ITL 82KA00RTVN', 8990000,  5, N'Còn hàng', 5003, 4005),
('SP049', N'Laptop Lenovo ThinkBook 14 G2 ITL 20VD00Y0VN', 14990000,  5, N'Còn hàng', 5003, 4005),
('SP050', N'Laptop Lenovo ThinkBook 14 G2 ITL 20VD00Y3VN', 17690000,  5, N'Còn hàng', 5003, 4005)

---   5) Khách hàng   ---
INSERT INTO Tbl_KhachHang VALUES 
('KH001', N'Nguyễn Thị Ngọc Bích', N'Hà Nội', '0912357984', 'bich@gmail.com'),
('KH002', N'Nguyễn Văn Linh', N'Huế', '012257984', 'linh@gmail.com'),
('KH003', N'Nguyễn Thị Ngọc Bích', N'TP.HCM', '093257984', 'ngoc@gmail.com'),
('KH004', N'Nguyễn Tuấn Anh', N'Cà Mau', '093357984', 'anh@gmail.com')

---   6) Dữ liệu bảng quyền   ---
INSERT INTO Tbl_Quyen VALUES
(7001, 'Admin'),
(7002, 'Employee')

---   7) Dữ liệu bảng tài khoản   ---
INSERT INTO Tbl_TaiKhoan VALUES 
('Trong', N'admin', '1234', 7001),
('Tien', N'user1', '1234', 7002),
('Anh', N'user2', '1234', 7002),
('Quan', N'user3', '1234', 7002),
('Truc', N'user4', '1234', 7002)

---	  8) Dữ liệu bảng nhân viên   ---
INSERT INTO Tbl_NhanVien VALUES
('NV001', N'Nguyễn Hữu Trọng', N'Quản lý', '05/05/2002', '0157823578', 100000000, 65000000, 1, 'Trong1'),
('NV002', N'Nguyễn Tiến', N'Nhân viên kỹ thuật', '06/06/2002', '0456788945', 80000000, 69000000, 1, 'Tien2'),
('NV003', N'Nguyễn Đức Anh', N'Nhân viên bán hàng', '07/07/2002', '0489784545', 60000000, 95500000, 1, 'Anh3'),
('NV004', N'Nguyễn Hoàng Quân', N'Nhân viên thu ngân', '08/08/2002', '0489748546', 40000000, 94500000, 1, 'Quan4'),
('NV005', N'Thanh Trực', N'Chăm sóc khách hàng', '09/09/2002', '0887484645', 20000000, 0, 0, 'Truc5')

---   9) Hóa đơn   ---
INSERT INTO Tbl_HoaDon VALUES 
(1001, '01/01/2022', 65000000, N'Tiền mặt', 0, 65000000, N'Đã thanh toán', 'NV001', 'KH001'),
(1002, '02/02/2022', 69000000, N'Tiền mặt', 0, 69000000, N'Đã thanh toán', 'NV002', 'KH001'),
(1003, '03/03/2022', 96000000, N'Chuyển khoản', 500000, 95500000, N'Đã thanh toán', 'NV003', 'KH001'),
(1004, '04/04/2022', 125000000, N'Chuyển khoản', 500000, 94500000, N'Đã thanh toán', 'NV004', 'KH001')

---   10) Chi tiết hóa đơn   ---
INSERT INTO Tbl_ChiTietHoaDon VALUES 
(1, 21000000, 21000000, 0, 'SP001', 1001),
(2, 22000000, 44000000, 0, 'SP002', 1001),
(3, 23000000, 69000000, 0, 'SP003', 1002),
(4, 24000000, 96000000, 0, 'SP004', 1003),
(5, 25000000, 125000000, 0, 'SP005', 1004)

---   11) Khuyến mãi   ---
INSERT INTO Tbl_KhuyenMai VALUES
(2001, N'Chúc mừng năm mới 2022', N'Hết khuyến mãi', '2022-01-01', '2022-03-03'),
(2002, N'Mừng lễ 30/4', N'Hết khuyến mãi', '2022-04-25', '2022-05-05'),
(2003, N'Back to School', N'Đang khuyến mãi', '2022-08-25', '2022-09-25'),
(2004, N'Merry Chirstmas', N'Sắp khuyến mãi', '2022-12-20', '2022-12-28')

---   12) Dữ liệu bảng chi tiết khuyến mãi
INSERT INTO Tbl_ChiTietKhuyenMai VALUES
(100000, N'Hết khuyến mãi', 'SP001', 2001),
(200000, N'Hết khuyến mãi', 'SP002', 2001),
(300000, N'Hết khuyến mãi', 'SP003', 2002),
(400000, N'Đang khuyến mãi', 'SP004', 2003),
(500000, N'Hết khuyến mãi', 'SP005', 2004)

---   13) Nhà cung cấp   ---
INSERT INTO Tbl_NhaCungCap VALUES
('ASUS', N'Asus'),
('ACER', N'Acer'),
('APPLE', N'Apple'),
('DELL', N'Dell'),
('LENOVO', N'Lenovo')

---    14) Phiếu nhập kho   ---
INSERT INTO Tbl_PhieuNhapKho VALUES
(3001, 'ASUS', '2019-12-12', 19000000)

---   15) Phiếu yêu cầu nhập hàng   --- NO
INSERT INTO Tbl_PhieuYeuCauNhapHang VALUES
(6001, '2019-12-01', 100000000)

---   16) Chi tiết nhập kho   --- Checked
INSERT INTO Tbl_ChiTietNhapKho VALUES
(3001, 6001, 5, 5, 20000000, 100000000)

---   17) Chi tiết phiếu yêu cầu nhập hàng   --- Checked
INSERT INTO Tbl_ChiTietPhieuYcNhapHang VALUES
('SP001', 6001, 1, 20000000, 20000000)

alter table Tbl_ChiTietHoaDon
add primary key (idProduct,idBill)

alter table Tbl_ChiTietKhuyenMai
add primary key (idProduct,idPromotion)

alter table Tbl_ChiTietNhapKho
add primary key (idReceipt,idCoupon)

alter table Tbl_ChiTietPhieuYcNhapHang
add primary key (idProduct,idCoupon)
