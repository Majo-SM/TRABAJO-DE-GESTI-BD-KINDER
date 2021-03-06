---	Mostrar histórico de cantidad de profesores por período. En una columna aparecerá el año lectivo,
--en otra columna aparecerá el número de mujeres, en otra columna aparecerá el número de hombres.
select t1.an_inicio_l, t1.masculinos, t2.femeninos
from (
select lec.id_an_lectivo, an_inicio_l, count(genero_maestr) as masculinos from rendimiento ren
 inner join maestro prf on prf.id_maestro = ren.id_maestro
 inner join matriculacion mat on mat.idmatricula = ren.idmatricula
 inner join ano_lect lec on lec.id_an_lectivo = mat.id_an_lectivo
 where genero_maestr = 'masculino'
 group by lec.id_an_lectivo
) t1
full join (
 select lec.id_an_lectivo, count(genero_maestr) as femeninos from rendimiento ren
 inner join maestro prf on prf.id_maestro = ren.id_maestro
 inner join matriculacion mat on mat.idmatricula = ren.idmatricula
 inner join ano_lect lec on lec.id_an_lectivo = mat.id_an_lectivo
 where genero_maestr = 'femenino'
 group by lec.id_an_lectivo 
) t2
on t1.id_an_lectivo = t2.id_an_lectivo
