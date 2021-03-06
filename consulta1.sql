--Mostrar histórico de rendimiento por programas.En una columna debe aparecer el año lectivo,en otra columna
--el nombre del programa, en otra columna la cantidad de rendimientos buenos, en otra columna 
--la cantidad de rendimientos regulares, en otra columna la cantidad de rendimientos regulares.
SELECT t1.cod_prog, t1.anio_lectivo, t1.nombre_programa, t2.excelente, t3.bueno
,t4.regular /*creación de alias temporales para utilizar en las consultas posteriores*/
from
(select pro.cod_prog, an_inicio_l || '   ' || an_fin_l as anio_lectivo,nom_prog as nombre_programa
from rendimiento ren
inner join matriculacion mat on mat.idmatricula = ren.idmatricula 
 inner join programa pro on pro.cod_prog = ren.cod_prog
 inner join ano_lect lec on lec.id_an_lectivo = mat.id_an_lectivo) t1
/*Se devolvera todos los registros que tengan una coincidencia como se plantea*/
full join (select pro.cod_prog, count(nota_general)as excelente
		  from rendimiento ren
		  inner join programa pro on pro.cod_prog =
		  ren.cod_prog
		  where nota_general > 9 group by pro.cod_prog) 
		  t2 on t1.cod_prog = t2.cod_prog
full join(
select pro.cod_prog, count(nota_general) as bueno from rendimiento ren
	inner join programa pro on pro.cod_prog = ren.cod_prog 
	where nota_general > 7 and nota_general < 9 group by pro.cod_prog
) 
t3 on t1.cod_prog = t3.cod_prog
full join (select pro.cod_prog, count(nota_general)as regular
		  from rendimiento ren
		  inner join programa pro on pro.cod_prog = ren.cod_prog
		  where nota_general < 7 group by pro.cod_prog
		  )
		  t4 on t1.cod_prog = t4.cod_prog;
