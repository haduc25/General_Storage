CREATE DATABASE QLDT
USE QLDT

CREATE TABLE SINHVIEN
(
MaSV CHAR(10) primary key, 
TenSV nvarCHAR(20),
NgaySinh date,
GioiTinh nvarchar(10),
Quequan nvarchar(40)
)

CREATE TABLE MONHOC
(
MaM CHAR(10)PRIMARY KEY,
TenM nvarCHAR(30),
SoTC int
)

CREATE TABLE DIEM
(
MaSV CHAR(10),
MaM CHAR(10),
DIEMTHI float,
CONSTRAINT KC PRIMARY KEY(MaSV,MaM),
CONSTRAINT KN FOREIGN KEY(MaSV) REFERENCES SINHVIEN(MaSV),
CONSTRAINT KN1 FOREIGN KEY(MaM)REFERENCES MONHOC(MaM)
)
insert into SINHVIEN
values
('SV01',N'Đức','08/08/2002',N'nam',N'Bắc Kạn'),
('SV02',N'Nguyên','10/11/2001',N'nam',N'Hà Nội'),
('SV03',N'Sơn','08/05/2001',N'nam',N'Thái Bình'),
('SV04',N'Tùng','03/20/2001',N'nam',N'Hà Giang'),
('SV05',N'Hoàng','05/05/2001',N'nam',N'Bắc Giang')

insert into MONHOC
values
('M01',N'Toán',4),
('M02',N'Anh',3),
('M03',N'Văn',1),
('M04',N'Hóa',2),
('M05',N'Lý',2)

insert into DIEM
values
('SV01','M01',8),
('SV02','M02',5),
('SV03','M03',9),
('SV04','M04',7),
('SV05','M05',6)

--2/ Tạo TRIGGER để kiểm tra dữ liệu khi nhập vào bảng DIEM nếu DiemThi >10 
--hoặc DiemThi < 0 thì đưa ra màn hình thông báo lỗi và bản ghi này không được phép 
--nhập vào bảng dữ liệu, ngược lại đưa ra thông báo bản ghi đã nhập thành công.
create trigger KTDL on DIEM
after insert as
if exists (select DIEMTHI from inserted where DIEMTHI<0 or DIEMTHI>10)
begin
	print N'lỗi. Bản ghi này không được phép nhập vào bảng dữ liệu'
	rollback tran
end
else
	print N'bản ghi đã nhập thành công'
insert into DIEM values('SV05','M01',15)

--3/ Tạo TRIGGER để kiểm tra dữ liệu khi nhập vào bảng MONHOC nếu SOTC < 0 
--hoặc SOTC >5 thì đưa ra màn hình thông báo lỗi và bản ghi này không được phép 
--nhập vào bảng dữ liệu, ngược lại đưa ra thông báo bản ghi đã nhập thành công.
create trigger KTDL1 on MONHOC
after insert as
if exists( select SoTC from inserted where SoTC<0 or SoTC>5)
begin
	print N'lỗi. Bản ghi này không được phép nhập vào bảng dữ liệu'
	rollback tran
end
else
	print N'bản ghi đã nhập thành công'
insert into MONHOC values ('M08',N'Toán',6)


--4/ Tạo TRIGGER để kiểm tra dữ liệu khi nhập vào bảng SINHVIEN nếu độ tuổi 
--SINHVIEN<18 thì đưa ra màn hình thông báo lỗi và bản ghi này không được phép 
--nhập vào bảng dữ liệu, ngược lại đưa ra thông báo bản ghi đã nhập thành công.
create trigger KTDL2 on SINHVIEN
after insert as
if exists (select NgaySinh from inserted where year(getdate())-year(NgaySinh)<18)
begin
	print N'lỗi. Bản ghi này không được phép nhập vào bảng dữ liệu'
	rollback tran
end
else
	print N'bản ghi đã nhập thành công'
insert into SINHVIEN values ('SV06',N'Đức','08/08/2002',N'nam',N'Bắc Kạn')
drop trigger KTDL2


--5/ Tạo TRIGGER để kiểm tra dữ liệu khi nhập vào bảng SINHVIEN nếu Quequan nhập 
--vào là ‘Hà Đông’ thì đưa ra màn hình thông báo lỗi và bản ghi này không được phép nhập 
--vào bảng dữ liệu, ngược lại đưa ra thông báo bản ghi đã nhập thành công.
create trigger KTDL3 on SINHVIEN
after insert as
if exists ( select QueQuan from inserted where Quequan=N'Hà Đông')
begin
	print N'lỗi. Bản ghi này không được phép nhập vào bảng dữ liệu'
	rollback tran
end
else
	print N'bản ghi đã nhập thành công'
insert into SINHVIEN values ('SV06',N'Đức','08/08/2002',N'nam',N'Bắc Kạn')
drop trigger KTDL3


--6/ Tạo TRIGGER để kiểm tra dữ liệu khi nhập vào bảng SINHVIEN nếu độ tuổi SINHVIEN<18 thì đưa ra màn hình 
--thông báo lỗi và bản ghi này không được phép nhập vào bảng dữ liệu,ngược lại đưa ra thông báo bản ghi 
--đã nhập thành công. mới được chấp nhận, nếu trả lời ‘K’ hoặc ‘k’ thì dữ liệu mới không được chấp nhận.
--create trigger KTDL4 on SINHVIEN
--after insert as
--if exists( 



--7/ Tạo TRIGGER để kiểm tra dữ liệu khi nhập vào bảng SINHVIEN nếu Quequan 
--nhập vào là ‘Hà Đông’ thì đưa ra màn hình thông báo ‘Quê quán của sinh viên là Hà Nội’ 
--và bản ghi này được nhập vào bảng dữ liệu với thông tin Quequan là Hà Nội.
create trigger KTDL5 on SINHVIEN
after insert as
if exists ( select QueQuan from inserted where Quequan=N'Hà Đông')
begin
	print N'Quê Quán của sinh viên là Hà Nội'
	update SINHVIEN set QueQuan=N'Hà Nội'
end
else
	print N'bản ghi đã nhập thành công'
insert into SINHVIEN values ('SV06',N'Đức','08/08/2002',N'nam',N'Bắc Kạn')
select * from SINHVIEN
