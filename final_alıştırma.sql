--select no,op_kod,(vize*0.4)+(final*0.6) AS ort from notlar
--select Sum (top_ders_saati) from hocalar
--select Avg(no) from ogrenci where cinsiyet='erkek';--cinsiyeti erkek olan ��renci nosu en y�ksek olan ��renciyi veriri 
--select count(cinsiyet) from ogrenci where cinsiyet='bayan';--giri� yapan bayan say�s�n�n adetini verir
--select count (final) from notlar where final<40

--select cinsiyet, AVG(bolkod) from ogrenci group by cinsiyet;
--select op_kod,AVG(vize) AS ortv,AVG(final) as ortf ,AVG(but)as ortb   from notlar WHERE 
--no in(select no from ogrenci where memleket=55) group by op_kod
--select no, avg(final) from notlar where final>50 group by  no having AVG(final)>=60
--��rencilerden toplam kredisi 50�den yukar� olanlar� listeleyin. (S�n�fta ��z�lecek!)
select op_kod ,Sum (teori) as teori  from dersler group by op_kod having sum (teori)<2 order by op_kod desc