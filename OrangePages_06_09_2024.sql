-- ORANGE PAGES 06-09-2024

SELECT
	UPPER(t.firstname) AS upper_firstname,
	LENGTH(t.firstname) AS len_first,
	TRIM(UPPER(t.firstname)) AS trim_first,
	LENGTH(TRIM(t.firstname)) AS trim_len_first,
	LOWER(t.lastname) AS lower_lastname,
	LENGTH(t.lastname) AS len_last,
	TRIM(t.lastname) AS trim_last,
	LENGTH(TRIM(t.lastname)) AS trim_len_last
FROM teachers t


CREATE TABLE calisanlar4 (
id INT UNIQUE, 
isim VARCHAR(50), 
sehir VARCHAR(50), 
maas INT, 
isyeri VARCHAR(20)
);	
	
INSERT INTO calisanlar4 VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Vakko');
INSERT INTO calisanlar4 VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
INSERT INTO calisanlar4 VALUES(345678901, null, 'Ankara', 3000, 'Vakko');
INSERT INTO calisanlar4 VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Pierre Cardin');
INSERT INTO calisanlar4 VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas');
INSERT INTO calisanlar4 VALUES(678901234, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin');
INSERT INTO calisanlar4 VALUES(789012345, 'Fatma Yasa', null, 2500, 'Vakko');
INSERT INTO calisanlar4 VALUES(890123456, null, 'Bursa', 2500, 'Vakko');
INSERT INTO calisanlar4 VALUES(901234567, 'Ali Han', null, 2500, 'Vakko');

SELECT * FROM calisanlar4;	


UPDATE  calisanlar4 
SET isyeri = 'Trendyol'
WHERE id = 123456789


UPDATE  calisanlar4 
SET isim  = 'Veli Yıldırım',
    sehir = 'Bursa'
WHERE id = 567890123

SELECT * FROM calisanlar4 c 


CREATE TABLE markalar
(
marka_id int, 
marka_isim VARCHAR(20), 
calisan_sayisi int
);


INSERT INTO markalar VALUES(100, 'Vakko', 12000); 
INSERT INTO markalar VALUES(101, 'Pierre Cardin', 18000); 
INSERT INTO markalar VALUES(102, 'Adidas', 10000); 
INSERT INTO markalar VALUES(103, 'LCWaikiki', 21000); 

SELECT * FROM markalar
 

-- DROP KULLANIMI / Bütün tabloyu kaldırır

DROP TABLE person  -- bu tablo silindi  

-- MySQL de kullanılan PURGE diye komut var. / temizlemek süpürmek manasına geliyor.

-- Tablonun artıklarını temizlemek için kullanılır. PostgreSql de vakum komutu ile yapılır.

-- VACUUM komutu
/* PostgreSQL'de bir tablo veya veri silindiğinde disk
* alanını geri kazanmak istiyorsanız, VACUUM komutunu
* kullanabilirsiniz. VACUUM komutu silinen verilerin yer
* kaplamasını önler, boş alanı temizler ve veritabanındaki
* diğer işlemler için kullanılabilir hale getirir.
-- Syntax: VACUUM FULL table_name;
-- MySQL de PURGE komutunmunu karşılığı */


SELECT * FROM calisanlar4;

ALTER TABLE calisanlar4 
ADD COLUMN yas INTEGER 


ALTER TABLE calisanlar4 
ADD COLUMN remote boolean DEFAULT TRUE;


ALTER TABLE calisanlar4 
DROP yas;


--Senaryo 4: calisanlar4 tablosundaki maas sutununun data tipini
-- real olarak güncelleyiniz.*/

ALTER TABLE calisanlar4
ALTER COLUMN maas TYPE REAL;

SELECT * FROM calisanlar4;

ALTER TABLE calisanlar4
ALTER COLUMN isim SET NOT NULL;  --Bu kodda hatı alınır çünkü tabloda NULL kayıtlar var


SELECT * FROM calisanlar4;



















































