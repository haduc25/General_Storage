use QLThuVien

create table SACH
(
MaSach varchar(10) primary key not null,
TenSach nvarchar(25) not null,
NXB nvarchar(25) not null,
NamXB smalldatetime not null,
TenTG nvarchar(25) not null,
SL int not null
)

create table DOCGIA
(
MaDG varchar(10) primary key not null,
TenDG nvarchar(25) not null,
DonVi nvarchar(25)
)

create table MUON_TRA
(
MaDG varchar(10),
MaSach varchar(10),
NgayMuon smalldatetime,
SL int not null,
NgayHenTra smalldatetime not null,
NgayTra smalldatetime not null

constraint n1 primary key (MaDG, MaSach)
constraint n2 foreign key (MaDG) references	DOCGIA(MaDG),
constraint n3 foreign key (MaSach) references SACH(MaSach)
)

--2/ Tạo thủ tục có tham số là @MaDG để đưa ra danh mục sách mà độc giả trên đang mượn.
alter proc spDSDG
@MaDG varchar(10)= MaDG
as
select MUON_TRA.MaDG,SACH.*
from MUON_TRA,SACH
where SACH.MaSach = MUON_TRA.MaSach

exec dbo.spDSDG @MaDG=''

--3/ Tạo thủ tục có tham số là @NgayMuon để đưa ra danh sách các độc giả đã mượn sách vào ngày trên.

create proc spDSDGMuonSach
@NgayMuon smalldatetime
as
select DOCGIA.*
from DOCGIA, MUON_TRA
where DOCGIA.MaDG =MUON_TRA.MaDG
and NgayMuon = @NgayMuon
exec dbo.spDSDGMuonSach '2019-05-09'

--4/ Tạo thủ tục để đưa ra danh sách các độc giả có hẹn trả sách trong ngày hôm nay.
alter proc spDSDGTraHomNay
@NgayTra smalldatetime
as
select DOCGIA.*
from DOCGIA, MUON_TRA
where DOCGIA.MaDG=MUON_TRA.MaDG
and MUON_TRA.NgayHenTra = @NgayTra
 
exec dbo.spDSDGTraHomNay '2021-09-27'

--5/ Tạo thủ tục có tham số là @MaSach để đưa ra thông tin về quyển sách trên. Sử dụng thủ tục trên để đưa ra thông tin về cuốn sách có MaSach là ‘MS05’.
create proc spTTSACH
@MaSach varchar(10)
as
select SACH.*
from SACH
where SACH.MaSach = @MaSach

exec spTTSACH 'MS05'

--6/ Tạo thủ tục để đưa ra thông tin về các cuốn sách chưa từng được mượn.
alter proc spTTSachChuaDuocMuon
as
select SACH.*
from SACH, MUON_TRA
where SACH.MaSach=MUON_TRA.MaSach and SACH.MaSach not in (select MaSach from SACH)

exec spTTSachChuaDuocMuon


--7/ Tạo thủ tục có tham số là @NXB và @NGAYM để tổng hợp thông tin về các cuốn sách của Nhà xuất bản đó đã được cho mượn vào ngày nêu trên.
alter proc spNXBMuon
@NXB nvarchar(25), 
@NgayM smalldatetime
as
if not exists (select NgayMuon from MUON_TRA where NgayMuon=@NgayM)
begin 
print 'xin loi khong co sach nao duoc muon vao ngay tren'
return 
end
select SACH.*
from SACH, MUON_TRA
where SACH.MaSach=MUON_TRA.MaSach and SACH.MaSach in (select MaSach from MUON_TRA) and NXB=@NXB and NgayMuon=@NgayM

exec spNXBMuon N'Nam Cao','2015-05-19'


--8/ Tạo thủ tục có tham số là @NXB và @DONVI để tổng hợp thông tin về độc giả thuộc đơn vị nêu trên đã mượn sách của Nhà xuất bản trên.
create proc TTDOCGIA
@NXB nvarchar(25),
@DonVi nvarchar(25)
as
if not exists (select DonVi,NXB from DOCGIA,SACH,MUON_TRA where DOCGIA.MaDG=MUON_TRA.MaDG and SACH.MaSach=MUON_TRA.MaSach and DonVi=@DonVi and NXB=@NXB)

begin
 print'khong co doc gia nao co ten don vi  la '+convert(char(10),@DonVi) + 'ten nha xuat ban la: ' + @NXB
 return
end
select DOCGIA.* 
from SACH,DOCGIA,MUON_TRA 
where SACH.MaSach=MUON_TRA.MaSach and DOCGIA.MaDG=MUON_TRA.MaDG and NXB=@NXB and DonVi=@DonVi

exec TTDOCGIA N'Kim Đồng','DV02'

--9/ Tạo thủ tục có tham số là @DONVI để đưa ra danh sách các độc giả thuộc đơn vị trên đã mượn sách của thư viện.
create proc DSDGMuonSach
@DonVi nvarchar(25)
as
select MUON_TRA.MaDG,DOCGIA.*
from MUON_TRA,DOCGIA
where DOCGIA.MaDG = MUON_TRA.MaDG
and DOCGIA.DonVi = @DonVi

exec DSDGMuonSach 'DV03'

--10/ Xóa thủ tục đã tạo ở ý 9.
drop proc DSDGMuonSach

