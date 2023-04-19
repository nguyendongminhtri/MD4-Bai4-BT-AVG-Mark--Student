SELECT * FROM quanlysinhvien.subject;
-- Hiển thị tất cả các môn học có credit lớn nhất
select SubName, max(Credit) as maxCredit from subject;
select SubName, max(mark.Mark) as maxMark from subject join mark on subject.SubId = mark.SubId;

-- Hiển thị điểm trung bình của mỗi sinh viên và sắp xếp theo thứ tự giảm dần
SELECT s.StudentId, s.StudentName, AVG(r.mark) AS avg_mark
  FROM student s
  INNER JOIN mark r ON s.StudentId = r.StudentId
  GROUP BY r.StudentId
order by avg_mark asc;