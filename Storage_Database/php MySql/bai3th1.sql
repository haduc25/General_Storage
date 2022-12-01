create database QLSV_KTS3
use QLSV_KTS3
create table Lop
(malop nvarchar(13) primary key,
tenlop nvarchar (13) not null)
create  table Tinh
(matinh nvarchar(13) primary key,
tentinh nvarchar(13) not null)
create table SinhVien
( masv nvarchar(13) primary key,
hoten nvarchar(20) not null,
ngaysinh date not null ,
gioitinh char(3) not null,
malop nvarchar(13) not null,
matinh nvarchar(13) not null,
DTB float not null,
constraint n1 foreign key (malop) references Lop(malop),
constraint n2 foreign key (matinh) references Tinh(matinh))

insert into Lop
values
(N'l01','CNTTK18A'),
(N'l02','CNTTK18D'),
(N'l03','CNTTK18G'),
(N'l04','CNTTK18H'),
(N'l05','CNTTK18D')
select *from Lop

INSERT INTO TINH
VALUES
(N't01','Thai Nguyen'),
(N't02','Bắc Giang'),
(N't03','Hà Nội'),
(N't04','Bac Can'),
(N't05','Bac Lieu')
select *from Tinh

insert into SinhVien
values
('sv01',N'Nguyễn thị My','2000/2/3','nu','l01','t01','5.6'),
('sv02',N'Bàng hoài Ngọc','2001/3/4','nu','l02','t02','7.8'),
('sv03',N'Dương thị thảo','2000/5/6','nu','l03','t03','8.9'),
('sv04',N'Hoàng văn trung','1994/6/7','nam','l04','t04','9.7'),
('sv05',N'Hoàng văn tuân','2000/8/9','nam','l05','t05','9.5')
select *from SinhVien
--2.2-Đưa ra thông tin về các lớp học không có sinh viên nào ở Hà Nội
select * from SinhVien
where matinh not in( select matinh from Tinh where tentinh='Hà Nội')

--3.1-tạo View để tổng hợp thông tin về các sinh viên có điểm trung bình cao nhất.
create view sinhvienmax
as
select *from SinhVien
where DTB>(select min(DTB) from SinhVien)
select *from sinhvienmax

--3.2-Tạo View để tổng hợp thông tin về các sinh viên có điểm trung bình cao nhất theo từng lớp học.
create view sinhvientheolop
as
select malop,hoten,DTB from SinhVien
where  DTB>(select min(DTB) from SinhVien)
group by malop,hoten,DTB
select *from sinhvientheolop

--4.1-Tạo thủ tục có tham số là @Tenlop để xoá thông tin về những sinh viên học ở lớp trên.
create proc SV
@TenL nvarchar(10)
as
delete SinhVien
from SinhVien, Lop
where SinhVien.malop = Lop.malop
and tenlop = @TenL
exec SV 'CNTTK18A'
select * from SinhVien

--4.2-Tạo thủ tục lưu trữ để đưa ra sĩ số sinh viên của lớp học có mã lớp là tham số
--đầu vào @Malop, sĩ số sinh viên được trả lại người dùng thông qua tham số đầura @SS
create proc SISO
@Malop nvarchar(10)
as
select Lop.malop, tenlop, A.siso
from 
(select malop, count(masv) as siso from SinhVien group by malop)
as A, Lop where A.malop = Lop.malop
exec SISO 'CNTTK18A'

--4.3-Tạo thủ tục lưu trữ để xóa thông tin về các tỉnh không có sinh viên
create proc kcoSV
as
delete SinhVien
from SinhVien
where matinh not in (select matinh from Tinh where SinhVien.matinh=Tinh.matinh)
exec kcoSV
--4.4-Tạo thủ tục lưu trữ để nhập dữ liệu cho bảng LOP
create proc nhapLop
@malop nvarchar(13) ,
@tenlop nvarchar (13)
as
if @tenlop is null
	begin
		print N'không được để trống tên lớp'
		return;
	end			
insert into Lop
values(@malop,@tenlop)

exec nhapLop N'l07','CNTTK10A'

--5.1-Tạo TRIGGER để kiểm tra dữ liệu khi nhập vào bảng sinh viên: nếu điểm trung bình nhập vào <0 thì đưa ra màn hình thông báo 
--lỗi và bản nghi này không được phép nhập vào bảng dữ liệu, ngược lại đưa ra thông báo bảnghi đã nhập thành công.
create trigger KTDL on SinhVien
after insert as
if exists (select DTB from inserted where DTB<0)
begin
	print N'lỗi. Bản ghi này không được phép nhập vào bảng dữ liệu'
	rollback tran
end
else
	print N'bản ghi đã nhập thành công'
insert into SinhVien values('sv08',N'Nguyễn thị Mai','2000/2/3','nu','l07','t01','7')

--5.2-Tạo Trigger để kiểm tra việc thay đổi dữ liệu của bảng sinh viên. Đảm bảo rằng trường DTB là không thay đổi.

--5.3-Tạo Trigger để đưa ra thông báo dữ liệu đã thay đổi khi người dùng thực hiện
--thay đổi dữ liệu cho bảng Tinh thì in ra thông báo đã thay đổi dữ liệu

--5.4-Tạo Trigger để kiểm tra việc xóa dữ liệu cho bảng SINHVIEN, khi người dùng thực hiện lệnh xóa thì
--in ra những dòng dữ liệu đã được xóa trong bảng.
create trigger KTDL1 on SinhVien
after delete 
as
declare @masv char(10) = (select masv from deleted)
begin
	print N'lỗi. Bản ghi này không được phép xóa'
	rollback tran
end
else
	print N'bản ghi đã xóa thành công'

delete from SinhVien
where masv='sv05'

--6.1-Sử dụng kiểu dữ liệu CURSOR để đưa ra màn hình danh sách sinh viên học ở lớp có tên là ‘CNTT K10A’
declare DSSV
cursor for
	select SinhVien.*
	from SinhVien
	where malop in ( select malop from Lop where tenlop='CNTTK10A')
open DSSV
declare @masv char(13), @hoten nvarchar(20), @ngaysinh date, @gioitinh nvarchar(3), @malop nvarchar(13),@matinh nvarchar(13), @DTB float
fetch next from DSSV
into @masv, @hoten, @ngaysinh, @gioitinh, @malop, @matinh,@DTB
	print N'***DANH SÁCH SINH VIÊN LỚP CNTTK10A***'
	print N'mãSV            Họ Tên            Ngày Sinh    Giới Tính    mã Lớp    mã Tỉnh    DTB'
while @@FETCH_STATUS=0
	begin
	print @masv+'   '+@hoten+'    '+convert (nvarchar(20),@ngaysinh)+'     '+@gioitinh+'         '+@malop+'      '+@matinh+'        '+convert (nvarchar(10),@DTB)
	fetch next from DSSV
	into @masv, @hoten, @ngaysinh, @gioitinh, @malop, @matinh,@DTB
	end
close DSSV
deallocate DSSV

--6.2-Sử dụng kiểu dữ liệu Cursor để đưa ra màn hình danh sách những lớp không có sinh viên
declare DSSV1
cursor for
	select Lop.*
	from Lop
	where malop not in ( select malop from SinhVien where SinhVien.malop=Lop.malop)
open DSSV1
declare @mal nvarchar(13),@tenlop nvarchar(13)
fetch next from DSSV1
into @mal,@tenlop
	print N'***DANH SÁCH LỚP KHÔNG CÓ SINH VIÊN***'
	print N'Mã Lớp     Tên Lớp'
while @@FETCH_STATUS=0
	begin
	print @mal+'        '+@tenlop
	fetch next from DSSV1
	into @mal,@tenlop
	end
close DSSV1
deallocate DSSV1

--6.3-Sử dụng kiểu dữ liệu Cursor để đưa ra màn hình danh sách những sinh viên thuộc tỉnh Thái Nguyên
declare DSSV2
cursor for
	select SinhVien.*
	from SinhVien
	where matinh in ( select matinh from Tinh where tentinh='Thai Nguyen')
open DSSV2
declare @msv char(13), @ten nvarchar(20), @ns date, @gt nvarchar(3), @malo nvarchar(13),@mat nvarchar(13), @Diem float
fetch next from DSSV2
into @msv, @ten, @ns, @gt, @malo, @mat,@Diem
	print N'***DANH SÁCH SINH VIÊN THUỘC TỈNH THÁI NGUYÊN***'
	print N'mãSV            Họ Tên            Ngày Sinh    Giới Tính    mã Lớp    mã Tỉnh    DTB'
while @@FETCH_STATUS=0
	begin
	print @msv+'   '+@ten+'    '+convert (nvarchar(20),@ns)+'     '+@gt+'         '+@malo+'      '+@mat+'        '+convert (nvarchar(10),@Diem)
	fetch next from DSSV2
	into @msv, @ten, @ns, @gt, @malo, @mat,@Diem
	end
close DSSV2
deallocate DSSV2

--6.4-Sử dụng kiểu dữ liệu Cursor để đưa ra danh sách các tỉnh không có sinh viên.
INSERT INTO TINH
VALUES(N't06','Quảng Ninh')
------
declare DST
cursor for
	select Tinh.*
	from Tinh
	where matinh not in ( select matinh from SinhVien where SinhVien.matinh=Tinh.matinh)
open DST
declare @mati nvarchar(13),@tent nvarchar(13)
fetch next from DST
into @mati,@tent
	print N'***DANH SÁCH TỈNH KHÔNG CÓ SINH VIÊN***'
	print N'Mã Tỉnh     Tên Tỉnh'
while @@FETCH_STATUS=0
	begin
	print @mati+'        '+@tent
	fetch next from DST
	into @mati,@tent
	end
close DST
deallocate DST