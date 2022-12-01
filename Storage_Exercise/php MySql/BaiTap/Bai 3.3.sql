use QLSV

create table LOP
(
MaLop varchar(10) primary key not null,
TenLop nvarchar(25)
)

create table TINH
(
MaTinh varchar(10) primary key not null,
TenTinh nvarchar(25)
)

create table SINHVIEN
(
MaLop varchar(10),
MaTinh varchar(10),
MaSV varchar(10) not null,
HoTen nvarchar(25),
NgaySinh smalldatetime,
GioiTinh char(5),
DTB float

constraint n1 primary key (MaLop, MaTinh)
constraint n2 foreign key (MaLop) references LOP(MaLop),
constraint n3 foreign key (MaTinh) references TINH(MaTinh)
)

--2/ Tạo thủ tục để đưa ra sĩ số sinh viên cho từng lớp học (Danh sách đưa ra phải có các thuộc tính sau: MaLop, TenLop, SiSo).
create proc SP_siso 
as
select LOP.MaLop, TenLop, A.siso
from (select MaLop, count(MaSV) as siso from SINHVIEN group by MaLop)
as A, LOP where A.MaLop = LOP.MaLop

exec SP_siso ''

--3/ Tạo thủ tục có tham số là @Tenlop để xoá thông tin về những sinh viên học ở lớp trên.
create proc SP_SINHVIEN
@TenLop nvarchar(10)
as
select SINHVIEN.*
from SINHVIEN, LOP
where SINHVIEN.MaLop = LOP.MaLop
and TenLop = @TenLop

exec SP_SINHVIEN 'CNTT'

-- Xóa thủ tục lưu trữ ở câu 3
drop proc SP_SINHVIEN 