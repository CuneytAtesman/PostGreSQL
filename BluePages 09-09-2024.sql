-- BLUE PAGES 09-09-2024

-- NESTED QUERY: Bir SQL sorgusunun içinde başka bir SQL sorgusunun yer almasıdır.
-- İç içe sorgular, daha karmaşık sorgular oluşturmanızı sağlar
-- ve genellikle alt sorgunun sonucuna bağlı olarak dış sorgunun çalışmasını sağlar.
-- Team Lead:
-- Şirketimize ilk sipariş vermiş olan müşterimizin özlük bilgilerini alabilir miyim?

SELECT * FROM musteri m 

SELECT * FROM siparis s 

SELECT *
FROM musteri m 
WHERE id IN (
			SELECT musteri_id
			FROM siparis s 
			ORDER BY tarih
			LIMIT 1
			);

