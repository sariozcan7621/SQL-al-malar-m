--select*from hocalar WHERE top_ders_saati=20
--select no op_kod from notlar where ((vize*0.4)+(final*0.6))>70
--select adi,soyadi from ogrenci where bolkod=536 order by adi asc
--select  ders_adi from dersler where dönem=1
--select no from ogrenci where d_tarihi  between 1988 and 1996 
--select*from   hocalar where top_ders_saati between 15 and 17  order by top_ders_saati asc
--select*from ogrenci where adi like '_e_e%'
--select*from ogrenci where no =7 or no=5530535
--select *from notlar where no IN (select no from ogrenci where bolkod=530)
select vize,final from notlar where no =6532510 AND op_kod
IN(select op_kod from dersler where teori=3)
select adi,soyadi from  ogrenci where bolkod IN( 531, 532)
select distinct (no) from notlar where op_kod in (421,433)

