Use öðrenciler
Create table tr_kod(m_adi smallint primary key,tel_kod int)
Create table no_(op_kod smallint primary key,vize int,final int,büt int)
Create table tc(adi smallint primary key,soyadý char(20),bolkod int,sýnýf int,h_ID int,d_Tarih datetime, memleket int, cinsiyet char(10))
Create table h_ýd(h_adi smallint primary key, h_soyadý char(20),unvan int, toplam_ders_saati int)
Create table op_kod(ders_kod smallint primary key,ders_adý char(20),dönem int, teori int,pratik int,hocasý int)

