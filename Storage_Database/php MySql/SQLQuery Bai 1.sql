USE QLBH

create table DMKhach
(
MaKhach VARCHAR(10) PRIMARY KEY NOT NULL,
TenKhach NVARCHAR(25) NOT NULL,
QueQuan NVARCHAR(30) NULL,
DienThoai NVARCHAR(15) NULL
)

create table DMHang
(
MaHang VARCHAR(10) PRIMARY KEY NOT NULL,
TenHang NVARCHAR(25) NOT NULL,
DVT NVARCHAR(10) NOT NULL,
NoiSX NVARCHAR(30) NOT NULL
)

create table HoaDonBan
(
SoHD VARCHAR(10) PRIMARY KEY NOT NULL,
MaKhach VARCHAR(10) NOT NULL,
NgayHD DATE NOT NULL,
DienGiai NVARCHAR(25) NULL,

CONSTRAINT key1 FOREIGN KEY(MaKhach) REFERENCES DMKhach(MaKhach)
)

create table ChiTietHoaDon
(
SoHD VARCHAR(10) NOT NULL, 
MaHang VARCHAR(10) NOT NULL,
SoLuong INT NOT NULL,
DonGia MONEY NOT NULL

CONSTRAINT key2 FOREIGN KEY(SoHD) REFERENCES HoaDonBan(SoHD),
CONSTRAINT key3 FOREIGN KEY(MaHang) REFERENCES DMHang(MaHang)
)

--2/ Tạo view tổng hợp thông tin về các khách hàng đã mua hàng của cửa hàng.
create view viewInfo as
SELECT *
FROM DMKhach;

SELECT * from viewInfo;

/*3/ Tạo view tổng hợp thông tin về khách hàng có địa chỉ ở Thái Nguyên và từng mua
hàng tại cửa hàng.*/

create view viewAddress1 as
SELECT * 
FROM DMKhach
WHERE MaKhach in (select MaKhach from HoaDonBan) and DienThoai = '0987654321'

SELECT * from viewAddress1;

3. Tạo view tổng hợp thông tin về khách hàng có địa chỉ ở Thái Nguyên và từng mua hàng tại cửa hàng.
create view KhachHang as
select * from DMKhach
where MaK in (select MaK from HoaDonBan)
                         and Queq = N'Thái Nguyên'

4. Tạo view tổng hợp thông tin về các mặt hàng được sản xuất tại Thái Nguyên hoặc Cao Bằng.
create view Noi_SX as
select * from DMHang
where Noi_SX = N'Thái Nguyên' or Noi_SX = N'Cao Bằng'

5. Tạo view tổng hợp thông tin về các khách hàng đã từng mua các mặt hàng được sản xuất tại Thái Nguyên.
create view KhachTungMua as
select * from DMKhach
where MaK in (select Mak from DMHang, HoaDonBan, ChiTietHoaDon
                         where HoaDonBan.SoHD = ChiTietHoaDon.SoHD
						 and DMHang.MaH = ChiTietHoaDon.MaH
						 and Noi_SX = N'Thái Nguyên')

6. Tạo view tổng hợp thông tin về các mặt hàng đã được bán trong ngày 01/04/2014.
create view HangDaBan as
select * from DMHang
where MaH in (select MaH from ChiTietHoaDon
                         where SoHD in (select SoHD from HoaDonBan
						                            where day(NgayHD) = '01' and month(NgayHD) = '04'
						                                                     and year(NgayHD) = '2014'))

7. Tạo view tổng hợp thông tin về các khách hàng đã mua hàng trong ngày 01/05/2014.
create view KhachMua as
select * from DMKhach
where MaK in (select MaK from HoaDonBan
                         where day(NgayHD) = '01' and month(NgayHD) = '05' and year(NgayHD) = '2014')

8. Tạo view tổng hợp thông tin về các hóa đơn bán hàng trong tháng 9 năm 2014.
create view HoaDon as
select * from HoaDonBan
where SoHD in (select SoHD from ChiTietHoaDon
                           where month(NgayHD) = '09' and year(NgayHD) = '2014')

9. Tạo view tổng hợp thông tin về các khách hàng đã mua hàng trong tháng 1 năm 2015.
create view KhachDaMua as
select * from DMKhach
where MaK in (select MaK from HoaDonBan
                         where month(NgayHD) = '01' and year(NgayHD) = '2015')

10. Tạo view tổng hợp thông tin về các mặt hàng không bán được trong tháng 2 năm 2015.
create view MatHang as
select * from DMHang
where MaH not in (select MaH from ChiTietHoaDon
                             where SoHD in (select SoHD from HoaDonBan