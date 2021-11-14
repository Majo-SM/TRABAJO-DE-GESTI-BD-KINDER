INSERT INTO actividad_en_programa(
	cod_act, id_maestro, cod_prog, materiales_usar, meses_duracion, descripcion)
	VALUES ('414', '31', '331', 'abaco, foami, hojas de cuadro', '3 meses', 'actividad matematica inicial'),
	('424', '32', '332', 'toalla personal, materiales de aseo', '2 meses', 'actividad emocional en  base al cuidado personal'),
	('434', '32', '333', 'hojas parvularias de cuadro', '3 meses', 'actividades matematicas'),
	('444', '33', '334', 'ula ula, balón, rompecabeza', '2 meses', 'programa para mejoramiento logico.'),
	('454', '34', '335', 'balón plastico, ula ula', '3 meses', 'actividad motriz para desarrollar movimiento'),
	('464', '35', '336', 'materiales de aseo', '3 meses', 'actividades de cuidado personal'),
	('474', '36', '337', 'abaco, hojas parvularias', '4 meses', 'actividades matematicas'),
	('484', '37', '338', 'cuerda de saltar, ula ula', '4 meses', 'actividades fisicas'),
	('494', '40', '339', 'rompecabeza, abaco', '3 meses', 'actividades matematicas iniciales');
	
	
------------------------------------------------------------------------------------------------------------------------*/	
2------------------------------------------------------------------------------------------------------------------------*/		
	
INSERT INTO ano_lect(
	id_an_lectivo, an_inicio_l, an_fin_l, estado)
	VALUES ('1', '25-08-2014', '31-07-2015', 'culminado'),
	('2', '24-08-2015', '25-07-2016', 'culminado'),
	('3', '22-08-2016', '24-07-2017', 'culminado'),
	('4', '28-08-2017', '30-07-2018', 'culminado'),
	('5', '27-08-2018', '29-07-2019', 'culminado'),
	('6', '26-08-2019', '27-07-2020', 'culminado'),
	('7', '31-08-2020', '26-07-2021', 'culminado'),
	('8', '30-08-2021', '25-07-2022', 'vigente');
	
------------------------------------------------------------------------------------------------------------------------*/	
2------------------------------------------------------------------------------------------------------------------------*/		
	
	INSERT INTO caracteristica_del_nino(
	cod_salud, id_alumno, talla_vestimenta, talla_zapatos, alergias, medicamentos_que_consume, fecha_ultima_enfermedad, doctor_de_cabecera, diagnostico_medico)
	VALUES ('155', '1', '4', '23', 'alergia al polvo', 'antihistamínicos loratadina', '15-04-2021', 'Dr.Juan Quiroz', 'Presento una severa alergia debido al contagio con el polvo'),
	('156', '62', '10', '21', 'alergia al trigo', 'antihistamínicos loratadina', '16-04-2020', 'Dr.Park Jeon', 'Cuenta con defensas bajas se recomienda exponerse a futuras alergias.'),
	('157', '63', '8', '20', 'alergia a mariscos', 'antihistamínicos fexofenadina', '16-05-2021', 'Dr.Raul Catro', 'la salud es estable desde el ultimo escenario de alergia'),
	('158', '64', '8', '22', 'ninguno', 'ninguno', '19-02-2020', 'Dra.Carmen Salinas', 'Presento una lesión en el brazo izquierdo'),
	('159', '65', '6', '22', 'ninguno', 'ninguno', '18-07-2019', 'Dr.Jeon Joung', 'Contagio leve de virus climatico'),
	('160', '66', '10', '23', 'alergia al polen', 'antihistamínicos cetrizina', '23-05-2021', 'Dr.Yu Lee', 'el paciente presentó un cuadro de principio de asma.'),
	('161', '67', '10', '23', 'asma', 'Pulmicort Flexhaler', '19-07-2021', 'Dr.Yu Lee', 'Presentación de mayor afectación en las vias respiratorias'),
	('162', '68', '6', '20', 'ninguno', 'ninguno', '15-05-2021', 'Dr.Raul Castro', 'ninguno'),
	('163', '69', '8', '21', 'ninguno', 'ninguno', '25-06-2020', 'Dra.Ana Briones', 'presenta un inicio de Deficit de atención'),
	('164', '70', '6', '20', 'ninguno', 'ninguno', '23-07-2017', 'Dra.Carmen Salinas', 'su estado de salud es estable.');
	
------------------------------------------------------------------------------------------------------------------------*/	
2------------------------------------------------------------------------------------------------------------------------*/		
	
	INSERT INTO estado_social_nino(
	cod_social, ingresos_del_hogar, clase_social)
	VALUES ('11', '400.52', 'media alta'),
	('12', '250.00', 'media baja'),
	('13', '4500.00', 'clase alta'),
	('14', '150.00', 'clase media baja'),
	('15', '155.00', 'clase media baja'),
	('16', '55.00', 'clase baja'),
	('17', '450.00', 'clase media alta'),
	('18', '100.00', 'clase media baja'),
	('19', '45.00', 'clase baja'),
	('20', '455.00', 'clase media alta');
	
------------------------------------------------------------------------------------------------------------------------*/	
2------------------------------------------------------------------------------------------------------------------------*/		
	
	INSERT INTO madre(
	id_madre, ced_madre, nom_ma, apellido_ma, direccion_ma, celular_ma, telf_hog_ma, ocupacion_ma)
	VALUES  ('22','1314455245', 'Juana', 'Diaz', 'calle 7 avenida 15', '0956556586', '2625230', 'abogada'),
	('221','1302356545', 'Brenda', 'Perez', 'calle 25 avenida 2', '0956121225', '2535362', 'ejecutiva del hogar'),
	('223','1315265456', 'Marvelly', 'Muñoz', 'calle 8 avenida 17', '0965356565', '2652358', 'trabajadora social'),
	('224','1302565523', 'Nayelli', 'Quiroz', 'calle 15 avenida 22', '0963252536', '2688891', 'maquillista'),
	('225','1715545485', 'Carla', 'Acosta', 'Calle 9 avenida 12', '0967887878', '2625458', 'odontòloga'),
	('226','1312223654', 'Andrea', 'Loor', 'calle 9 avenida 3', '0936455452', '2623581', 'ejecutiva del hogar'),
	('227','1302233345', 'Ana', 'Muentes', 'calle 9 Barrio Altamira', '0921211241', '2688545', 'maestra'),
	('228','1314402250', 'Maria', 'Alcivar', 'calle 6 avenida 25', '0963633666', '2625454', 'ejecutiva del hogar'),
	('229','1316255789', 'Carmen', 'Velez', 'calle 3 avenida 18', '0958525852', '2622887', 'psicòloga'),
	('230','1302254787', 'Luciana', 'Mero', 'calle 7 avenida 190', '0965655258', '2628573', 'gerente');
	
------------------------------------------------------------------------------------------------------------------------*/	
2------------------------------------------------------------------------------------------------------------------------*/		
	
	INSERT INTO maestro(
	id_maestro, ced_maestro, nombre_maestro, apellido_maestro, fecha_nac, celular_maestro, direccion_hog_maes, genero_maestr, certifica_senecyt, titulos, anos_expriencia, fecha_ingre)
	VALUES ('31', '1312522364', 'Carmen', 'Castro Ruiz', '19-02-1987', '0985856567', 'calle 9 avenida 965', 'femenino', '1', '2', '5 años', '15-02-2017'),
	('32', '1302544447', 'Lucia', 'Alcivar Delgado', '05-01-1989', '0985855848', 'calle 19 avenida La cultura', 'femenino', '3', '2', '10 años', '16-01-2016'),
	('33', '1303366978', 'Pedro', 'Griss Perez', '03-02-1990', '0985658555', 'calle 89 avenida 74', 'masculino', '2', '2', '6 años', '05-01-2015'),
	('34', '1306566569', 'Belén', 'Mero Macias', '02-01-1987', '0956565362', 'calle 78 avenida 14', 'femenino', '3', '1', '6 años', '06-02-2016'),
	('35', '1302256441', 'Carol', 'Castro Loor', '01-03-1989', '0985858445', 'calle 24 avenida 14', 'femenino', '2', '1', '4 años', '09-03-2019'),
	('36', '1316665559', 'Fernanda', 'Loor Perez', '01-06-2000', '0954414102', 'calle 8 avenida 24', 'femenino', '3', '2', '2 años', '06-04-2019'),
	('37', '1715423228', 'Mike', 'Lucas Delgado', '26-05-1999', '0958422233', 'calle 10 avenida 01', 'masculino', '2', '1', '5 años', '06-07-2018'),
	('38', '1302545566', 'Alejandro', 'Sanchez Briones', '06-09-2000', '0966365555', 'calle 8 avenida 145', 'masculino', '1', '1', '2 años', '02-03-2021'),
	('39', '1302333664', 'Alberto', 'Juarez Pin', '09-05-1989', '0985888777', 'Barrio el mirador calle 7', 'masculino', '2', '2', '4 años', '02-09-2020'),
	('40', '1315226352', 'Diego', 'Gomez Pin', '06-08-1990', '0988874747', 'calle 85 avenida 12', 'masculino', '2', '1', '3 años', '09-05-2019');
	
------------------------------------------------------------------------------------------------------------------------*/	
2------------------------------------------------------------------------------------------------------------------------*/		
	
	INSERT INTO matriculacion(
	idmatricula, id_alumno, id_an_lectivo, fecha_matric, graduado, retirado)
	VALUES ('51', '1', '8', '27-08-2021', 'no', 'no'),
	('52', '62', '8', '23-08-2021', 'no', 'no'),
	('53', '63', '8', '25-08-2021', 'no', 'yes'),
	('54', '64', '7', '20-08-2019', 'yes', 'no'),
	('55', '65', '7', '21-08-2019', 'yes', 'yes'),
	('56', '66', '7', '20-08-2019', 'yes', 'yes'),
	('57', '67', '8', '25-08-2021', 'no', 'no'),
	('58', '68', '8', '22-08-2021', 'no', 'yes'),
	('59', '69', '8', '21-08-2021', 'no', 'no'),
	('60', '70', '8', '26-08-2021', 'no', 'no');
------------------------------------------------------------------------------------------------------------------------*/	
2------------------------------------------------------------------------------------------------------------------------*/		

	INSERT INTO padre(
	id_padre, ced_padre, nom_pa, apellido_pa, nacionalidad_pa, direccion_pa, celular_pa, telef_hogar_pa, ocupacion_pa)
	VALUES ('01','1314565897','Juan','Sanchez', 'ecuatoriano', 'calle 7 avenida 15', '0965856596', '2625230', 'mecanico'),
	('02','1314565856','Andres','Perez', 'ecuatoriano', 'calle 25 avenida 2', '0985456578', '2635362', 'profesor'),
	('03','1314525897','Pablo','Ruiz', 'venelozano', 'calle 8 avenida 17', '0965235685', '2652358', 'comerciante'),
	('04','1315264785','Leonsio','Loor', 'ecuatoriano', 'calle 13 frente al Tia', '0987456525', '2625875', 'fotografo'),
	('05','1312252242','Benito','Lucas', 'colombiano', 'calle 5 avenida 25', '0956556235', '2625254', 'ejecutivo'),
	('06','1312525246','Jaime','Andrade', 'ecuatoriano', 'calle 9 avenida 3', '0985854565', '2623581', 'mecanico'),
	('07','1312252465','Leopoldo','Frank', 'ecuatoriano', 'Barrio altamira calle 9', '0985845547', '2688545', 'pintor'),
	('08','1302524552','Sebastian','Tuarez', 'colombiano', 'calle 6 avenida 25', '0962232232', '2625454', 'albañil'),
	('09','1715026336','Fernando','Mill', 'ecuatoriano', 'calle 3 avenida 18', '956365636','2625859', 'gerente'),
	('0110','1308052126','Luis', 'Marin', 'ecuatoriano', 'calle 7 avenida 190', '0956984875', '2628570', 'docente');
------------------------------------------------------------------------------------------------------------------------*/	
2------------------------------------------------------------------------------------------------------------------------*/		

	INSERT INTO pago(
	cod_pag, idmatricula, precio, fech_pag, num_mes, descripcion_pag)
	VALUES ('221', '51', '45,50','25-08-2021', '1', 'pago primer mes'),
	('222', '52', '25,35', '02-09-2021', '2', 'pago de segundo mes'),
	('223', '53', '35,50', '03-09-2021', '2', 'pago segundo mes y se retiro'),
	('224', '54', '50,25', '20-11-2020', '3', 'pago de tercer mes en nuevo año lectivo'),
	('225', '55', '47,80', '09-10-2019', '2', 'pago segundo mes'),
	('226', '55', '26,52', '09-11-2019', '3', 'pago tercer mes adelantado por retiro'),
	('227', '56', '30,50', '25-08-2019', '1', 'pago un mes y se retiro'),
	('228', '57', '45,50', '25-10-2021', '2', 'pago de segundo mes'),
	('229', '58', '50,25', '05-10-2021', '3', 'pago 3 meses y se retiro'),
	('230', '60', '35,55', '06-10-2021', '2', 'pago de segundo mes');
------------------------------------------------------------------------------------------------------------------------*/	
2------------------------------------------------------------------------------------------------------------------------*/		

	INSERT INTO programa(
	cod_prog, idmatricula, nom_prog, descrip_prog)
	VALUES ('331', '51', 'desarrollo intelectual', 'actividades matemáticas'),
	('332', '52', 'educación emocional', 'actividades en relacion al valor personal'),
	('333', '53', 'desarrollo intelectual', 'actividades matemáticas'),
	('334', '51', 'arte/motriz', 'actividades fisicas'),
	('335', '52', 'arte/motriz', 'actividades manuales'),
	('336', '51', 'educacion emocional', 'actividades de cuidado personal'),
	('337', '54', 'desarrollo intelectual', 'actividad matemáticas'),
	('338', '55', 'arte/motriz', 'actividades fisicas'),
	('339', '56', 'desarrollo intelectual', 'pensamiento logico'),
	('340', '57', 'educacion emocional', 'cuidado personal');
------------------------------------------------------------------------------------------------------------------------*/	
2------------------------------------------------------------------------------------------------------------------------*/		

	
	INSERT INTO reg_nino(
	id_alumno, id_padre, id_tutor, cod_social, id_an_lectivo, id_madre, ced_nino, nombres_ni, apellidos_ni, genero_ni, nacionalidad_ni, fecha_nacimientoni)
	VALUES ('001', '01', '313', '11', '8', '22', '1312254653', 'Martin', 'Sanchez Diaz', 'masculino', 'ecuatoriano', '02-01-2017'), 
	('62', '02', '333', '12', '8', '221', '1302554479', 'Luciana', 'Perez Perez', 'femenino', 'ecuatoriano', '02-05-2018'),
	('63', '03', '323', '13', '8', '223', '1312525444', 'Liss', 'Ruiz Muñoz', 'femenino', 'ecuatoriano', '01-01-2017'),
	('64', '03', '323', '14', '7', '223', '1302121110', 'Pedro', 'Ruiz Muñoz', 'masculino', 'ecuatoriano', '01-01-2017'),
	('65', '0110', '363', '15', '7', '230', '130111999', 'Cristhopher', 'Marin Mero', 'masculino', 'ecuatoriano', '08-07-2017'),
	('66', '0110', '363', '16', '7', '230', '1316695584', 'Linda', 'Marin Mero', 'femenino', 'ecuatoriano', '08-07-2017'),
	('67', '04', '373', '17', '8', '224', '1302529869', 'Rossy', 'Loor Quiroz', 'femenino', 'ecuatoriano', '01-01-2017'),
	('68', '05', '343', '18', '8', '226', '1314545785', 'Manuel', 'Lucas Loor', 'masculino', 'ecuatoriano', '06-03-2018'),
	('69', '02', '333', '19', '8', '221', '1302545478', 'Leonel', 'Perez Perez', 'femenino', 'ecuatoriano', '09-03-2018'),
	('70', '03', '323', '20', '8', '223', '1312526565', 'Luis', 'Ruiz Muñoz', 'masculino', 'ecuatoriano', '05-09-2018');
------------------------------------------------------------------------------------------------------------------------*/	
2------------------------------------------------------------------------------------------------------------------------*/		

	INSERT INTO rendimiento(
	cod_rendimiento, cod_prog, id_maestro, idmatricula, nota_parcial, nota_general)
	VALUES ('601', '331', '31', '51', '9.5', '9.05'),
	('602', '332', '32', '52', '8.10', '7.15'),
	('603', '333', '32', '53', '9.50', '8.14'),
	('604', '334', '33', '51', '8.35', '8.05'),
	('605', '335', '34', '52', '7.45', '7.48'),
	('606', '336', '35', '51', '7.8', '8.05'),
	('607', '337', '36', '51', '8.85', '7.9'),
	('608', '338', '37', '55', '10', '10'),
	('609', '339', '40', '56', '8.5', '8.5'),
	('610', '340', '38', '57', '9.65', '9.95');
------------------------------------------------------------------------------------------------------------------------*/	
2------------------------------------------------------------------------------------------------------------------------*/		

	INSERT INTO tutor_representante(
	id_tutor, ced_tutor, relacion_con_el_nino, nombre_tutor, apellido_tutor, celular_tutor)
	VALUES ('333','1302356545', 'madre', 'Brenda', 'Perez', '0956121225'),
	('313','1314455245', 'madre', 'Juana', 'Diaz', '0956556586'),
	('323','1315264785', 'padre', 'Leonsio', 'Loor', '0987456525'),
	('343','1312252242', 'padre', 'Benito','Lucas', '0956556235'),
	('353','1316255789', 'madre', 'Carmen', 'Velez', '0958525852'),
	('363','1302254787', 'madre', 'Luciana', 'Mero', '0965655258'),
	('373','1715126446', 'tio',   'Fernando','Milano','956365636'),
	('383','1308052126','padre','Luis', 'Marin','0956984875');