SELECT enrolled.student_id, enrolled.course_code, building from 
enrolled join course_dept_key on enrolled.course_code =
course_dept_key.course_code join department on
course_dept_key.department_code = department.department_code

SELECT building, count(*) as student_numbers from enrolled join
course_dept_key on enrolled.course_code =
course_dept_key.course_code join department on
course_dept_key.department_code - department.department_code group
by building

SELECT concat(staff.firstname, '', staff.lastname) as lecturerName,
count(*) as numberofmodules from staff join staff_modules on 
staff.staff_id = staff_modules.staff_id group by staff.staff_id

SELECT concat(staff.firstname, ' ', staff.lastname) as lecturername,
count(*) as numberofmodules from staff join staff_modules on
staff.staff_id = staff_modules.staff_id where
staff_modules.module_code in(select module_code from enrolled join
course_module_key on enrolled.course_code =
course_module_key.course_code) group by staff.staff_id

CREATE TRIGGER `before_student_delete` BEFORE DELETE ON `students`
 FOR EACH ROW BEGIN
    INSERT INTO student_deletion(student_ID, course_code, department_code)
    select students.student_id, enrolled.course_code, department_code from students join enrolled on students.student_id = enrolled.student_id && students.student_id = OLD.student_id join course_dept_key on enrolled.course_code = course_dept_key.course_code;
END