use QLDIEMTHI
--3/ Sử dụng kiểu dữ liệu Cursor để in ra màn hình danh sách điểm rèn luyện của năm học 2015-20016.
declare DSSV 
cursor for
	select SINHVIEN.*,DIEM.DIEMTHI
	from SINHVIEN, DIEM
	where SINHVIEN.MaSV=DIEM.MaSV
open DSSV
declare @MaSV char(10), @TenSV nvarchar(20), @NgaySinh date, @GioiTinh nvarchar(10), @QueQuan nvarchar(40), @DIEMTHI float
fetch next from DSSV
into @MaSV, @TenSV, @NgaySinh, @GioiTinh, @QueQuan, @DIEMTHI
while @@FETCH_STATUS=0
	begin
	print @MaSV+'   '+@TenSV+'   '+convert (nvarchar(20),@NgaySinh)+'   '+@GioiTinh+'   '+@QueQuan+'   '+convert (nvarchar(10),@DIEMTHI)
	fetch next from DSSV
	into @MaSV, @TenSV, @NgaySinh, @GioiTinh, @QueQuan, @DIEMTHI
	end
close DSSV
deallocate DSSV

--4/ Dùng kiểu dữ liệu CURSOR để đưa ra màn hình danh sách các sinh viên có điểm thi cao nhất của các môn học.
declare DSSV1
cursor for
	select SINHVIEN.MaSV,SINHVIEN.TenSV,MONHOC.TenM,DIEM.DIEMTHI
	from SINHVIEN,MONHOC,DIEM
	where SINHVIEN.MaSV in (select MaSV from DIEM where DIEMTHI in(select max(DIEMTHI) from DIEM)) and SINHVIEN.MaSV=DIEM.MaSV and MONHOC.MaM=DIEM.MaM
open DSSV1
declare @MSV char(10), @Ten nvarchar(20),@TenM nvarchar(30),@die float
fetch next from DSSV1
into @MSV, @Ten,@TenM,@Die
print'MaSV         Tensv   MonHoc     Diem'
while @@FETCH_STATUS=0
	begin
	print @MSV+'   '+@Ten+'     '+@TenM+'           '+convert(nvarchar(10),@die)
	fetch next from DSSV1
	into @MSV, @Ten,@TenM,@die
	end
close DSSV1
deallocate DSSV1

--5/ Dùng kiểu dữ liệu CURSOR để tính điểm trung bình của các sinh viên.
declare c5
cursor for
	select SINHVIEN.MaSV,SINHVIEN.TenSV,AVG(DIEMTHI) as dtb
	from SINHVIEN,DIEM
	where SINHVIEN.MaSV in (select MaSV from DIEM) and SINHVIEN.MaSV=DIEM.MaSV 
open c5
declare @MS char(10), @Te nvarchar(20), @dtb float
into @MS,@Te,@dtb
print'MaSV         Tensv     Diem'
while @@FETCH_STATUS=0
	begin
	print @MS+'   '+@Te+'     '+convert(nvarchar(10),@dtb)
	fetch next from c5
	into @MS, @Te,@dtb
	end
close c5
deallocate c5

--