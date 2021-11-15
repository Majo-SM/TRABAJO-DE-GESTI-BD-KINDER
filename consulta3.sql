--Mostrar histórico de matriculaciones y deserciones. 
--En una columna deberá aparecer el año lectivo, en otra columna el número de matriculados, en otra columna el número de retirados.
select t1.an_inicio_l, t2.matriculado, t1.deserciones
from
(select lec.id_an_lectivo, an_inicio_l, count(idmatricula) as deserciones from matriculacion mat
inner join ano_lect lec on mat.id_an_lectivo = lec.id_an_lectivo where retirado = true
group by lec.id_an_lectivo) t1
full join
(select lec.id_an_lectivo, count(idmatricula) as matriculado from matriculacion mat 
inner join ano_lect lec on mat.id_an_lectivo = lec.id_an_lectivo where retirado=false
group by lec.id_an_lectivo) t2
on t1.id_an_lectivo = t2.id_an_lectivo
