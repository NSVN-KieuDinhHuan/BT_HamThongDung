
USE QuanLySinhVien;
# Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select MAX(Credit) as maxcredit
from subject;
select SubName ,Credit from subject s
where Credit=(select MAX(Credit) as maxcredit
              from subject
    )
group by SubName;
# Hiển thị các thông tin môn học có điểm thi lớn nhất.
select  s.SubName,m.Mark as 'diem lon nhat' from subject s join  mark m on s.SubId = m.SubId
where Mark=(select MAX(Mark) as maxcredit
from mark
)
group by SubName;

select AVG(m.Mark)as 'Diem trung binh',StudentName from students join mark m on students.StudentId = m.StudentId
group by StudentName order by AVG(m.Mark) DESC ;