/*
1.city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz
LEFT JOIN sorgusunu yazınız.
2.customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name 
isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
3.customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name 
isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.
*/

-- 1.SORU
select city, country from country
left join city on city.country_id = country.country_id; 

-- 2.SORU
select distinct payment_id, first_name, last_name from customer
right join payment on payment.customer_id = customer.customer_id;

-- 3.SORU
select first_name, last_name, rental_id from customer
full join rental on rental.customer_id = customer.customer_id;