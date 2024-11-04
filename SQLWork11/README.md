# Patika+ Week6 SQL ile Temel Ödev11 Uygulaması
Merhaba,
Bu proje SQL ile Patika+ 6.hafta SQL komutları pratik için yapılmış bir uygulamadır.

## 📚 Proje Hakkında
Bu proje, aşağıdaki konuları öğrenmeye yardımcı olmak için tasarlanmıştır:
- Temel SQL komutları
- INTERSECT kullanımı
- EXCEPT kullanımı
- UNION kullanımı
- 


## ÖDEV 11 KOD:
```sql
/*
1.actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
2.actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
3.actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak 
ikinci tabloda bulunmayan verileri sıralayalım.
4. İlk 3 sorguyu tekrar eden veriler için de yapalım.
*/

--1.SORU
(
SELECT first_name FROM actor
)
UNION
(
SELECT first_name FROM customer
)

--2.SORU
(
SELECT first_name FROM actor
)
INTERSECT
(
SELECT first_name FROM customer
)

--3.SORU
(
SELECT first_name FROM actor
)
EXCEPT
(
SELECT first_name FROM customer
)

--4.SORU
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer
```
