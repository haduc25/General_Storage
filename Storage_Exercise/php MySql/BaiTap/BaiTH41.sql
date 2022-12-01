CREATE DATABASE QLTS
GO
USE QLTS
create table DMPhong
(
MaP char(10) primary key not null, 
TenP nvarchar(40), 
)

create table DMTaiSan
(
MaTS char(10)primary key not null,
TenTS nvarchar(30),
DonVi nvarchar(20),
Gia money,
SL int
)

create table PhanPhoi
(
MaTS char(10),
MaP char(10),
SL int,
NgayPP date,
GhiChu nvarchar(30),
CONSTRAINT KC PRIMARY KEY(MaTS,MaP,NgayPP),
CONSTRAINT K1 FOREIGN KEY(MaTS) REFERENCES DMTaiSan(MaTS),
CONSTRAINT K2 FOREIGN KEY(MaP)REFERENCES DMPhong(MaP)
)

insert into DMPhong
values
('MP01',N'Phòng 1'),
('MP02',N'Phòng 2'),
('MP03',N'Phòng 3'),
('MP04',N'Phòng 4'),
('MP05',N'TCCP')
select * from DMPhong

insert into DMTaiSan
values
('MTS01',N'Xe máy',N'Cái',50000000,2),
('MTS02',N'Nhà',N'Cái',4000000000,1),
('MTS03',N'Ô Tô',N'Cái',500000000,3),
('MTS04',N'Đất',N'Lô',5000000000,2),
('MTS05',N'Vàng',N'Cây',50000000,12)
select * from DMTaiSan

insert into PhanPhoi
values
('MTS01','MP01',1,'02/02/2020',N''),
('MTS02','MP02',1,'02/02/2020',N''),
('MTS03','MP03',2,'02/02/2020',N''),
('MTS04','MP04',1,'02/02/2020',N'')
select * from PhanPhoi

--1/ Tạo TRIGGER để kiểm tra dữ liệu khi xóa dữ liệu ở bảng DMPhong nếu TenP là ‘TCCB’ 
--thì đưa ra màn hình thông báo ‘Phòng này không được xóa và bản ghi này không được phép xoá
-- khỏi cơ sở dữ liệu, ngược lại đưa ra thông báo bản ghi đã xoá thành công
alter trigger KTDL on DMPhong
after delete as
if (select TenP from deleted)='TCCP'
begin
	print N'Phòng này không được xóa và bản ghi này Không được phép xóa khỏi csdl'
	rollback tran
end
else
	print N'Bản ghi đã xóa thành công'

delete from DMPhong 
where TenP='TCCP'


--2/ Tạo TRIGGER để kiểm tra dữ liệu khi nhập vào bảng PHANPHOI, nếu SoLuong < 0 thì đưa ra
-- màn hình thông báo lỗi và bản ghi này không được phép nhập vào bảng dữ liệu,
 -- ngược lại đưa ra thông báo bản ghi đã nhập thành công.
create trigger KTDL2 on PhanPhoi
after insert as
if (select SL from inserted )<0
begin
	print N'lỗi, bản ghi này không được phép nhập vào bảng dữ liệu'
	rollback tran
end
else
	print N'bản ghi đã nhập thành công'

insert into PhanPhoi values ('MTS05','MP01',-1,'02/02/2020',N'')


--3/ Tạo TRIGGER để kiểm tra dữ liệu khi nhập vào bảng DMTaiSan nếu TenTS đã có trong bảng
-- thì đưa ra màn hình thông báo ‘Tài sản này đã có trong danh mục’ và bản ghi này không được phép 
-- nhập vào bảng dữ liệu, ngược lại đưa ra thông báo bản ghi  đã nhập thành công.
alter trigger KTDL3 on DMTaiSan
after insert as
declare @dem int
select @dem= count (DMTaiSan.TenTS) from DMTaiSan,inserted
where DMTaiSan.TenTS=inserted.TenTS
if @dem=2
begin
	print N'Tài sản này đã có trong danh mục và bản ghi này không được phép nhập vào bảng dữ liệu'
	rollback tran
end
else
	print N'bản ghi  đã nhập thành công'

insert into DMTaiSan values ('MTS023',N'Xe 4',N'Cái',40000000,2)


--4/ Tạo TRIGGER để kiểm tra dữ liệu khi nhập vào bảng DMPhong nếu 
--TenP chưa nhập thì đưa ra màn hình thông báo lỗi là không được để trống tên
-- phòng, ngược lại đưa ra thông báo bản ghi đã nhập thành công
create trigger KTDL4 on DMPhong
after insert as
if (select TenP from inserted) = ''
begin
	print N'lỗi là không được để trống tên'
	rollback tran
end
else
	print N'bản ghi  đã nhập thành công'
insert into DMPhong values ('MP07','Phong 9')