# Comentario no MySQL Worbench
# Aula dde Criaçao e Manupulaçao de Bacno de Dados 
#06/05/19
#
#Revisao SQL Basico utilizando o Khan Academy
#https://pt.khanacademy.org/computing/computer-programming/sql
#Pro. Tarcisio Nunes (@tarcnux)
#####################################

#Observaçao! Apos cada linha de comando, para ser executada, voce deve pressionar Ctrl Enter

#Craindo uma base de dados
create database senai; #Ctrl enter
use senai;

#apagando uma base de dados
drop database test; #Ctrl enter 

#criando uma tabela
#é necessario saber o nome da tabela, os nomes e tipos dos campos (colunas) da tabela
create table aluno(
	id int primary key auto_increment, nome varchar(40), nota1 decimal (4,2), nota2 decimal(4,2), media decimal(4,2)
);#ao final lembre-se de pressionar Ctrl Enter

insert into aluno(id,nome,nota1,nota2,media)
values(1,"Teobaldo Amaral", 7.8,8.5,(7.8+8.50)/2);

insert into aluno values
(2,"Clecia Pinto",6.5,8.9,(6.5+8.9)/2),
(3,"Paulo Zafadin",9,8.9,(9+8.9)/2),
(4,"Leozinho Kolin",5.4,6.7,(5.4+5.7)/2);

select * from aluno;

#Alterando uma tabela para adicionar uma nova coluna de email

alter table aluno add column email text;
select * from aluno;


update aluno set email = "Teo123@gmail.com" where id = 1 ;
update aluno set email = "Clepi23@hotmail.com" where id = 2 ;
update aluno set email = "PauZafa@hotmail.com" where id = 3 ;
update aluno set email = "kolinl@gmail.com" where id = 4 ;

update aluno set nota1 = 7 where id = 4;
update aluno set media = (7+6.70)/2 where id = 4;
select * from aluno;

#alterar a tabela para remover uma coluna 
alter table aluno drop column media;
select * from aluno;

#mostrar a media do aluno seguida do nome 

SELECT  round((nota1+nota2)/2,1) As Média, nome AS Nome from aluno order by Média desc;