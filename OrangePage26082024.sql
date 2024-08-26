-- OrangePage26082024

--CONSTRAINTS/ KISITLAMALAR/BELİRLEYİCİLER
-- UNIQUE and NOT NULL

CREATE TABLE students2 (
	student_no char(7) UNIQUE,
	name varchar(20) NOT NULL,
	last_name varchar (30) NOT NULL,
	avarage REAL,
	save_date DATE
);

INSERT INTO students2 VALUES ('1234567', 'Ali', 'Yılmaz', 80, now())  
INSERT INTO students2 VALUES ('2345678', 'Ali', 'Yılmaz', 80, now()) 
INSERT INTO students2 VALUES ('2345679', ' ', 'Yılmaz', 80, now()) -- SPACE isnot NULL

INSERT INTO students2 (name,last_name) VALUES ('Bilal','Ece')
INSERT INTO students2 (name ,last_name) VALUES ('John','Steve')

SELECT * FROM students2 


-- PRIMARY KEY
-- Primary Key: Eger bir field "primary key" olarak deklare edilmisse, field datalari "unique", "not null" olmali.
--Bir tabloda sadece 1 tane "primary key" olabilir.
--Primary Key atamasi icin 1.yol:

CREATE TABLE students3 (
	student_no char(7) PRIMARY KEY,
	last_name varchar (30) NOT NULL,
	avarage REAL,
	save_date DATE
);

SELECT * FROM students3  



CREATE TABLE students4 (
	student_no char(7) UNIQUE,
	name varchar(20) NOT NULL,
	last_name varchar (30) NOT NULL,
	avarage REAL,
	save_date DATE
	-- CONSTRAINT student_no_pk PRIMARY KEY (student_no)
);


INSERT INTO students4 VALUES ('1234567', 'Ali', 'Yılmaz', 80, now())   




SELECT * FROM students4   



--INSERT INTO students4 VALUES ('1234567','Ali','Yilmaz',80,now())
--INSERT INTO students4 (name,last_name) VALUES ('John','Steve')  --hatalı giriş:Primary KEY olan ogrenci_no hücresini boş geçemeyiz  

/*
 * Parent Tablo: Birincil anahtarı (Primary Key) veya Unique Key içeren ve referans verilen tablodur. Diğer bir deyişle, parent tablo, child tablonun foreign key tarafından referans alınan tablodur.

Child Tablo: Foreign Key içeren ve parent tabloya referansla bağlanan tablodur. Child tablo, parent tablonun primary key veya UNİQUE anahtarını foreign key olarak kendi içinde barındırır ve bu foreign key üzerinden parent tabloyla ilişkilendirilir.

 * 
 * 
 */





-- Foreign Key:Tablolar arasında ilişki oluşturmak içindir.
-- Değer olarak "null" kabul eder
-- Tekrarlanan verileri kabul eder
-- Bir tablo birden çok "Foreign Key" alanına sahip olabilir.


CREATE TABLE company (
	company_id integer,
	company varchar(50) PRIMARY KEY,
	employee_number integer

);

CREATE TABLE employees(
	id integer,
	name varchar(50),
	city varchar(50),
	salary REAL,
	company varchar(50),
	
FOREIGN KEY(company) REFERENCES company (company) 

);



SELECT * FROM company

-- CONSTRAINT per_fk FOREIGN KEY(sirket) REFERENCES sirketler(sirket));  bu yazım şeklinde custom foreign key bağlantı ismi verilmiş olur


-- CHECK Constraints
-- Age ve salary için veri giriş şartı oluşturalım:
-- salary 5000 den büyük olmalı, age 0 dan küçük olmamalı

CREATE TABLE person(
id INTEGER,
name varchar(50),
salary REAL CHECK(salary>5000), --5000 den fazla giriş olmalı
age INTEGER CHECK(age>=0)  -- negatif değer olmayacak
);

SELECT  * FROM person  

INSERT INTO person VALUES (11, 'Ali Can', 6000, 35)

INSERT INTO person VALUES (12, 'Ali veli', 4000, 40) -- hatalı giriş maaş değeri 5000 den küçük
INSERT INTO person VALUES (13, 'veli Can', 6000, -3)  -- hatalı giriş age error
























