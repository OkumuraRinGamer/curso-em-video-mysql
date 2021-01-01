create table if not EXISTS cursos (
    nome varchar(30) not null unique,
    descricao text,
    carga int unsigned,
    totaulas int unsigned,
    ano year default '2020'
    ) default charset=utf8;

describe cursos;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key (idcurso);
