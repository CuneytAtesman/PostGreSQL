-- GREEN PAGES 09-09-2024

-- SUBqueries - Nested Query  Konusu
-- customer ID yi kullanrak score u 500 den büyük olan
-- customer ların order larını getir.

SELECT * FROM customers c 

SELECT * FROM orders o 


-- subquery

SELECT * FROM orders o 
WHERE customer_id  IN (

				SELECT customer_id
				FROM customers c 
				WHERE score > 500
				);



