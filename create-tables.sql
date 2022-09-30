create table aluno (
	id integer auto_increment primary key,
    nome varchar(100),
    matricula varchar(20) unique,
    data_nascimento date,
    pontuação integer
);

create table atividade(
	id integer auto_increment primary key,
    aluno_id integer,
    nome varchar(100),
    disciplina varchar(100),
    nota decimal(10,2),
    observacao varchar(255),
    foreign key (aluno_id) references aluno(id)
);
insert into aluno values
(default, 'marcos', '2021A001','1994-08-02',0),
(default, 'arthur', '2021A002','2000-08-02',0),
(default, 'luan', '2021A003','2004-08-29',0);