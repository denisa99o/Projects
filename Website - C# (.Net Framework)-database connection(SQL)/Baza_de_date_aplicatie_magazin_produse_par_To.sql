use master
--drop database magazin_produse_electrice_profesionale_pentru_par
go

create database magazin_produse_electrice_profesionale_pentru_par
go
use magazin_produse_electrice_profesionale_pentru_par
go


create table [dbo].[Clienti](
        [id_client] [int] primary key NOT NULL,
		[nume_client] [varchar](50) NULL,
		[prenume_client] [varchar](50) NULL,
	    [telefon] [varchar](20) NULL,
	    [limita_credit] [float] NULL,
	    [email_client] [varchar](20) NULL,
	    [data_nastere] [varchar](20) NULL)
go
create table [dbo].[Comenzi](
        [nr_comanda] [int] primary key NOT NULL,
	    [data] [varchar](20) NULL,
	    [modaliate] [varchar](20) NULL,
	    [id_client] [int] NULL,
	    [stare_comanda] [varchar](20) NULL,
		foreign key (id_client) references Clienti(id_client) )

go
create table [dbo].[Tipuri_produse_par](
	[tip_produs_par] [varchar](100) primary key NOT NULL,
	[nr_produse] [int] NULL,
	[nr_modele] [int] NULL)
go


create table [dbo].[Producatori](
	[cod_producator] [int] primary key NOT NULL,
	[nume_producator] [varchar](100) NOT NULL,
	[adresa] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[telefon] [varchar](100) NULL,
	[id_tara] [int] NULL,
	
	foreign key (id_tara) references Tari(id_tara) )
go
create table [dbo].[Lista_comenzi](
	[nr_comanda] [int] NULL,
	[cod_art] [int] NULL,
	[pret] [float] NULL,
	[cantitate] [int] NULL,
	foreign key (nr_comanda) references Comenzi(nr_comanda), 
	foreign key (cod_art) references Produse(cod_art) )
go
create table [dbo].[Produse](
	[cod_art] [int] primary key NOT NULL,
	[cod_producator] [int] NULL,
	[denumire] [varchar](100) NOT NULL,
	[tip_produs_par] [varchar](100) NULL,
	[pret_producator] [float] NULL,
	foreign key (cod_producator) references Producatori(cod_producator),
	foreign key (tip_produs_par) references Tipuri_produse_par(tip_produs_par) )
go
create table [dbo].[Tari](
	[id_tara] [int] primary key NOT NULL,
	[denumire_tara] [varchar](25) NULL,
	[continent] [varchar](20) NULL )


--inserez date in tabele

GO

INSERT [dbo].[Clienti] ([id_client], [nume_client], [prenume_client], [telefon], [limita_credit], [email_client], [data_nastere]) VALUES (13, N'Aciu', N'Lia', N'0783379713', 200, N'aciu.lia@gmail.com', N'09/06/1895')
INSERT [dbo].[Clienti] ([id_client], [nume_client], [prenume_client], [telefon], [limita_credit], [email_client], [data_nastere]) VALUES (14, N'Badea', N'Iris', N'0783423123', 300, N'badea.iris@gmail.com', N'01/02/1990')
INSERT [dbo].[Clienti] ([id_client], [nume_client], [prenume_client], [telefon], [limita_credit], [email_client], [data_nastere]) VALUES (15, N'Barna', N'Maria', N'0783483659', 50, N'barna@gmail.com', N'09/05/1991')
INSERT [dbo].[Clienti] ([id_client], [nume_client], [prenume_client], [telefon], [limita_credit], [email_client], [data_nastere]) VALUES (16, N'Cernat', N'Mihai', N'0238489743', 800, N'cernat@gmail.com', N'04/05/1997')
INSERT [dbo].[Clienti] ([id_client], [nume_client], [prenume_client], [telefon], [limita_credit], [email_client], [data_nastere]) VALUES (17, N'Ignat', N'Virginia', N'0777583743', 400.45, N'ignat@gmail.com', N'03/05/2000')
INSERT [dbo].[Clienti] ([id_client], [nume_client], [prenume_client], [telefon], [limita_credit], [email_client], [data_nastere]) VALUES (18, N'Jurca', N'Cristina', N'0783489799', 800, N'jurca@gmail.com', N'02/12/1987')
INSERT [dbo].[Clienti] ([id_client], [nume_client], [prenume_client], [telefon], [limita_credit], [email_client], [data_nastere]) VALUES (19, N'Leonida', N'Tudor', N'0783483443', 700, N'leonida@gmail.com', N'07/11/1992')
INSERT [dbo].[Clienti] ([id_client], [nume_client], [prenume_client], [telefon], [limita_credit], [email_client], [data_nastere]) VALUES (20, N'Stroia', N'Nicoleta', N'0784498753', 900, N'nicoleta@gmail.com', N'04/10/1990')
INSERT [dbo].[Clienti] ([id_client], [nume_client], [prenume_client], [telefon], [limita_credit], [email_client], [data_nastere]) VALUES (21, N'Voicu', N'Violeta', N'0787963741', 400, N'voicu@gmail.com', N'01/09/1988')
INSERT [dbo].[Clienti] ([id_client], [nume_client], [prenume_client], [telefon], [limita_credit], [email_client], [data_nastere]) VALUES (22, N'Ivan', N'Mircea', N'0766643749', 150.34, N'ivan@gmail.com', N'09/06/1954')
INSERT [dbo].[Clienti] ([id_client], [nume_client], [prenume_client], [telefon], [limita_credit], [email_client], [data_nastere]) VALUES (23, N'Pop', N'Ioana', N'0784483742', 450, N'pop@gmail.com', N'07/07/1980')
INSERT [dbo].[Clienti] ([id_client], [nume_client], [prenume_client], [telefon], [limita_credit], [email_client], [data_nastere]) VALUES (24, N'Moga', N'Daniela', N'0783493786', 980, N'daniela@gmail.com', N'06/06/1970')
INSERT [dbo].[Comenzi] ([nr_comanda], [data], [modaliate], [id_client], [stare_comanda]) VALUES (30, N'14/10/2019', N'card', 13, N'in curs')
INSERT [dbo].[Comenzi] ([nr_comanda], [data], [modaliate], [id_client], [stare_comanda]) VALUES (40, N'1/10/2018', N'ramburs', 14, N'in curs')
INSERT [dbo].[Comenzi] ([nr_comanda], [data], [modaliate], [id_client], [stare_comanda]) VALUES (50, N'4/11/2019', N'card', 15, N'in magazin')
INSERT [dbo].[Comenzi] ([nr_comanda], [data], [modaliate], [id_client], [stare_comanda]) VALUES (60, N'15/9/2019', N'ramburs', 16, N'pe drum')
INSERT [dbo].[Comenzi] ([nr_comanda], [data], [modaliate], [id_client], [stare_comanda]) VALUES (70, N'16/8/2019', N'ramburs', 17, N'pe drum')
INSERT [dbo].[Comenzi] ([nr_comanda], [data], [modaliate], [id_client], [stare_comanda]) VALUES (80, N'23/5/2020', N'ramburs', 18, N'pe drum')
INSERT [dbo].[Comenzi] ([nr_comanda], [data], [modaliate], [id_client], [stare_comanda]) VALUES (90, N'17/7/2019', N'ramburs', 19, N'pe drum')
INSERT [dbo].[Comenzi] ([nr_comanda], [data], [modaliate], [id_client], [stare_comanda]) VALUES (100, N'18/8/2019', N'ramburs', 20, N'in magazin')
INSERT [dbo].[Comenzi] ([nr_comanda], [data], [modaliate], [id_client], [stare_comanda]) VALUES (200, N'19/10/2018', N'ramburs', 21, N'in magazin')
INSERT [dbo].[Comenzi] ([nr_comanda], [data], [modaliate], [id_client], [stare_comanda]) VALUES (300, N'11/10/2019', N'card', 22, N'in magazin')
INSERT [dbo].[Comenzi] ([nr_comanda], [data], [modaliate], [id_client], [stare_comanda]) VALUES (400, N'11/10/2018', N'card', 23, N'in magazin')
INSERT [dbo].[Comenzi] ([nr_comanda], [data], [modaliate], [id_client], [stare_comanda]) VALUES (500, N'13/10/2019', N'card', 24, N'in magazin')
INSERT [dbo].[Tipuri_produse_par] ([tip_produs_par], [nr_produse], [nr_modele]) VALUES (N'alte produse', 115, 25)
INSERT [dbo].[Tipuri_produse_par] ([tip_produs_par], [nr_produse], [nr_modele]) VALUES (N'placa de par profesionala', 139, 5)
INSERT [dbo].[Tipuri_produse_par] ([tip_produs_par], [nr_produse], [nr_modele]) VALUES (N'uscator de par', 140, 10)
INSERT [dbo].[Tipuri_produse_par] ([tip_produs_par], [nr_produse], [nr_modele]) VALUES (N'ondulator', 100, 4)
INSERT [dbo].[Tipuri_produse_par] ([tip_produs_par], [nr_produse], [nr_modele]) VALUES (N'perie rotativa', 21, 4)

INSERT [dbo].[Producatori] ([cod_producator], [nume_producator], [adresa], [email], [telefon], [id_tara]) VALUES (1, N'Philips', N'Str. Jan Pieter Heijestraat, Amsterdam', N'philips@gmail.com', N'072448991', 1)
INSERT [dbo].[Producatori] ([cod_producator], [nume_producator], [adresa], [email], [telefon], [id_tara]) VALUES (2, N'Rowenta', N'Erbach im Odenwald', N'rowenta@gmail.com', N'0774875395', 2)
INSERT [dbo].[Producatori] ([cod_producator], [nume_producator], [adresa], [email], [telefon], [id_tara]) VALUES (3, N'Braun', N'Str. One Retail GmbH', N'braun@gmail.com', N'0724345313', 3)
INSERT [dbo].[Producatori] ([cod_producator], [nume_producator], [adresa], [email], [telefon], [id_tara]) VALUES (4, N'Remington', N'Str. Middleton,Wisconsin', N'remington@gmail.com', N'0783483743', 4)
INSERT [dbo].[Producatori] ([cod_producator], [nume_producator], [adresa], [email], [telefon], [id_tara]) VALUES (5, N'BaByliss', N'Str. Mario Rossi', N'babyliss@gmail.com', N'0731242342', 5)
INSERT [dbo].[Producatori] ([cod_producator], [nume_producator], [adresa], [email], [telefon], [id_tara]) VALUES (6, N'PluieSoleil', N'Str.Rue Basse', N'pluiesoleil@gmail.com', N'0728345513', 6)
INSERT [dbo].[Producatori] ([cod_producator], [nume_producator], [adresa], [email], [telefon], [id_tara]) VALUES (7, N'GHD Styler', N'Bridgewater Place,Leeds', N'ghdstyler@gmail.com', N'0756 649 936', 7)
INSERT [dbo].[Producatori] ([cod_producator], [nume_producator], [adresa], [email], [telefon], [id_tara]) VALUES (8, N'Streetwize Accesories', N'Str. Ikh', N'streetwize@gmail.com', N'(0264) 485.526', 8)
INSERT [dbo].[Producatori] ([cod_producator], [nume_producator], [adresa], [email], [telefon], [id_tara]) VALUES (9, N'Golden Curl', N'Rua Nova do Carvalho ', N'goldencurl@gmail.com', N'0728345516', 9)
INSERT [dbo].[Producatori] ([cod_producator], [nume_producator], [adresa], [email], [telefon], [id_tara]) VALUES (10, N'OCALISS', N'Str. Wangfujing', N'ocaliss@gmail.com', N'0783483748', 10)
INSERT [dbo].[Producatori] ([cod_producator], [nume_producator], [adresa], [email], [telefon], [id_tara]) VALUES (11, N'TAVALAX', N'Str. Farme de Amodeo ,Rio de Janiero, Brazil,Brasilia', N'tavalax@gmail.com', N'077487545', 11)
INSERT [dbo].[Producatori] ([cod_producator], [nume_producator], [adresa], [email], [telefon], [id_tara]) VALUES (12, N'CONFU', N'Guangdong Huanengda', N'confu@gmail.com', N'0783123748', 12)
INSERT [dbo].[Lista_comenzi] ([nr_comanda], [cod_art], [pret], [cantitate]) VALUES (30, 1, 500, 4)
INSERT [dbo].[Lista_comenzi] ([nr_comanda], [cod_art], [pret], [cantitate]) VALUES (40, 2, 200, 1)
INSERT [dbo].[Lista_comenzi] ([nr_comanda], [cod_art], [pret], [cantitate]) VALUES (50, 3, 300, 2)
INSERT [dbo].[Lista_comenzi] ([nr_comanda], [cod_art], [pret], [cantitate]) VALUES (60, 4, 450, 4)
INSERT [dbo].[Lista_comenzi] ([nr_comanda], [cod_art], [pret], [cantitate]) VALUES (70, 5, 600, 2)
INSERT [dbo].[Lista_comenzi] ([nr_comanda], [cod_art], [pret], [cantitate]) VALUES (80, 6, 120, 6)
INSERT [dbo].[Lista_comenzi] ([nr_comanda], [cod_art], [pret], [cantitate]) VALUES (90, 7, 200, 4)
INSERT [dbo].[Lista_comenzi] ([nr_comanda], [cod_art], [pret], [cantitate]) VALUES (100, 8, 299.99, 1)
INSERT [dbo].[Lista_comenzi] ([nr_comanda], [cod_art], [pret], [cantitate]) VALUES (200, 9, 139, 3)
INSERT [dbo].[Lista_comenzi] ([nr_comanda], [cod_art], [pret], [cantitate]) VALUES (300, 10, 239.99, 2)
INSERT [dbo].[Lista_comenzi] ([nr_comanda], [cod_art], [pret], [cantitate]) VALUES (400, 11, 219, 4)
INSERT [dbo].[Lista_comenzi] ([nr_comanda], [cod_art], [pret], [cantitate]) VALUES (500, 12, 300, 7)
INSERT [dbo].[Produse] ([cod_art], [cod_producator], [denumire], [tip_produs_par], [pret_producator]) VALUES (1, 1, N'Philips I-Pro ST387E,Slim 24 mm, Wwt&Dry', N'placa de par profesionala', 329.99)
INSERT [dbo].[Produse] ([cod_art], [cod_producator], [denumire], [tip_produs_par], [pret_producator]) VALUES (2, 2, N'Rowenta PRO-Ceramic Extra S5525,230 grade', N'placa de par profesionala', 109.99)
INSERT [dbo].[Produse] ([cod_art], [cod_producator], [denumire], [tip_produs_par], [pret_producator]) VALUES (3, 3, N'Braun StyleCare BHH811/00', N'ondulator', 145)
INSERT [dbo].[Produse] ([cod_art], [cod_producator], [denumire], [tip_produs_par], [pret_producator]) VALUES (4, 4, N'Remington StyleMix 2020CE', N'ondulator', 300.79)
INSERT [dbo].[Produse] ([cod_art], [cod_producator], [denumire], [tip_produs_par], [pret_producator]) VALUES (5, 5, N'BaByliss Expert Protect D362E,2300 W ', N'uscator de par', 500)
INSERT [dbo].[Produse] ([cod_art], [cod_producator], [denumire], [tip_produs_par], [pret_producator]) VALUES (6, 6, N'PluieSoleil Professional Iron Technology Hair Dryer', N'uscator de par', 100.79)
INSERT [dbo].[Produse] ([cod_art], [cod_producator], [denumire], [tip_produs_par], [pret_producator]) VALUES (7, 7, N'GHD Styler Activ Premium Care CF9540', N'perie rotativa', 150)
INSERT [dbo].[Produse] ([cod_art], [cod_producator], [denumire], [tip_produs_par], [pret_producator]) VALUES (8, 8, N'Streetwize Accesories Heated Hair Straighteners 12', N'placa de par profesionala', 250)
INSERT [dbo].[Produse] ([cod_art], [cod_producator], [denumire], [tip_produs_par], [pret_producator]) VALUES (9, 9, N'Golden Curl Professional 25 mm', N'ondulator', 100)
INSERT [dbo].[Produse] ([cod_art], [cod_producator], [denumire], [tip_produs_par], [pret_producator]) VALUES (10, 10, N'Ocaliss RM-C99 StyleCare Auto Curler', N'ondulator', 150)
INSERT [dbo].[Produse] ([cod_art], [cod_producator], [denumire], [tip_produs_par], [pret_producator]) VALUES (11, 11, N'TAVALAX', N'alte produse', 200.99)
INSERT [dbo].[Produse] ([cod_art], [cod_producator], [denumire], [tip_produs_par], [pret_producator]) VALUES (12, 12, N'CONFU', N'alte produse', 200)
INSERT [dbo].[Tari] ([id_tara], [denumire_tara], [continent]) VALUES (1, N'Olanda', N'Europa')
INSERT [dbo].[Tari] ([id_tara], [denumire_tara], [continent]) VALUES (2, N'Germania', N'Europa')
INSERT [dbo].[Tari] ([id_tara], [denumire_tara], [continent]) VALUES (3, N'Austria', N'Europa')
INSERT [dbo].[Tari] ([id_tara], [denumire_tara], [continent]) VALUES (4, N'New York', N'America de Nord')
INSERT [dbo].[Tari] ([id_tara], [denumire_tara], [continent]) VALUES (5, N'Italia', N'Europa')
INSERT [dbo].[Tari] ([id_tara], [denumire_tara], [continent]) VALUES (6, N'Franta', N'Europa')
INSERT [dbo].[Tari] ([id_tara], [denumire_tara], [continent]) VALUES (7, N'Scotia', N'Europa')
INSERT [dbo].[Tari] ([id_tara], [denumire_tara], [continent]) VALUES (8, N'India', N'Asia')
INSERT [dbo].[Tari] ([id_tara], [denumire_tara], [continent]) VALUES (9, N'Portugalia', N'Europa')
INSERT [dbo].[Tari] ([id_tara], [denumire_tara], [continent]) VALUES (10, N'China', N'Asia')
INSERT [dbo].[Tari] ([id_tara], [denumire_tara], [continent]) VALUES (11, N'Brazilia', N'America de Sud')
INSERT [dbo].[Tari] ([id_tara], [denumire_tara], [continent]) VALUES (12, N'Mongolia', N'Asia')


--vederi
--vedere care imi afiseaza detalii despre vanzare
GO
CREATE VIEW [dbo].[detalii_vanzare]
AS
SELECT  Nume_client=b.nume_client,
       Prenume_client=b1.prenume_client,
      Cantitate=a.cantitate,
	pret_produs_achizitionat=a.pret,
	pret_total=(a.cantitate * a.pret)
	
FROM lista_comenzi a, CLIENTI b,Clienti b1, comenzi c
WHERE
	b.id_client=c.id_client AND
	a.nr_comanda=c.nr_comanda AND
	b1.id_client=c.id_client


select * from detalii_vanzare	
select * from Comenzi
select * from Clienti
select * from Lista_comenzi

--vedere care imi afiseaza doar producatorii din europa
GO
CREATE VIEW [dbo].[producatori_europa]
AS
SELECT  Nume_producator=b.nume_producator,
	Adresa=b.adresa,
	Email=b.email
FROM TARI a, Producatori b
WHERE a.continent='Europa' and
      a.id_tara=b.id_tara
	

--proceduri

select * from Clienti

select * from detalii_vanzare



---creare proceduri
--procedura care imi afiseaza detalii despre comanda
--pentru a crea procedura am folosit o vedere
--1.PROCEDURA FOLOSITA IN APLICATIE
go
create procedure  [dbo].[proc_view]  ( @name varchar (50) ,
                                  @a1 varchar(50) output,
								  @a2 varchar(50) output,
								  @a3 float output,
								  @a4 float output,
								  @a5 float output )

as 
select @a1=Nume_client,@a2=Prenume_client,@a3=Cantitate,@a4=pret_produs_achizitionat,@a5=pret_total 
from detalii_vanzare
where Nume_client = @name
----
select * from Clienti
select * from Produse
select * from Lista_comenzi




----
---procedura de update
go
create procedure update_Produse ( @denumire varchar(100),
                                  @tip_produs varchar(100),
								  @raspuns varchar(100) output )
as 
declare @cod_art int, @cod_producator int
select @cod_art =cod_art, @cod_producator=cod_producator
from Produse
where tip_produs_par=@tip_produs
update Produse
set cod_art = @cod_art, cod_producator=@cod_producator
where denumire=@denumire
set @raspuns='Update succeeded!'

---

--procedura de update
go
create procedure update_Lista_comenzi ( 
                                  @cantitate_noua float,
								  @nr_comand float,
								  @raspuns varchar(100) output )
as 
declare @nr_comanda float, @cod_art float
select @nr_comand=nr_comanda, @cod_art =cod_art
from Lista_comenzi
where nr_comanda=@nr_comand
update Lista_comenzi
set nr_comanda=@nr_comand, cod_art = @cod_art
where cantitate=@cantitate_noua
set @raspuns='Update succeeded!'


-----acest trigger insereaza produse in tabela Produse, dar inainte de asta verifica daca nu cumva 
--acele produse exista deja inregistrate in catalogul magazinului, in cazul in care exista afiseaza un mesaj corespunzator,
--altfel insereaza produsele noi, populand doar campurile pe care le-am selectat
---dar nu am reusit sa fac o procedura in care sa introduc acest trigger, iar mai apoi sa il apelez din cod

go
create trigger trig_1 on Produse instead of insert
as 
declare @cod_art int, @name varchar(100)
select @cod_art =cod_art, @name=denumire from inserted
declare	 @tip_produs varchar (100) = (select tip_produs_par from inserted) 

	if exists ( select *
            from Produse
			where cod_art= @cod_art or denumire=@name  )
			      
begin
print 'Produsul -cu codul ' + cast(@cod_art as varchar) +'  sau denumirea '  + @name + ' exista deja in catalogul magazinului !' 
end
else  
begin
insert Produse(cod_art, denumire,tip_produs_par) values(@cod_art,@name,@tip_produs)
end

---verificare trigger
insert Produse(cod_art,denumire,tip_produs_par)
values(16,'Braun','placa de par profesionala')
select * from Produse
----




---procedura de inserare in tabela Produse
--2.PROCEDURA FOLOSITA IN APLICATIE

go
create procedure [dbo].[proc_insert] (   @cod_art int,
                                         @name varchar (100),
										 @tip_produs varchar (100)
                                         )
as begin
set nocount on --the number of rows affected is not returned
insert into Produse ( cod_art,denumire,tip_produs_par)
values (@cod_art,@name,@tip_produs)
end




---procedura de stergere
--3.PROCEDURA FOLOSITA IN APLICATIE

create procedure [dbo].[proc_delete] (@cod_art int)
as
begin
delete from Produse where cod_art=@cod_art
end



--- procedura de update
go
create procedure [dbo].[proc_update] (@cod_art int ,
                                      @cod_producator int ,
									  @denumire varchar(100) ,
									  @tip_produs varchar(100) ,
									  @pret_producator float 
									  )
as
begin
update Produse 
set cod_art=@cod_art, cod_producator=@cod_producator,denumire=@denumire,tip_produs_par=@tip_produs,pret_producator=@pret_producator 
where cod_art=@cod_art
end
