select * from Duplicate_StudentMarks; -- before updation


update Duplicate_StudentMarks 
set Marks = case
	when StudentID in (1,2,3) then 80
	when StudentID = 5 then Marks - 4
	when StudentID = 6 then Marks - 13
	end
where StudentID in (1,2,3,5,6);

select * from Duplicate_StudentMarks; -- after updation
