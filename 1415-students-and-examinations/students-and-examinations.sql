# Write your MySQL query statement below
With StudentData as
(Select student_id,student_name,subject_name
from Students ss cross join Subjects s
order by student_id )

Select st.student_id,st.student_name,st.subject_name,count(e.subject_name) as attended_exams
from StudentData st Left join Examinations e on st.student_id=e.student_id and st.subject_name=e.subject_name
group by st.student_id,st.subject_name
order by st.student_id;
