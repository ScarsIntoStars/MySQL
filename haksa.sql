create table professors(
	pcode char(3) not null primary key,
    pname varchar(15) not null,
    dept varchar(30),
    hiredate date,
    title varchar(15),
    salary int default 0
);

DESC PROFESSORS;


create table students(
	scode char(8) not null,
	sname varchar(15) not null,
    dept varchar(30),
    year int default 1,
    birthday date,
    advisor char(3),
    primary key(scode),
    foreign key(advisor)
    references professors(pcode) /* PCODE를 참조한다 */
);

DESC STUDENTS;


create table courses(
	lcode char(4) not null,
    lname varchar(50) not null,
    hours int,
    room char(3),
    instructor char(3),
    capacity int default 0,
    persons int default 0,
    primary key(lcode),
	foreign key(instructor) references professors(pcode)
);

DESC COURSES;


create table enrollments(
	lcode char(4) not null,
    scode char(8) not null,
    edate datetime default now(),
    grade int default 0,
    primary key(lcode, scode),
    foreign key(lcode) references courses(lcode),
    foreign key(scode) references students(scode)
);

desc enrollments;


insert into professors(pcode,pname,dept,hiredate,title,salary) values('221','이병렬','전산','75/04/03','정교수',3000000);
insert into professors(pcode,pname,dept,hiredate,title,salary) values('228','이재광','전산','91/09/19','부교수',2500000);
insert into professors(pcode,pname,dept,hiredate,title,salary) values('311','강승일','전자','94/06/09','부교수',2300000);
insert into professors(pcode,pname,dept,hiredate,title,salary) values('509','오문환','건축','92/10/14','조교수',2000000);
insert into professors(pcode,pname,dept,hiredate,title,salary) values('510','아인슈타인','역학','22/03/07','정교수',8000000);
insert into professors(pcode,pname,dept,hiredate,title,salary) values('511','윈스턴 처칠','정치','71/10/11','조교수',6000000);
insert into professors(pcode,pname,dept,hiredate,title,salary) values('512','링컨','정치','54/05/11','정교수',6000000);
insert into professors(pcode,pname,dept,hiredate,title,salary) values('513','노태문','전기','60/01/14','정교수',4000000);
insert into professors(pcode,pname,dept,hiredate,title,salary) values('504','클라우제비츠','군사학','94/11/05','정교수',5000000);
insert into professors(pcode,pname,dept,hiredate,title,salary) values('505','스티브잡스','전자','80/05/01','정교수',2000000);
SELECT * FROM professors;


insert into students(scode,sname,dept,year,birthday,advisor) values('92414029','서연우','전산',3,'73/10/06','228');
insert into students(scode,sname,dept,year,birthday,advisor) values('92414033','김창덕','전산',4,'73/10/26','221');
insert into students(scode,sname,dept,year,birthday,advisor) values('92514009','이지행','전자',4,'73/11/16','311');
insert into students(scode,sname,dept,year,birthday,advisor) values('92514023','김형명','전자',4,'73/08/29','311');
insert into students(scode,sname,dept,year,birthday,advisor) values('92454018','이원구','건축',3,'74/09/30','509');
insert into students(scode,sname,dept,year,birthday,advisor) values('95454003','이재영','건축',4,'76/02/06','509');
insert into students(scode,sname,dept,year,birthday,advisor) values('95414058','박혜경','전산',4,'76/03/12','221');
insert into students(scode,sname,dept,year,birthday,advisor) values('96414404','김수정','전산',3,'77/12/22','228');

SELECT * FROM STUDENTS;


insert into courses(lcode,lname,hours,room,instructor,capacity,persons) values('C301','파일처리론', 3 ,'506','221',100,80);
insert into courses(lcode,lname,hours,room,instructor,capacity,persons) values('C401','데이터베이스',3,'414','221',80,80);
insert into courses(lcode,lname,hours,room,instructor,capacity,persons) values('C421','알고리즘',3,'510','228',80,72);
insert into courses(lcode,lname,hours,room,instructor,capacity,persons) values('C312','자료구조',2,'510','228',100,60);
insert into courses(lcode,lname,hours,room,instructor,capacity,persons) values('E221','논리회로',3,'304','311',100,80);
insert into courses(lcode,lname,hours,room,instructor,capacity,persons) values('A109','한국의건축문화',2,'101','509',120,36);

SELECT * FROM courses;


insert into enrollments(lcode, scode, edate, grade) values('C401','92414033','98/03/02',85);
insert into enrollments(lcode, scode, edate, grade) values('C301','92414033','98/03/02',80);
insert into enrollments(lcode, scode, edate, grade) values('C421','92414033','98/03/02', 0);
insert into enrollments(lcode, scode, edate, grade) values('C401','95414058','98/03/03',90);
insert into enrollments(lcode, scode, edate, grade) values('C301','95414058','98/03/03',80);
insert into enrollments(lcode, scode, edate, grade) values('C312','95414058','98/03/03',80);
insert into enrollments(lcode, scode, edate, grade) values('C401','92514023','98/03/03',70);
insert into enrollments(lcode, scode, edate, grade) values('C301','92514023','98/03/03',70);
insert into enrollments(lcode, scode, edate, grade) values('C421','92514023','98/03/03',70);
insert into enrollments(lcode, scode, edate, grade) values('C301','92414029','98/03/03',90);
insert into enrollments(lcode, scode, edate, grade) values('C421','92414029','98/03/03',0);
insert into enrollments(lcode, scode, edate, grade) values('C312','92414029','98/03/03',70);
insert into enrollments(lcode, scode, edate, grade) values('E221','92414029','98/03/03',75);
insert into enrollments(lcode, scode, edate, grade) values('A109','92414029','98/03/03',90);
insert into enrollments(lcode, scode, edate, grade) values('C301','92514009','98/03/03',70);
insert into enrollments(lcode, scode, edate, grade) values('C401','92514009','98/03/03',85);
insert into enrollments(lcode, scode, edate, grade) values('E221','92514009','98/03/03',85);
insert into enrollments(lcode, scode, edate, grade) values('C301','96414404','98/03/04',75);
insert into enrollments(lcode, scode, edate, grade) values('C401','96414404','98/03/04',75);
insert into enrollments(lcode, scode, edate, grade) values('C421','96414404','98/03/04',75);
insert into enrollments(lcode, scode, edate, grade) values('C312','92454018','98/03/04',90);
insert into enrollments(lcode, scode, edate, grade) values('E221','92454018','98/03/04',90);
insert into enrollments(lcode, scode, edate, grade) values('A109','95454003','98/03/05',85);
insert into enrollments(lcode, scode, edate, grade) values('E221','95454003','98/03/05',85);

SELECT 
    *
FROM
    enrollments;

SELECT COUNT(*) FROM ENROLLMENTS;



SELECT * FROM professors
WHERE PNAME LIKE '%%' OR DEPT LIKE '%%'
LIMIT 0,5;

SELECT * FROM STUDENTS
WHERE SNAME LIKE '%%' OR DEPT LIKE '%%'
LIMIT 0,5;



SELECT * FROM STUDENTS;

SELECT S.*, P.PNAME
FROM STUDENTS S, PROFESSORS P
WHERE S.ADVISOR=P.PCODE;

SELECT S.*, P.PNAME, P.DEPT
FROM STUDENTS S, PROFESSORS P
WHERE S.ADVISOR=P.PCODE;

CREATE VIEW VIEW_STU AS
SELECT S.*, P.PNAME, P.DEPT PDEPT
FROM STUDENTS S, PROFESSORS P
WHERE S.ADVISOR=P.PCODE;

SELECT * FROM VIEW_STU;

SELECT * FROM VIEW_STU WHERE PNAME='이병렬';


SELECT C.*, PNAME
FROM COURSES C, PROFESSORS P
WHERE C.INSTRUCTOR=P.PCODE;

CREATE VIEW VIEW_COU AS
SELECT C.*, PNAME
FROM COURSES C, PROFESSORS P
WHERE C.INSTRUCTOR=P.PCODE;

SELECT * FROM VIEW_COU;


SELECT * FROM ENROLLMENTS;

INSERT INTO professors(PCODE,PNAME,DEPT,TITLE,SALARY,HIREDATE)
VALUES(SELECT MAX(PCODE)+1 FROM professors, '홍길동', '컴정', '정교수', 0, '2023-08-02');

SELECT MAX(PCODE)+1 FROM professors;


SELECT MAX(SCODE)+1 NCODE FROM STUDENTS;