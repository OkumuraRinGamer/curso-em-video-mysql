UPDATE cursos
set nome = 'HTML5'
where idcurso = '1';

UPDATE cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

UPDATE cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
LIMIT 1;
