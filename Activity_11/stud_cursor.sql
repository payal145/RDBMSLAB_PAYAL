DELIMITER //
CREATE PROCEDURE stud_cursor()
BEGIN
DECLARE tot int;
DECLARE average int;
DECLARE s_id INT;
DECLARE s_name varchar(20);
DECLARE s_rollno varchar(20);
DECLARE s_age INT;
DECLARE s_city varchar(20);
DECLARE s_sub1 INT;
DECLARE s_sub2 INT;
DECLARE s_sub3 INT;
DECLARE C CURSOR FOR select * from student;
begin
open c;
SELECT 'Id Name Rollno AGE city Sub1 Sub2 Sub3 Total Average grade';
loop
FETCH FROM c INTO s_id,s_name,s_rollno,s_age,s_city,s_sub1,s_sub2,s_sub3;
tot=s_sub1+s_sub2+s_sub3;
average = floor(tot/3);
if(c%notfound)then
exit;
else
if(s.sub1_mark<35 or s.sub2_mark<35 or sub3_mark<35)then
dbms_output_line(s.id||''||s.first_name||''||s.admission_no||''s.age||''||s.city||''||s.sub1_mark||''||s.sub2_mark||''||s.sub3_mark||''||tot||''||average||''||'F');
elseif(average>=90 and average<=100)then
dbms_output_line(s.id||''||s.first_name||''||s.admission_no||''s.age||''||s.city||''||s.sub1_mark||''||s.sub2_mark||''||s.sub3_mark||''||tot||''||average||''||'Excellent');
elseif(average>=80 and average<=90)then
dbms_output_line(s.id||''||s.first_name||''||s.admission_no||''s.age||''||s.city||''||s.sub1_mark||''||s.sub2_mark||''||s.sub3_mark||''||tot||''||average||''||'A+');
elseif(average>=70 and average<=80)then
dbms_output_line(s.id||''||s.first_name||''||s.admission_no||''s.age||''||s.city||''||s.sub1_mark||''||s.sub2_mark||''||s.sub3_mark||''||tot||''||average||''||'B');
elseif(average>=60 and average <=70)then
dbms_output_line(s.id||''||s.first_name||''||s.admission_no||''s.age||''||s.city||''||s.sub1_mark||''||s.sub2_mark||''||s.sub3_mark||''||tot||''||average||''||'C');
else
dbms_output_line(s.id||''||s.first_name||''||s.admission_no||''s.age||''||s.city||''||s.sub1_mark||''||s.sub2_mark||''||s.sub3_mark||''||tot||''||average||''||'D');
endif;
endif;
end loop;
close c;
end;
END;
//
Delimiter ;