select g.nome, c.nome, c.ano
from gafanhotos as g join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;
