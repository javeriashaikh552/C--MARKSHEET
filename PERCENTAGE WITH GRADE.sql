create database schools;
use schools;

create table studentes_grade(
id int primary key,
[student_name]  varchar(100),
score int,
grade varchar
);

select * from studentes_grade;

insert into studentes_grade values(1,'ali',76,'');
insert into studentes_grade values(2,'BAKTH',77,'');
insert into studentes_grade values(3,'danish',93,'');
insert into studentes_grade values(4,'elsa',57,'');
insert into studentes_grade values(5,'fiaza',36,'');
insert into studentes_grade values(6,'kareem',64,'');
insert into studentes_grade values(7,'hifza',55,'');
insert into studentes_grade values(8,'joshan',45,'');
insert into studentes_grade values(9,'lara',60,'');
insert into studentes_grade values(10,'meryam',90,'');

SELECT [student_name] , grade,
CASE
when score >=94 Then 'A1'
when score >=90 Then 'A+'
when score >=87 Then 'A'
when score >=85 Then 'B+'
when score >=80 Then 'B'
when score >=77 Then 'B-'
when score >=73 Then 'C'
when score >=70 Then 'C+'
when score >=65 Then 'D+'
when score >=60 Then 'D'
ELSE 'F'
END AS grade
FROM studentes_grade;





select SCORE,
CASE
WHEN score>= 92 THEN 'A1'
WHEN score>= 90 THEN 'A+'
WHEN score>= 89 THEN 'A'
WHEN score>= 86 THEN 'A'
WHEN score>= 80 THEN 'B+'
WHEN score>= 76 THEN 'B'
WHEN score>= 70 THEN 'B'
WHEN score>= 60 THEN 'C'
WHEN score>= 50 THEN 'D'
ELSE 'F'
END AS grade, count(*) AS
NUMBER_OF_STUDENT 
FROM studentes_grade
GROUP BY score ORDER BY grade ASC;





select SCORE,
CASE
WHEN score>= 92 THEN 'A1'
WHEN score>= 90 THEN 'A+'
WHEN score>= 89 THEN 'A'
WHEN score>= 86 THEN 'A'
WHEN score>= 80 THEN 'B+'
WHEN score>= 76 THEN 'B'
WHEN score>= 70 THEN 'B'
WHEN score>= 60 THEN 'C'
WHEN score>= 50 THEN 'D'
ELSE 'F'
END AS grade, count(*) AS
NUMBER_OF_STUDENT 
FROM studentes_grade
GROUP BY score ORDER BY grade ASC;
