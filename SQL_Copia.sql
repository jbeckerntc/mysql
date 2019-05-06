use senai;
create table aluno(
    id integer primary key auto_increment,
    nome text,
    email text,
    nota1 real,
    nota2 real
);

insert into aluno(id,nome,email,nota1,nota2 ) 
values(1,"Julio","becker@gamail",8,7.5);

insert into aluno
values(null,"guilherme","gui@gmail",6,7.5);

insert into aluno(nome,nota1,nota2)
values("Estevao",6.5,4.9);

SELECT * from aluno;

SELECT * from aluno where email is null;

update aluno set email = "estevin@email.com" where id = 3;

SELECT * from aluno;

SELECT nome,nota1,nota2 from aluno;

update aluno set nota1 = 7.4 where id = 3;

insert into aluno(nome,nota1,nota2)
values( "Marilson",8,6);

select* from aluno order by nome;

SELECT nome AS NOME,nota1 AS 'Nota 1',nota2 as 'Nota 2', round((nota1+nota2)/2,1) As Média from aluno;

SELECT nome AS NOME,nota1 AS 'Nota 1',nota2 as 'Nota 2', round((nota1+nota2)/2,1) As Média from aluno order by Média desc;

delete  from aluno where id=1;

SELECT nome AS NOME, round((nota1+nota2)/2,1) As Média from aluno order by Média desc limit 1;