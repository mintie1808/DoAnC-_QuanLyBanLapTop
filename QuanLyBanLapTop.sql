

/****** Object:  Database [QuanLyBanLapTop]    Script Date: 9/16/2022 11:13:20 PM ******/
CREATE DATABASE [QuanLyBanLapTop]
ALTER DATABASE [QuanLyBanLapTop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanLapTop].[dbo].[sp_fulltext_database] @action = 'enable'
end
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
ALTER DATABASE [QuanLyBanLapTop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyBanLapTop] SET QUERY_STORE = OFF
GO
USE [QuanLyBanLapTop]
GO

/****** Object:  Table [dbo].[Tbl_ChiTietDanhMuc]    Script Date: 9/16/2022 11:13:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ChiTietDanhMuc](
	[idManufactory] [int] NOT NULL,
	[idTypeProduct] [int] NOT NULL
) ON [PRIMARY]
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
	[idProduct] [nvarchar](50) NOT NULL
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
	[id] [int] NOT NULL,
	[namTypeProduct] [nvarchar](50) NULL,
	[idManufacturer] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_HangSP]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_HangSP](
	[id] [int] NOT NULL,
	[nameManufacturer] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tbl_HangSP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_HoaDon]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_HoaDon](
	[id] [int] NOT NULL,
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
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_KhuyenMai]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_KhuyenMai](
	[id] [int] NOT NULL,
	[namePromotions] [nvarchar](max) NULL,
	[status] [nvarchar](50) NULL,
	[startDay] [date] NULL,
	[endDay] [date] NULL,
	[idTypeProduct] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_PhieuNhapKho]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PhieuNhapKho](
	[id] [int] NOT NULL,
	[idSupplier] [nvarchar](50) NOT NULL,
 CONSTRAINT [Pk_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_PhieuYeuCauNhapHang]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PhieuYeuCauNhapHang](
	[id] [int] NOT NULL,
	[dateAdded] [date] NULL,
	[intoMoney] [float] NULL,
	[idSupplier] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_PhieuNhapHang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Quyen]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Quyen](
	[id] [int] NOT NULL,
	[nameAuth] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Quyen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
	[idManufacture] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_SanPham] PRIMARY KEY CLUSTERED 
(
	[idProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_TaiKhoan]    Script Date: 9/16/2022 11:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_TaiKhoan](
	[id] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NULL,
	[idQuyen] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tbl_ChiTietDanhMuc]  WITH CHECK ADD  CONSTRAINT [FK_DanhMuc] FOREIGN KEY([idTypeProduct])
REFERENCES [dbo].[Tbl_DanhMucLapTop] ([id])
GO
ALTER TABLE [dbo].[Tbl_ChiTietDanhMuc] CHECK CONSTRAINT [FK_DanhMuc]
GO
ALTER TABLE [dbo].[Tbl_ChiTietDanhMuc]  WITH CHECK ADD  CONSTRAINT [FK_Hang] FOREIGN KEY([idManufactory])
REFERENCES [dbo].[Tbl_HangSP] ([id])
GO
ALTER TABLE [dbo].[Tbl_ChiTietDanhMuc] CHECK CONSTRAINT [FK_Hang]
GO
ALTER TABLE [dbo].[Tbl_ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_bill] FOREIGN KEY([idBill])
REFERENCES [dbo].[Tbl_HoaDon] ([id])
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
REFERENCES [dbo].[Tbl_KhuyenMai] ([id])
GO
ALTER TABLE [dbo].[Tbl_ChiTietKhuyenMai] CHECK CONSTRAINT [fk_Promotion]
GO
ALTER TABLE [dbo].[Tbl_ChiTietNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapKho] FOREIGN KEY([idReceipt])
REFERENCES [dbo].[Tbl_PhieuNhapKho] ([id])
GO
ALTER TABLE [dbo].[Tbl_ChiTietNhapKho] CHECK CONSTRAINT [FK_PhieuNhapKho]
GO
ALTER TABLE [dbo].[Tbl_ChiTietNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_PhieuYc] FOREIGN KEY([idCoupon])
REFERENCES [dbo].[Tbl_PhieuYeuCauNhapHang] ([id])
GO
ALTER TABLE [dbo].[Tbl_ChiTietNhapKho] CHECK CONSTRAINT [FK_PhieuYc]
GO
ALTER TABLE [dbo].[Tbl_ChiTietNhapKho]  WITH CHECK ADD  CONSTRAINT [fk_SanPham] FOREIGN KEY([idProduct])
REFERENCES [dbo].[Tbl_SanPham] ([idProduct])
GO
ALTER TABLE [dbo].[Tbl_ChiTietNhapKho] CHECK CONSTRAINT [fk_SanPham]
GO
ALTER TABLE [dbo].[Tbl_ChiTietPhieuYcNhapHang]  WITH CHECK ADD  CONSTRAINT [fk_Coupon] FOREIGN KEY([idCoupon])
REFERENCES [dbo].[Tbl_PhieuYeuCauNhapHang] ([id])
GO
ALTER TABLE [dbo].[Tbl_ChiTietPhieuYcNhapHang] CHECK CONSTRAINT [fk_Coupon]
GO
ALTER TABLE [dbo].[Tbl_DanhMucLapTop]  WITH CHECK ADD  CONSTRAINT [fk_Manufacturer] FOREIGN KEY([idManufacturer])
REFERENCES [dbo].[Tbl_HangSP] ([id])
GO
ALTER TABLE [dbo].[Tbl_DanhMucLapTop] CHECK CONSTRAINT [fk_Manufacturer]
GO
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
ALTER TABLE [dbo].[Tbl_KhuyenMai]  WITH CHECK ADD  CONSTRAINT [fk_TypeProduct] FOREIGN KEY([idTypeProduct])
REFERENCES [dbo].[Tbl_DanhMucLapTop] ([id])
GO
ALTER TABLE [dbo].[Tbl_KhuyenMai] CHECK CONSTRAINT [fk_TypeProduct]
GO
ALTER TABLE [dbo].[Tbl_NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_User] FOREIGN KEY([idUser])
REFERENCES [dbo].[Tbl_TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[Tbl_NhanVien] CHECK CONSTRAINT [fk_User]
GO
ALTER TABLE [dbo].[Tbl_PhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [PK_NhaCungCap] FOREIGN KEY([idSupplier])
REFERENCES [dbo].[Tbl_NhaCungCap] ([idSupplier])
GO
ALTER TABLE [dbo].[Tbl_PhieuNhapKho] CHECK CONSTRAINT [PK_NhaCungCap]
GO
ALTER TABLE [dbo].[Tbl_PhieuYeuCauNhapHang]  WITH CHECK ADD  CONSTRAINT [fk_idSupplier] FOREIGN KEY([idSupplier])
REFERENCES [dbo].[Tbl_NhaCungCap] ([idSupplier])
GO
ALTER TABLE [dbo].[Tbl_PhieuYeuCauNhapHang] CHECK CONSTRAINT [fk_idSupplier]
GO
ALTER TABLE [dbo].[Tbl_SanPham]  WITH CHECK ADD  CONSTRAINT [fk_ManufacturerProduct] FOREIGN KEY([idManufacture])
REFERENCES [dbo].[Tbl_HangSP] ([id])
GO
ALTER TABLE [dbo].[Tbl_SanPham] CHECK CONSTRAINT [fk_ManufacturerProduct]
GO
ALTER TABLE [dbo].[Tbl_SanPham]  WITH CHECK ADD  CONSTRAINT [fk_TypeProductProduct] FOREIGN KEY([idTypeProduct])
REFERENCES [dbo].[Tbl_DanhMucLapTop] ([id])
GO
ALTER TABLE [dbo].[Tbl_SanPham] CHECK CONSTRAINT [fk_TypeProductProduct]
GO
ALTER TABLE [dbo].[Tbl_TaiKhoan]  WITH CHECK ADD  CONSTRAINT [fk_QuyenID] FOREIGN KEY([idQuyen])
REFERENCES [dbo].[Tbl_Quyen] ([id])
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
