use webdb;

-- SQL문은 대소문자 가리지 않음

create table products(
	code int auto_increment primary key,
    name varchar(100) not null,
    price int default 0,
    rdate datetime default now()
);

desc products;

drop table products;

insert into products(name, price)
values('냉장고', 3000000);
insert into products(name, price)
values('세탁기', 2500000);
insert into products(name, price)
values('스타일러', 1500000);

select * from products;
select *, format(price,0) fprice from products;
select *, format(price,2) fprice from products;
select *, format(price,0) fprice, date_format(rdate, '%Y-%m-%d')
 fdate from Products;

insert into products(name, price)
select name, price from products; -- 퀄럼들의 순서 바뀌면 안됨(네임, 프라이스), (네임, 프라이스)

update products set name='비스포크 스타일러' where code=3;
update products set name='비스포크 스타일러', price=1800000
where code=3;

update products
set price=price * 0.1
where code !=3;

delete from products where code > 4;

/* 커밋 안해줘도 됨 */




SELECT * FROM PRODUCTS ORDER BY CODE DESC;
SELECT * FROM PRODUCTS ORDER BY CODE DESC LIMIT 0, 5;


INSERT INTO PRODUCTS(NAME, PRICE)
SELECT NAME, PRICE FROM PRODUCTS;

SELECT COUNT(*)/5 FROM PRODUCTS;




CREATE TABLE LOCAL(
	ID INT auto_increment PRIMARY KEY,
    LID VARCHAR(20) NOT NULL,
    LNAME VARCHAR(200) NOT NULL,
    LADDRESS VARCHAR(500),
    LPHONE VARCHAR(30),
    LURL VARCHAR(200),
    X VARCHAR(100),
    Y VARCHAR(100),
    RDATE DATETIME DEFAULT NOW()
);
DROP TABLE LOCAL;
DESC LOCAL;

select * from local;
delete from local where id>0;





DROP TABLE BOOKS;
CREATE TABLE BOOKS(
	SEQ INT auto_increment PRIMARY KEY,
    TITLE VARCHAR(200) NOT NULL,
    THUMBNAIL VARCHAR(200),
    PRICE INT DEFAULT 0,
    DATE VARCHAR(20),
    AUTHORS VARCHAR(100),
    URL VARCHAR(500),
    ISBN VARCHAR(100),
    CONTENTS TEXT,
    RDATE DATETIME DEFAULT NOW(),
    PUBLISHER VARCHAR(100)
);

DESC BOOKS;

select * FROM BOOKS;

ALTER TABLE BOOKS MODIFY COLUMN URL VARCHAR(400);


SELECT COUNT(*) FROM PRODUCTS;

create table products(
	code int auto_increment primary key,
    name varchar(100) not null,
    
    
    price int default 0,
    rdate datetime default now()
);
SELECT * FROM PRODUCTS;
insert into products(name, price)
select name, price from products;

DELETE FROM PRODUCTS WHERE CODE>400;


SELECT * FROM PRODUCTS ORDER BY CODE DESC LIMIT 3,3;



SELECT COUNT(*) FROM PRODUCTS WHERE NAME LIKE '%냉장고%';

SELECT *
FROM PRODUCTS
WHERE NAME LIKE '%냉장고%'
ORDER BY CODE DESC
LIMIT 0,5;


SELECT COUNT(*) FROM PRODUCTS;
SELECT * FROM PRODUCTS ORDER BY CODE DESC;
SELECT * FROM PRODUCTS WHERE NAME LIKE '%%' ORDER BY CODE LIMIT 0,5;