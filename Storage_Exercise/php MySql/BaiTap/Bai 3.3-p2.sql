create database QLNV
use QLNV

create table NhanVien
(
MaNV nvarchar(10) primary key not null,
TenNV nvarchar(20),
DiaChi nvarchar(20),
MaP nvarchar(10),
Luong int,
constraint k1 foreign key(MaP) references Phong(MaP)
)

create table Phong
 (
MaP nvarchar(10) primary key,
TenP nvarchar(20),
DiaChiP nvarchar(20),
SDT int,

)

create table NgoaiNgu
(
MaNN nvarchar(10) primary key,
TenNN nvarchar(20)
)

create table Trinhdo_NN
(
MaNV nvarchar(10),
MaNN nvarchar(10),
TrinhDo nvarchar(20),
constraint kc primary key (MaNV,MaNN,TrinhDo),
constraint k2 foreign key (MaNV) references NhanVien(MaNV),
constraint k3 foreign key (MaNN) references NgoaiNgu(MaNN)
)

insert into NhanVien
values
('N01',N'Hà Đức',N'Bắc Kạn','P01',5000000),
('N02',N'Quang Hải',N'Quảng Bình','P01',9000000),
('N03',N'Trần Quỳnh',N'Thái Nguyên','P02',7000000),
('N04',N'Nguyễn Dương',N'Hà Nội','P02',5000000),
('N05',N'Trần Lương',N'Bắc Giang','P03',5000000),
('N06',N'Quỳnh Trang',N'Lạng Sơn','P04',9000000),
('N07',N'Huy Hoàng',N'Cao Bằng','P05',1000000)
select *from NhanVien

insert into Phong
values
('P01',N'Phòng 1',N'Tầng 1',0123451),
('P02',N'Phòng 2',N'Tầng 2',0123452),
('P03',N'Phòng 3',N'Tầng 3',0123453),
('P04',N'Phòng 4',N'Tầng 4',0123454),
('P05',N'Phòng 5',N'Tầng 5',0123455)
select * from Phong

insert into NgoaiNgu
values
('T1',N'Tiếng Hàn'),
('T2',N'Tiếng Ấn Độ'),
('T3',N'Tiếng Trung'),
('T4',N'Tiếng Thái'),
('T5',N'Tiếng Hàn')
select * from NgoaiNgu

insert into Trinhdo_NN
values
('N01','T1','A1'),
('N02','T2','A2'),
('N03','T3','B1'),
('N04','T4','B2'),
('N05','T5','C1')
select * from Trinhdo_NN

--2/Tạo thủ tục có tham số vào @TenNN và @TrinhDo để đưa ra danh các nhân viên biết ngoại ngữ và trình độ trên.
create proc DSNV
@TenNN nvarchar(20),
@TrinhDo char(10)
as
select NhanVien.*
from NhanVien,NgoaiNgu,Trinhdo_NN
where
NhanVien.MaNV=Trinhdo_NN.MaNV and
Trinhdo_NN.MaNN=NgoaiNgu.MaNN and
NgoaiNgu.TenNN=@TenNN and
Trinhdo_NN.TrinhDo=@TrinhDo
exec DSNV N'Tiếng Ấn Độ','A1'

--3/Tạo thủ tục có tham số vào @TenP để đưa ra tổng số nhân viên hiện có trong phòng này.
create proc TSNV
@TenP nvarchar (20)
as
declare @tong int
select @tong=count(NhanVien.MaNV) 
from NhanVien,Phong
where
Phong.TenP=@TenP and
NhanVien.MaP=Phong.MaP
Print N'Tổng nhân viên là '+convert(Char(10),@tong)
exec TSNV N'Phòng 1'

--4/Tạo thủ tục có tham số vào là @TenNN, @TenP và @TrinhDo để đưa ra danh các
--nhân viên ở phòng này biết ngoại ngữ và trình độ ứng với các tham biến đã cho
create proc DSNV1
@TenNN nvarchar(10),@TenP nvarchar(20),@TrinhDo char(10)
AS
select NhanVien.*,Phong.TenP,NgoaiNgu.TenNN,Trinhdo_NN.TrinhDo
from NhanVien,Phong,TrinhDo_NN,NgoaiNgu
where NhanVien.MaNV=TrinhDo_NN.MaNV AND NhanVien.MaP =Phong.MaP AND NgoaiNgu.MaNN=TrinhDo_NN.MaNN AND NgoaiNgu.TenNN=@TenNN
AND Phong.TenP=@TenP AND TrinhDo_NN.TrinhDo=@TrinhDo
exec DSNV1 N'Tiếng Anh',N'Phòng 2','A1'

--5/ Tạo thủ tục có tham số vào @TenP để đưa ra danh các nhân viên có lương cao nhất
--của phòng này.
create proc DSNV3
@TenP nvarchar(10)
as
select NhanVien.*
from NhanVien,Phong where Phong.TenP=@TenP and NhanVien.MaP=Phong.MaP
declare @maxluong int
select @maxluong=MAX(NhanVien.Luong) 
from NhanVien,Phong
where
NhanVien.MaP=Phong.MaP and
Phong.TenP=@TenP
Print N'nhân viên lương cao nhất ' +@TenP +' là: ' +convert(Char(20),@maxluong)
exec DSNV3 N'Phòng 1'