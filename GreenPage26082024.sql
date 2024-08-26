--GreenPage26082024


-- ORDER BY COMMAND

SELECT * FROM customers c
ORDER BY score ASC NULLS FIRST -- NULLS FIRST / NULL En başta görmek istersek. MySQL kendisi en başa atar.

/*
--NOT: PostgreSQL de NULL değerler ASC sıralamasında en alta gider.
--MYSQL de ise en üstte gelir. Eğer Postgre de Null değeri en üstte görmek istersek
--alttaki gibi yazarız:
SELECT *
FROM customers
ORDER BY score ASC NULLS FIRST

*/

SELECT * FROM customers c
ORDER BY score DESC NULLS LAST -- NULLS LAST NULL en altta gösterir

--ORDER BY için 2 kriter kullanımı
-- Country e göre alfabetik olarak ve score'a göre büyükten küçüğe sırala

SELECT *
FROM customers
ORDER BY country ASC

SELECT *
FROM customers
ORDER BY country ASC, score DESC 

SELECT *
FROM customers
ORDER BY country ASC, score DESC NULLS LAST

--ORDER BY için 2 kriter kullanımı
-- Country e göre alfabetik olarak ve score'a göre büyükten küçüğe sırala
SELECT *
FROM customers c 
ORDER BY country ASC,score DESC
-- önce country ye göre sıraladık, sonra ülkeleri kendi içerisinde score a göre tekrar sıraladık
-- Birden fazla sıralamada önce birinci field dakileri sıralar, sonra birinci field da aynı olanlara // 
--// bağlı olarak ikinci fielda kileri kendi arasında siralar


SELECT *
FROM customers
ORDER BY 4 ASC, 5 DESC NULLS LAST -- Bu yöntem tavsiye edilmiyor.



SELECT *
FROM customers
LIMIT 2 -- en baştan 2 tane getirecek. Genelde ORDER BY dan sonra kullanılabilir

-- offset ve limit kullanımı

-- OFFSET: Yazılan rakam kadar satırı atlayıp, sonrakileri getirmenizi sağlar.

SELECT *
FROM customers c 
OFFSET 2 
LIMIT 1

-- AÇIKLAMA: İLK 2 SATIRI ATLAYIP SONRA SADECE 3.SATIRI GETİRİR

-- OFFSET VE LIMIT KULLANIMI
-- OFFSET: yazılan rakam kadar satırı atlayıp sonrakilerini getirmenizi sağlar
SELECT *
FROM customers c
OFFSET 1
LIMIT 2




















