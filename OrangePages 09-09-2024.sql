-- ORANGE PAGES 09-09-2024

-- INDEX Numarasını istenen degerden başlatma
-- Öncelikle örnek bir tablo crate edelim, üzerinde değişelim
CREATE TABLE sample_table (
    id SERIAL PRIMARY KEY,   -- SERIAL field olmalı
    other_column TEXT
);

-- INDEX Numarasını istenen degerden başlatma
-- Öncelikle örnek bir tablo crate edelim, üzerinde değişelim

CREATE TABLE sample_table (
    id SERIAL PRIMARY KEY,   -- SERIAL field olmalı
    other_column TEXT
);

--SEQUENCE (sekans) güncellemesi 
SELECT pg_get_serial_sequence('sample_table', 'id');
--Üstteki komut Sequance ın adını döndürür

--Sequence 'ın başlangıç değerini güncelleyelim'
ALTER SEQUENCE sample_table_id_seq RESTART WITH 1000;  

--Yeni kayıt ekleyerek deneme yapalım

INSERT INTO sample_table (other_column) VALUES ('First Record'); 

SELECT * FROM sample_table 



DROP TABLE IF EXISTS markalar;
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



SELECT * FROM markalar m 

SELECT *
FROM calisanlar4 c
WHERE maas = (SELECT max(maas) FROM calisanlar4 c2)
			  OR
	  maas = (SELECT min(maas) FROM calisanlar4 c2)




SELECT *
FROM calisanlar4 c
WHERE maas IN (
				SELECT maas
				FROM calisanlar4
				ORDER BY maas DESC
				OFFSET 1
				LIMIT 1
				);


			
			SELECT *
FROM  calisanlar4 c
WHERE id IN (
			SELECT id
			FROM calisanlar4 c2
			ORDER BY maas DESC
			OFFSET 1
			LIMIT 1
			)
			
			
-- Senaryo 6: Çalisan sayisi 15.000’den cok olan markalarin
-- isimlerini ve bu markada calisanlarin isimlerini ve maaşlarini listeleyiniz.

SELECT * FROM calisanlar4 c		

SELECT isyeri, isim, maas
FROM calisanlar4 c WHERE isyeri IN (
									SELECT marka_isim
									FROM markalar m 
									WHERE calisan_sayisi > 15000
                                   );
			
			
-- Senaryo 7: Her markanin id’sini, ismini ve toplam kaç şehirde bulunduğunu listeleyen bir SORGU yaziniz.


 SELECT 
 	marka_id,   
 	marka_isim,  
 	(SELECT count (DISTINCT sehir) AS sehir 
 	FROM calisanlar4 c 
 	WHERE c.isyeri = m.marka_isim    
 	)
 
 FROM markalar m 
 
 
 
 
 SELECT isyeri, count(DISTINCT sehir) AS sehir
FROM calisanlar4 c
GROUP BY isyeri
                                  
                                  
-- Senaryo 8: Her markanin ismini, calisan sayisini ve
-- o markaya ait calisanlarin maksimum ve min maaşini listeleyen bir Sorgu yaziniz.


SELECT 
	marka_isim,
	calisan_sayisi,
	(SELECT max (maas) AS max_maas
	FROM calisanlar4 c 
	WHERE c.isyeri = m.marka_isim),
	(SELECT min (maas) AS min_maas
	FROM calisanlar4 c 
	WHERE c.isyeri = m.marka_isim)
	
FROM markalar m 


SELECT * FROM markalar m
SELECT * FROM calisanlar4 c



SELECT
	marka_isim,
	calisan_sayisi,
	(
	SELECT MAX(maas) AS max_maas
	FROM calisanlar4 c
	WHERE c.isyeri = m.marka_isim
	),
	(
	SELECT MIN(maas) AS min_maas
	FROM calisanlar4 c
	WHERE c.isyeri = m.marka_isim
	)
FROM markalar m





CREATE TABLE mart
(    
urun_id int,      
musteri_isim varchar(50),
urun_isim varchar(50)
);

INSERT INTO mart VALUES (10, 'Mark', 'Honda'); 
INSERT INTO mart VALUES (20, 'John', 'Toyota'); 
INSERT INTO mart VALUES (30, 'Amy', 'Ford'); 
INSERT INTO mart VALUES (20, 'Mark', 'Toyota'); 
INSERT INTO mart VALUES (10, 'Adam', 'Honda'); 
INSERT INTO mart VALUES (40, 'John', 'Hyundai'); 
INSERT INTO mart VALUES (20, 'Eddie', 'Toyota'); 

CREATE TABLE nisan
(    
urun_id int ,
musteri_isim varchar(50),
urun_isim varchar(50)
);

INSERT INTO nisan VALUES (10, 'Hasan', 'Honda'); 
INSERT INTO nisan VALUES (10, 'Kemal', 'Honda'); 
INSERT INTO nisan VALUES (20, 'Ayse', 'Toyota'); 
INSERT INTO nisan VALUES (50, 'Yasar', 'Volvo'); 
INSERT INTO nisan VALUES (20, 'Mine', 'Toyota'); 

SELECT * FROM mart; 
SELECT * FROM nisan;
  

-- Senaryo 1: “mart” ve “nisan” adlarinda iki tablo oluşturunuz ve
-- Mart ayında 'Toyota' satışı yapılmış ise Nisan ayındaki tüm ürünlerin bilgilerini listeleyiniz.



SELECT *
FROM nisan n 
WHERE EXISTS (
			SELECT 
			FROM mart m 
			WHERE urun_isim = 'Toyota' 
			);











































































































                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                  
			
			
			
			
			
			
			
			
			
			
			



