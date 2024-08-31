-- 30.08.2024 Practice


CREATE TABLE books (
	book_id INTEGER,
	title varchar(80),
	author varchar(50),
	date date,
	genre varchar(20)
);

SELECT * FROM  books

INSERT INTO books VALUES (100, 'Savaş ve Barış', 'Lev Tolstoy', '1869-01-01', 'Roman');

INSERT INTO books(title,author) VALUES('Suc ve Ceza', 'Fyodor Dostoyevski');

INSERT INTO books(title,author,genre) VALUES('Martin Eden', 'Jack London','Roman');

SELECT * FROM books

SELECT title,author FROM books

CREATE TABLE students (
  student_id SERIAL PRIMARY KEY ,
  first_name VARCHAR(50) NOT NULL,
  last_name  VARCHAR(30) NOT NULL,
  date_of_birth DATE NOT NULL,
  email VARCHAR(50) UNIQUE NOT NULL,
  phone_number CHAR(15) ,
  gender VARCHAR(8) CHECK (gender IN ('male', 'female'))
)

INSERT INTO students(first_name,last_name,date_of_birth,email,phone_number,gender)  
VALUES ('Robert', 'White', '2003-02-14', 'robert@example.com', '555-5555', NULL);

INSERT INTO students
VALUES(9,'Kevin', 'Garcia', '1999-05-30', 'kevin6@example.com', '555-2222', 'male'); 

SELECT * FROM students 


CREATE TABLE student_address(
address_id SERIAL PRIMARY KEY,--NOT NULL,UNIQUE,kimlik bilgisi
student_id INTEGER NOT NULL UNIQUE,
city VARCHAR(50),
country VARCHAR(15),
FOREIGN KEY (student_id) REFERENCES students(student_id) 
);

SELECT * FROM student_address 




CREATE TABLE teachers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER DEFAULT 0,
    email VARCHAR(100)
);

INSERT INTO teachers (name, age, email) VALUES 
('John Doe', 25, 'john.doe@example.com'),
('Jane Smith', 30, 'jane.smith@example.com'),
('Michael Brown', 28, 'michael.brown@example.com'),
('Emily Johnson', 22, 'emily.johnson@example.com'),
('David Lee', 35, 'david.lee@example.com'),
('Maria Garcia', 27, 'maria.garcia@example.com'),
('Christopher Martinez', 29, 'christopher.martinez@example.com'),
('Sarah White', 26, 'white@example.com'),
('James Taylor', 31, 'james.taylor@example.com'),
('Jennifer Adams', 33, 'jennifer.adams@example.com'),
('Daniel Hernandez', 28, 'daniel.hernandez@example.com'),
('Amanda Thomas', 24, 'amanda.thomas@example.com'),
('Robert White', 32, 'white@example.com'),
('Megan Scott', 29, 'scott@example.com'),
('Kevin Scott', 27, 'scott@example.com');

SELECT * FROM teachers 


SELECT * FROM teachers ORDER BY name  -- A dan Z

SELECT * FROM teachers ORDER BY name DESC -- Z den A

SELECT * FROM teachers ORDER BY email ASC, age DESC 

SELECT *, LENGTH (name) FROM teachers ORDER BY LENGTH (name) DESC


SELECT * FROM teachers
 ORDER BY (age) desc
LIMIT 5

SELECT *
FROM teachers s 
ORDER BY age 
OFFSET 3
LIMIT  2



CREATE TABLE ogrenciler(
	id int primary key,
	isim varchar(30),
	address varchar(100),
	sinav_notu integer
);


--Tabloma veri ekleme 
INSERT INTO ogrenciler VALUES(1,'Betul Kuyucu','Istanbul',80); 

INSERT INTO ogrenciler (id, isim,address, sinav_notu) values  
				(2,'Zeki Bey','Izmir',90),
				(3,'Cemal Dogan','Trabzon',65),
				(4,'Mirac','Bursa',45),
				(5,'Yavuz Bal','Antalya',55);
			
SELECT * FROM ogrenciler

SELECT * FROM teachers ORDER BY age ASC OFFSET 3 FETCH NEXT 2 ROWS ONLY


INSERT INTO ogrenciler (id,isim,sinav_notu) values 
(6,'Bilal Degirmen',95),
(7,'Fahri Ersoz', 92);

SELECT * FROM ogrenciler

SELECT * FROM ogrenciler WHERE address='Bursa'

SELECT isim FROM  ogrenciler 
WHERE sinav_notu= 80 AND address='Istanbul'

SELECT  * FROM ogrenciler WHERE sinav_notu = 55 OR sinav_notu = 100
SELECT  * FROM ogrenciler WHERE sinav_notu IN (55, 100, 80)
SELECT * FROM ogrenciler o WHERE sinav_notu BETWEEN 65 AND 85;
select * from ogrenciler where sinav_notu >= 65 and sinav_notu <= 85





--Aggregate Functions 
MAX, MIN, COUNT, SUM, AVG 


--SORU 8: En yuksek sinav puani nedir 
SELECT sinav_notu FROM ogrenciler ORDER BY sinav_notu DESC LIMIT 1

SELECT MAX(sinav_notu) AS en_yuksek_not  FROM ogrenciler

SELECT * FROM ogrenciler
--SORU 10: Toplam Ogrenci sayisi ve ortalama sinav notu 
SELECT COUNT(*), ROUND(AVG(sinav_notu),3) FROM ogrenciler


SELECT *FROM ogrenciler WHERE sinav_notu = (SELECT MAX(sinav_notu) FROM ogrenciler);































