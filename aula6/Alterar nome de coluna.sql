alter table pessoas
change COLUMN profissao prof varchar(20) not null default '';

desc pessoas;

select * from pessoas;
