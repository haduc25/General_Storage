create database QLKS
use QLKS
create table KHACHHANG
(
MaKhach nvarchar(10) primary key,
TenKhach nvarchar(30),
DiaChi nvarchar(40),
SDT int
)

create table PHONG
(
MaPhong nvarchar(10) primary key,
TenPhong nvarchar(30),
LoaiPhong nvarchar(20),
Gia int
)

create table DATPHONG
(
MaKhach nvarchar(10) ,
MaPhong nvarchar(10),
NgayNhan smalldatetime,
NgayTra smalldatetime,
constraint kc primary key (MaKhach,MaPhong),
constraint KN1 foreign key(MaKhach) references KHACHHANG(MaKhach),
constraint KN2 foreign key(MaPhong) references PHONG(MaPhong)
)

insert into KHACHHANG
values
('MK01',N'Tuấn',N'Bắc Giang',0347674513),
('MK02',N'Khang',N'Bắc Ninh',0347674514),
('MK03',N'Nam',N'Hà Nam',0347674515),
('MK04',N'Mạnh',N'Quảng Ninh',0347674516),
('MK05',N'Huy',N'Bắc Giang',0347674517)

insert into PHONG
values
('MP01',N'Phòng 1',N'Bình Thường',100000),
('MP02',N'Phòng 2',N'Bình Thường',200000),
('MP03',N'Phòng 3',N'VIP1',300000),
('MP04',N'Phòng 4',N'VIP2',400000),
('MP05',N'Phòng 5',N'VIP3',500000)

insert into DATPHONG
values
('MK01','MP01','1/2/2021','4/2/2021'),
('MK02','MP02','1/3/2021','5/3/2021'),
('MK03','MP03','1/4/2021','6/4/2021'),
('MK04','MP04','1/5/2021','7/5/2021'),
('MK05','MP05','1/6/2021','8/6/2021')

--2/ Tạo TRIGGER để kiểm tra dữ liệu khi nhập vào bảng Phong nếu TenPhong chưa nhập thì đưa ra màn hình thông báo lỗi là 
--không được để trống tên phòng và không cho phép nhập bản ghi này, ngược lại đưa ra thông báo bản ghi đã nhập thành công.
create trigger KTDL on PHONG
after insert as
if(select TenPhong from inserted)=null
begin
	print N'lỗi. Không được để trống tên phòng'
	rollback tran
end
else
	print N'bản ghi  đã nhập thành công'
insert into PHONG values ('MP09',N'',N'Bình Thường',100000)

--3/ Tạo TRIGGER để kiểm tra dữ liệu khi nhập vào bảng DatPhong, nếu NgayNhan lớn hơn ngày hiện tại thì đưa ra 
--màn hình thông báo lỗi và không cho phép nhập bản ghi này, ngược lại đưa ra thông báo bản ghi đã nhập thành công.
create trigger KTDL1 on DATPHONG
after insert as
if exists (select NgayNhan from inserted where NgayNhan>GETDATE())
begin
	print N'lỗi. Không cho phép nhập bản ghi này'
	rollback tran
end
else
	print N'bản ghi  đã nhập thành công'
insert into DATPHONG values ('MK01','MP05','11/5/2021','4/2/2021')


--4/ Dùng kiểu dữ liệu CURSOR để đưa ra danh các phòng hiện tại chưa có khách hàng đặt thuê phòng.
insert into PHONG values ('MP07',N'Phòng 6',N'VIP 4',600000)
declare @MaPhong nvarchar(10),@TenPhong nvarchar(30),@LoaiPhong nvarchar(20),@Gia int
declare c4 cursor for
select * from PHONG where MaPhong not in(select MaPhong from DATPHONG)
open c4
fetch next from c4
into @MaPhong,@TenPhong,@LoaiPhong,@Gia
print N'danh sách các phòng hiện tại chưa có khách hàng đặt thuê phòng'
while @@FETCH_STATUS=0
begin
	print @MaPhong+'    '+'    '+@TenPhong+'    '+'    '+@LoaiPhong+'    '+convert(nvarchar(10),@Gia)
	fetch next from c4
into @MaPhong,@TenPhong,@LoaiPhong,@Gia
end
close c4
deallocate c4

--5/ Dùng kiểu dữ liệu CURSOR để tăng giá phòng lên 10%.
 declare c5 cursor for
select * from PHONG
update PHONG set Gia=Gia*1.10 
open c5
declare @MaP nvarchar(10),@TenP nvarchar(30),@LoaiP nvarchar(20),@GiaP int
fetch next from c5
into @MaP,@TenP,@LoaiP,@GiaP
print N'Cập nhật giá phòng'
while @@FETCH_STATUS=0
begin
	print @MaP+'    '+@TenP+'    '+@LoaiP+'            '+convert(nvarchar(10),@GiaP)
	fetch next from c5
into @MaP,@TenP,@LoaiP,@GiaP
end
close c5
deallocate c5
--//c2
 declare c5 cursor for
select * from PHONG
update PHONG set Gia=Gia*1.10 
open c5
fetch next from c5
print N'Cập nhật giá phòng'
while @@FETCH_STATUS=0
begin
	fetch next from c5
end
close c5
deallocate c5