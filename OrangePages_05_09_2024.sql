-- TEACHERS tablosu oluşturalım

-- WILDCARD ve REGEX kullanımları



CREATE TABLE teachers(
id int,
firstname varchar(50),
lastname varchar(50),
age int,
city varchar(20),
course_name varchar(20),
salary real
);
INSERT INTO teachers VALUES(111,'AhmeT  ','  Han',35,'Istanbul','SpringMVC',5000);
INSERT INTO teachers VALUES(112,'Mehmet','Ran ',33,'Van','HTML',4000);
INSERT INTO teachers VALUES(113,' Bilal','Fan ',34,'Bursa','SQL',3000);
INSERT INTO teachers VALUES(114,'Celal',' San',30,'Bursa','Java',3000);
INSERT INTO teachers VALUES(115,'Deniz',' Can',30,'Istanbul','SQL',3500);
INSERT INTO teachers VALUES(116,'ekreM','Demir',36,'Istanbul','Java',4000.5);
INSERT INTO teachers VALUES(117,'Fatma','Celik',38,'Van','SpringBOOT',5550);
INSERT INTO teachers VALUES(118,'Hakan','Cetin',44,'Izmir','Java',3999.5);
INSERT INTO teachers VALUES(119,'mert','Cetin',32,'Izmir','HTML',2999.5);
INSERT INTO teachers VALUES(120,'Nilay','Cetin',32,'Izmir','CSS',2999.5);
INSERT INTO teachers VALUES(121,'Selma','Celik',40,'Ankara','SpringBOOT',5550);
INSERT INTO teachers VALUES(122,'fatiH','Can',32,'Ankara','HTML',2550.22);
INSERT INTO teachers VALUES(123,'Nihat','Keskin',32,'Izmir','CSS',3000.5);
INSERT INTO teachers VALUES(124,'Hasan','Temel',37,'Istanbul','S.Security',3000.5);
SELECT * FROM teachers;


--SORU-1:
-- teachers tablosundaki tüm kayıtların
-- firstname değerlerini büyük harfe,
-- lastname değerlerini küçük harfe çevirerek,
-- uzunlukları ile birlikte listeleyiniz.


SELECT
	UPPER(firstname) AS upper_firstname,
	LENGTH(firstname) AS len_firstname,
	LOWER(lastname) AS lower_lastname,
	LENGTH(lastname) AS len_lastname
FROM teachers t

--Soru-2:
--teachers tablosunda firstname ve lastname değerlerindeki
--başlangıç ve sondaki boşlukları kaldırın, kaldırma öncesi-sonrası sütunları da
-- uzunluklarıyla raporlayınız.

SELECT
	upper(t.firstname) AS upper_firstname,
	length(t.firstname) AS len_fisrt,
	length(trim(t.firstname)) AS trim_len_fisrt,
	lower(t.lastname) AS lower_lastname,
	length(t.lastname) AS len_last,
	length(trim(t.lastname)) AS trim_len_last
FROM teachers t


--Soru-2:
--teachers tablosunda firstname i upper yapın, lastname i lower yapın ve bu field lardaki
-- değerlerin başlangıç ve sondaki boşlukları kaldırın,
-- kaldırma öncesi-sonrası sütunları da uzunluklarıyla raporlayınız.

SELECT
	UPPER(firstname) AS upper_firstname,
	LENGTH(firstname) AS len_fisrt,  -- TRIM Öncesi uzunluk
	length(TRIM(firstname)) AS trim_len_fisrt, -- TRIM sonrası uzunluk
	LOWER(lastname) AS lower_lastname,
	LENGTH(lastname) AS len_last,   -- TRIM Öncesi uzunluk
	LENGTH(TRIM(lastname)) AS trim_len_last  -- TRIM sonrası uzunluk
FROM teachers t


-- NOT: INITCAP fonksiyonu kelimelerin ilk harfini büyük diğerlerini küçük yapar
SELECT INITCAP('HELLO WORLD, SQL IS AWESOME!') AS formatted_text;




















