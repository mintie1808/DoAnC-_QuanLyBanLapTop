/**     Insert data to tables    **/
use QuanLyBanLapTop
go

---   1) Hãng sản phẩm   ---- Checked
INSERT INTO Tbl_HangSP VALUES
(4001, N'Asus')

---   2) Danh mục laptop   --- Checked
INSERT INTO Tbl_DanhMucLapTop VALUES
(5001, N'Laptop gaming', 4001)

---   3) Chi tiết danh mục   --- Checked
INSERT INTO Tbl_ChiTietDanhMuc VALUES
(4001, 5001)

---	  4) Sản phẩm   ---- Need add more products
INSERT INTO Tbl_SanPham VALUES
('SP001', N'Tuf Gaming F15 2022 i9 12900HK/16GB RAM/1TB SSD', 21000000,  16, N'Còn hàng', 5001, 4001)

---   5) Khách hàng   --- Checked
INSERT INTO Tbl_KhachHang VALUES 
('KH001', N'Nguyễn Thị Ngọc Bích', N'Hà Nội', '912357984', 'bich@gmail.com')

---   6) Dữ liệu bảng quyền   --- Checked
INSERT INTO Tbl_Quyen VALUES
(7001, 'Admin')

---   7) Dữ liệu bảng tài khoản   ---
INSERT INTO Tbl_TaiKhoan VALUES 
('Trong1', N'Nguyễn Hữu Trọng', '1234', 7001)

---	  8) Dữ liệu bảng nhân viên   --- Checked
INSERT INTO Tbl_NhanVien VALUES
('NV001', N'Nguyễn Hữu Trọng', 'Quản lý', '05/05/2022', '1578235786', 100000000, 65000000, 1, 'Trong1')

---   9) Hóa đơn   --- Checked
INSERT INTO Tbl_HoaDon VALUES 
(1001, '01/01/2022', 65000000, N'Tiền mặt', 0, 65000000, N'Đã thanh toán', 'NV001', 'KH001')

---   10) Chi tiết hóa đơn   --- Checked
INSERT INTO Tbl_ChiTietHoaDon VALUES 
(1, 21000000, 21000000, 0, 'SP001', 1001)

---   11) Khuyến mãi   --- Checked
INSERT INTO Tbl_KhuyenMai VALUES
(2001, N'Chúc mừng năm mới 20022', N'Hết khuyến mãi', '01/01/2022', '03/03/2022', 5001)

---   12) Chi tiết khuyến mãi --- Checked
INSERT INTO Tbl_ChiTietKhuyenMai VALUES
(100000, N'Hết khuyến mãi', 'SP001', 2001)

---   13) Nhà cung cấp   --- Checked
INSERT INTO Tbl_NhaCungCap VALUES
('ASUS', N'Asus')

---    14) Phiếu nhập kho   --- Checked
INSERT INTO Tbl_PhieuNhapKho VALUES
(3001, 'ASUS')

---   15) Phiếu yêu cầu nhập hàng   --- NO
INSERT INTO Tbl_PhieuYeuCauNhapHang VALUES
(6001, '01/12/2019', 100000000, 'ASUS')

---   16) Chi tiết nhập kho   --- Checked
INSERT INTO Tbl_ChiTietNhapKho VALUES
(3001, 6001, 'SP001')

---   17) Chi tiết phiếu yêu cầu nhập hàng   --- Checked
INSERT INTO Tbl_ChiTietPhieuYcNhapHang VALUES
('SP001', 6001, 1, 20000000, 20000000)


