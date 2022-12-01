create database QLBH
use QLBH
create table DMKhach
(
MaK char(7) primary key,
TenK nvarchar(30) not null,
Queq nvarchar(20),
SDT char(15)
)
create table DMHang
(
MaH char(7) primary key,
TenH nvarchar(20) not null,
DVT nvarchar(10) not null,
Noi_SX nvarchar(15)
)
create table HoaDonBan
(
SoHD char(7) primary key,
MaK char(7),
NgayHD smalldatetime not null,
DienGiai varchar(5),
constraint N1 foreign key (MaK) references DMKhach(MaK)
)
create table ChiTietHoaDon
(
SoHD char(7),
MaH char(7),
SoLuong int,
DonGia money,
constraint N2 primary key(SoHD, MaH),
constraint N3 foreign key (SoHD) references HoaDonBan(SoHD),
constraint N4 foreign key (MaH) references DMHang(MaH)
) 
insert into DMKhach(MaK, TenK, Queq, SDT)
values
('MaK01',N'Hà Minh Đức',N'Bắc Kạn','0123456789'),
('MaK02',N'Nguyễn Thị Thúy',N'Cao Kỳ','0987654321'),
('MaK03',N'Nguyễn Quỳnh Dương',N'Thái Nguyên','0135792468'),
('MaK04',N'Trần Thị Hòa',N'Thái Nguyên','015456'),
('MaK05',N'Đàm Thành Đạt',N'Cao Bằng','0298753492')
select * from DMKhach
insert into DMHang(MaH, TenH, DVT, Noi_SX)
values
('MaH01',N'Bút Bi',N'Cái',N'Hà Nội'),
('MaH02',N'Bút Chìi',N'Cái',N'Thái Nguyên'),
('MaH03',N'Compa',N'Cái',N'Hòa Bình'),
('MaH04',N'Thước Kẻ',N'Cái',N'Hải Phòng'),
('MaH05',N'Vở Viết',N'Quyển',N'Cao Bằng')
select * from DMHang
insert into HoaDonBan(SoHD, MaK, NgayHD, DienGiai)
values
('HD01','MaK02','04/01/2014',' '),
('HD02','MaK01','09/23/2014',' '),
('HD03','MaK03','05/01/2014',' '),
('HD04','MaK05','01/01/2015',' '),
('HD05','MaK04','02/06/2015',' ')
select * from HoaDonBan
insert into ChiTietHoaDon(SoHD, MaH, SoLuong, DonGia)
values
('HD01','MaH03','5000','100000'),
('HD04','MaH04','8000','1000000'),
('HD02','MaH03','400','50000'),
('HD05','MaH02','1000','2000'),
('HD03','MaH03','200','2500')
select * from ChiTietHoaDon

2. Tạo view tổng hợp thông tin về các khách hàng đã mua hàng của cửa hàng.
create view KhachMuaHang as
select * from DMKhach
where MaK in (select MaK from HoaDonBan)

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
			                 where month(NgayHD) = '02' and year(NgayHD) = '2015'))
