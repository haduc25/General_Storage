create database QLDRL
use QLDRL
create table LOP
(
MaLop varchar(10) primary key not null,
TenLop nvarchar(25) 
)

create table SINHVIEN
(
MaSV varchar(10) primary key not null,
TenSV nvarchar(25),
NgaySinh date,
MaLop varchar(10),
constraint N1 foreign key (MaLop) references LOP(MaLop)
) 

create table DIEMRL
(
MaSV varchar(10),
HocKy nvarchar(10),
Nam char(10),
Diem float,

constraint N2 primary key (MaSV, HocKy, Nam)
constraint N3 foreign key (MaSV) references SINHVIEN(MaSV)
)
--insert
insert into LOP(MaLop, TenLop)
values
('M02',N'Công nghệ thông tin'),
('M03',N'Kỹ thuật phần mềm'),
('M01',N'Mạng máy tính'),
('M04',N'Thiết kế đồ họa'),
('M05',N'Quản trị kinh doanh')

insert into SINHVIEN(MaSV, TenSV, NgaySinh, MaLop)
values
('SV01',N'Hà Đức','09/11/2001', 'M02'),
('SV02',N'Kim Ngân','09/10/2001','MO1'),
('SV03',N'Bảo Vy','01/05/2002','N03'),
('SV04',N'Gia Hân','07/12/2002','N05'),
('SV05',N'Hoài An','01/09/2000','N04')

insert into DIEMRL(MaSV, HocKy, Nam, Diem)
values
('SV01',N'Học Kỳ 1','2021','9'),
('SV01',N'Học Kỳ 2','2021','8'),
('SV02',N'Học Kỳ 1','2021','8'),
('SV02',N'Học Kỳ 2','2021','5'),
('SV03',N'Học Kỳ 1','2021','6'),
('SV03',N'Học Kỳ 2','2021','7'),
('SV04',N'Học Kỳ 1','2021','6'),
('SV04',N'Học Kỳ 2','2021','9'),
('SV05',N'Học Kỳ 1','2021','8'),
('SV05',N'Học Kỳ 2','2021','7')

--2/ Tạo thủ tục có tham số vào @Masv để đưa ra thông tin về điểm rèn luyện của sinh viên trên.
create proc spDRLSV
@MaSV varchar(10)
as
select DIEMRL.*
from DIEMRL, SINHVIEN
where SINHVIEN.MaSV = DIEMRL.MaSV and SINHVIEN.MaSV = @MaSV
exec spDRLSV 'SV02'

--3/ Tạo thủ tục có tham số vào @Malop, @Nam để đưa ra thông tin về điểm rèn luyện của lớp trên vào năm học trên.
create proc spDRLL
@Malop varchar(10),
@Nam char(10)
as
select LOP.MaLop, LOP.TenLop, SINHVIEN.MaSV, SINHVIEN.TenSV, DIEMRL.HocKy, DIEMRL.Diem
from LOP, SINHVIEN, DIEMRL
where LOP.MaLop = SINHVIEN.MaLop
and SINHVIEN.MaSV = DIEMRL.MaSV
and LOP.MaLop = @MaLop
and DIEMRL.Nam = @Nam
exec spDRLL 'M02', '2021'

--4/ Tạo thủ tục có tham số vào @Tenlop để đưa ra thông tin về điểm rèn luyện của lớp trên.
create proc spTTDRLL
@TenLop nvarchar(25)
as
select LOP.MaLop, SINHVIEN.MaSV, SINHVIEN.TenSV, DIEMRL.HocKy, DIEMRL.Diem
from LOP, SINHVIEN, DIEMRL
where LOP.MaLop = SINHVIEN.MaLop
and SINHVIEN.MaSV = DIEMRL.MaSV
and LOP.TenLop = @TenLop
exec spTTDRLL N'Công nghệ thông tin'































