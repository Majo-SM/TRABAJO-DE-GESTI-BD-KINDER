--Mostrar total de valores recaudados por cada año lectivo.

select an_inicio_l, sum(precio) as recaudado 
from pago 
inner join matriculacion mat on pago.idmatricula = mat.idmatricula
inner join ano_lect lec on lec.id_an_lectivo = mat.id_an_lectivo
group by lec.id_an_lectivo;
