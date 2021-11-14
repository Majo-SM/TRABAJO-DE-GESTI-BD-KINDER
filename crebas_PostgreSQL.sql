/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     13/11/2021 14:16:25                          */
/*==============================================================*/


drop index RELATIONSHIP_13_FK;

drop index RELATIONSHIP_9_FK;

drop index ACTIVIDAD_EN_PROGRAMA_PK;

drop table ACTIVIDAD_EN_PROGRAMA;

drop index ANO_LECT_PK;

drop table ANO_LECT;

drop index RELATIONSHIP_23_FK;

drop index CARACTERISTICA_DEL_NINO_PK;

drop table CARACTERISTICA_DEL_NINO;

drop index ESTADO_SOCIAL_NINO_PK;

drop table ESTADO_SOCIAL_NINO;

drop index MADRE_PK;

drop table MADRE;

drop index MAESTRO_PK;

drop table MAESTRO;

drop index RELATIONSHIP_8_FK;

drop index RELATIONSHIP_6_FK;

drop index MATRICULACION_PK;

drop table MATRICULACION;

drop index PADRE_PK;

drop table PADRE;

drop index RELATIONSHIP_7_FK;

drop index PAGO_PK;

drop table PAGO;

drop index RELATIONSHIP_17_FK;

drop index PROGRAMA_PK;

drop table PROGRAMA;

drop index RELATIONSHIP_22_FK;

drop index RELATIONSHIP_15_FK;

drop index RELATIONSHIP_4_FK;

drop index RELATIONSHIP_3_FK;

drop index RELATIONSHIP_1_FK;

drop index REG_NINO_PK;

drop table REG_NINO;

drop index RELATIONSHIP_16_FK;

drop index RELATIONSHIP_19_FK;

drop index RELATIONSHIP_18_FK;

drop index RENDIMIENTO_PK;

drop table RENDIMIENTO;

drop index TUTOR_REPRESENTANTE_PK;

drop table TUTOR_REPRESENTANTE;

/*==============================================================*/
/* Table: ACTIVIDAD_EN_PROGRAMA                                 */
/*==============================================================*/
create table ACTIVIDAD_EN_PROGRAMA (
   COD_ACT              VARCHAR(10)          not null,
   ID_MAESTRO           INT4                 not null,
   COD_PROG             VARCHAR(5)           not null,
   MATERIALES_USAR      VARCHAR(50)          not null,
   MESES_DURACION       VARCHAR(50)          not null,
   DESCRIPCION          VARCHAR(100)         not null,
   constraint PK_ACTIVIDAD_EN_PROGRAMA primary key (COD_ACT)
);

/*==============================================================*/
/* Index: ACTIVIDAD_EN_PROGRAMA_PK                              */
/*==============================================================*/
create unique index ACTIVIDAD_EN_PROGRAMA_PK on ACTIVIDAD_EN_PROGRAMA (
COD_ACT
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_9_FK on ACTIVIDAD_EN_PROGRAMA (
ID_MAESTRO
);

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_13_FK on ACTIVIDAD_EN_PROGRAMA (
COD_PROG
);

/*==============================================================*/
/* Table: ANO_LECT                                              */
/*==============================================================*/
create table ANO_LECT (
   ID_AN_LECTIVO        VARCHAR(10)          not null,
   AN_INICIO_L          DATE                 not null,
   AN_FIN_L             DATE                 not null,
   ESTADO               VARCHAR(55)          not null,
   constraint PK_ANO_LECT primary key (ID_AN_LECTIVO)
);

/*==============================================================*/
/* Index: ANO_LECT_PK                                           */
/*==============================================================*/
create unique index ANO_LECT_PK on ANO_LECT (
ID_AN_LECTIVO
);

/*==============================================================*/
/* Table: CARACTERISTICA_DEL_NINO                               */
/*==============================================================*/
create table CARACTERISTICA_DEL_NINO (
   COD_SALUD            INT4                 not null,
   ID_ALUMNO            INT4                 not null,
   TALLA_VESTIMENTA     VARCHAR(3)           not null,
   TALLA_ZAPATOS        INT4                 not null,
   ALERGIAS             VARCHAR(50)          not null,
   MEDICAMENTOS_QUE_CONSUME VARCHAR(75)          not null,
   FECHA_ULTIMA_ENFERMEDAD DATE                 not null,
   DOCTOR_DE_CABECERA   VARCHAR(50)          not null,
   DIAGNOSTICO_MEDICO   VARCHAR(100)         not null,
   constraint PK_CARACTERISTICA_DEL_NINO primary key (COD_SALUD)
);

/*==============================================================*/
/* Index: CARACTERISTICA_DEL_NINO_PK                            */
/*==============================================================*/
create unique index CARACTERISTICA_DEL_NINO_PK on CARACTERISTICA_DEL_NINO (
COD_SALUD
);

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_23_FK on CARACTERISTICA_DEL_NINO (
ID_ALUMNO
);

/*==============================================================*/
/* Table: ESTADO_SOCIAL_NINO                                    */
/*==============================================================*/
create table ESTADO_SOCIAL_NINO (
   COD_SOCIAL           VARCHAR(5)           not null,
   INGRESOS_DEL_HOGAR   DECIMAL(6,2)         not null,
   CLASE_SOCIAL         VARCHAR(50)          not null,
   constraint PK_ESTADO_SOCIAL_NINO primary key (COD_SOCIAL)
);

/*==============================================================*/
/* Index: ESTADO_SOCIAL_NINO_PK                                 */
/*==============================================================*/
create    unique index ESTADO_SOCIAL_NINO_PK on ESTADO_SOCIAL_NINO (
COD_SOCIAL
);

/*==============================================================*/
/* Table: MADRE                                                 */
/*==============================================================*/
create table MADRE (
   ID_MADRE             INT4                 not null,
   CED_MADRE            VARCHAR(10)          not null,
   NOM_MA               TEXT                 not null,
   APELLIDO_MA          TEXT                 not null,
   DIRECCION_MA         VARCHAR(50)          not null,
   CELULAR_MA           VARCHAR(10)          not null,
   TELF_HOG_MA          VARCHAR(7)           not null,
   OCUPACION_MA         VARCHAR(50)          not null,
   constraint PK_MADRE primary key (ID_MADRE)
);

/*==============================================================*/
/* Index: MADRE_PK                                              */
/*==============================================================*/
create unique index MADRE_PK on MADRE (
ID_MADRE
);

/*==============================================================*/
/* Table: MAESTRO                                               */
/*==============================================================*/
create table MAESTRO (
   ID_MAESTRO           INT4                 not null,
   CED_MAESTRO          VARCHAR(10)          not null,
   NOMBRE_MAESTRO       VARCHAR(50)          not null,
   APELLIDO_MAESTRO     VARCHAR(50)          not null,
   FECHA_NAC            DATE                 not null,
   CELULAR_MAESTRO      VARCHAR(10)          not null,
   DIRECCION_HOG_MAES   VARCHAR(70)          not null,
   GENERO_MAESTR        VARCHAR(25)          not null,
   CERTIFICA_SENECYT    INT4                 not null,
   TITULOS              INT4                 not null,
   ANOS_EXPRIENCIA      VARCHAR(25)          not null,
   FECHA_INGRE          DATE                 not null,
   constraint PK_MAESTRO primary key (ID_MAESTRO)
);

/*==============================================================*/
/* Index: MAESTRO_PK                                            */
/*==============================================================*/
create unique index MAESTRO_PK on MAESTRO (
ID_MAESTRO
);

/*==============================================================*/
/* Table: MATRICULACION                                         */
/*==============================================================*/
create table MATRICULACION (
   IDMATRICULA          INT4                 not null,
   ID_ALUMNO            INT4                 not null,
   ID_AN_LECTIVO        VARCHAR(10)          not null,
   FECHA_MATRIC         DATE                 not null,
   GRADUADO             BOOL                 not null,
   RETIRADO             BOOL                 not null,
   constraint PK_MATRICULACION primary key (IDMATRICULA)
);

/*==============================================================*/
/* Index: MATRICULACION_PK                                      */
/*==============================================================*/
create unique index MATRICULACION_PK on MATRICULACION (
IDMATRICULA
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_6_FK on MATRICULACION (
ID_ALUMNO
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_8_FK on MATRICULACION (
ID_AN_LECTIVO
);

/*==============================================================*/
/* Table: PADRE                                                 */
/*==============================================================*/
create table PADRE (
   ID_PADRE             INT4                 not null,
   CED_PADRE            VARCHAR(10)          not null,
   NOM_PA               TEXT                 not null,
   APELLIDO_PA          TEXT                 not null,
   NACIONALIDAD_PA      TEXT                 not null,
   DIRECCION_PA         VARCHAR(50)          not null,
   CELULAR_PA           VARCHAR(10)          not null,
   TELEF_HOGAR_PA       VARCHAR(7)           not null,
   OCUPACION_PA         VARCHAR(50)          not null,
   constraint PK_PADRE primary key (ID_PADRE)
);

/*==============================================================*/
/* Index: PADRE_PK                                              */
/*==============================================================*/
create unique index PADRE_PK on PADRE (
ID_PADRE
);

/*==============================================================*/
/* Table: PAGO                                                  */
/*==============================================================*/
create table PAGO (
   COD_PAG              VARCHAR(5)           not null,
   IDMATRICULA          INT4                 not null,
   PRECIO               money                not null,
   FECH_PAG             DATE                 not null,
   NUM_MES              INT4                 not null,
   DESCRIPCION_PAG      VARCHAR(75)          not null,
   constraint PK_PAGO primary key (COD_PAG)
);

/*==============================================================*/
/* Index: PAGO_PK                                               */
/*==============================================================*/
create unique index PAGO_PK on PAGO (
COD_PAG
);

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_7_FK on PAGO (
IDMATRICULA
);

/*==============================================================*/
/* Table: PROGRAMA                                              */
/*==============================================================*/
create table PROGRAMA (
   COD_PROG             VARCHAR(5)           not null,
   IDMATRICULA          INT4                 not null,
   NOM_PROG             VARCHAR(50)          not null,
   DESCRIP_PROG         VARCHAR(70)          not null,
   constraint PK_PROGRAMA primary key (COD_PROG)
);

/*==============================================================*/
/* Index: PROGRAMA_PK                                           */
/*==============================================================*/
create unique index PROGRAMA_PK on PROGRAMA (
COD_PROG
);

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_17_FK on PROGRAMA (
IDMATRICULA
);

/*==============================================================*/
/* Table: REG_NINO                                              */
/*==============================================================*/
create table REG_NINO (
   ID_ALUMNO            INT4                 not null,
   ID_PADRE             INT4                 not null,
   ID_TUTOR             INT4                 not null,
   COD_SOCIAL           VARCHAR(5)           not null,
   ID_AN_LECTIVO        VARCHAR(10)          not null,
   ID_MADRE             INT4                 not null,
   CED_NINO             VARCHAR(10)          not null,
   NOMBRES_NI           TEXT                 not null,
   APELLIDOS_NI         TEXT                 not null,
   GENERO_NI            TEXT                 not null,
   NACIONALIDAD_NI      TEXT                 not null,
   FECHA_NACIMIENTONI   DATE                 not null,
   constraint PK_REG_NINO primary key (ID_ALUMNO)
);

/*==============================================================*/
/* Index: REG_NINO_PK                                           */
/*==============================================================*/
create unique index REG_NINO_PK on REG_NINO (
ID_ALUMNO
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_1_FK on REG_NINO (
ID_PADRE
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_3_FK on REG_NINO (
ID_TUTOR
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_4_FK on REG_NINO (
COD_SOCIAL
);

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_15_FK on REG_NINO (
ID_AN_LECTIVO
);

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_22_FK on REG_NINO (
ID_MADRE
);

/*==============================================================*/
/* Table: RENDIMIENTO                                           */
/*==============================================================*/
create table RENDIMIENTO (
   COD_RENDIMIENTO      VARCHAR(5)           not null,
   COD_PROG             VARCHAR(5)           not null,
   ID_MAESTRO           INT4                 not null,
   IDMATRICULA          INT4                 not null,
   NOTA_PARCIAL         double precision         null,
   NOTA_GENERAL         double precision     not null,
   constraint PK_RENDIMIENTO primary key (COD_RENDIMIENTO)
);

/*==============================================================*/
/* Index: RENDIMIENTO_PK                                        */
/*==============================================================*/
create unique index RENDIMIENTO_PK on RENDIMIENTO (
COD_RENDIMIENTO
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_18_FK on RENDIMIENTO (
COD_PROG
);

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_19_FK on RENDIMIENTO (
ID_MAESTRO
);

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_16_FK on RENDIMIENTO (
IDMATRICULA
);

/*==============================================================*/
/* Table: TUTOR_REPRESENTANTE                                   */
/*==============================================================*/
create table TUTOR_REPRESENTANTE (
   ID_TUTOR             INT4                 not null,
   CED_TUTOR            VARCHAR(10)          not null,
   RELACION_CON_EL_NINO TEXT                 not null,
   NOMBRE_TUTOR         TEXT                 not null,
   APELLIDO_TUTOR       TEXT                 not null,
   CELULAR_TUTOR        VARCHAR(10)          not null,
   constraint PK_TUTOR_REPRESENTANTE primary key (ID_TUTOR)
);

/*==============================================================*/
/* Index: TUTOR_REPRESENTANTE_PK                                */
/*==============================================================*/
create unique index TUTOR_REPRESENTANTE_PK on TUTOR_REPRESENTANTE (
ID_TUTOR
);

/*==============================================================*/
/* CREACION DE FOREIGN KEY                              */
/*==============================================================*/

alter table ACTIVIDAD_EN_PROGRAMA
   add constraint FK_ACTIVIDA_RELATIONS_PROGRAMA foreign key (COD_PROG)
      references PROGRAMA (COD_PROG)
      on delete restrict on update restrict;

alter table ACTIVIDAD_EN_PROGRAMA
   add constraint FK_ACTIVIDA_RELATIONS_MAESTRO foreign key (ID_MAESTRO)
      references MAESTRO (ID_MAESTRO)
      on delete restrict on update restrict;

alter table CARACTERISTICA_DEL_NINO
   add constraint FK_CARACTER_RELATIONS_REG_NINO foreign key (ID_ALUMNO)
      references REG_NINO (ID_ALUMNO)
      on delete restrict on update restrict;

alter table MATRICULACION
   add constraint FK_MATRICUL_RELATIONS_REG_NINO foreign key (ID_ALUMNO)
      references REG_NINO (ID_ALUMNO)
      on delete restrict on update restrict;

alter table MATRICULACION
   add constraint FK_MATRICUL_RELATIONS_ANO_LECT foreign key (ID_AN_LECTIVO)
      references ANO_LECT (ID_AN_LECTIVO)
      on delete restrict on update restrict;

alter table PAGO
   add constraint FK_PAGO_RELATIONS_MATRICUL foreign key (IDMATRICULA)
      references MATRICULACION (IDMATRICULA)
      on delete restrict on update restrict;

alter table PROGRAMA
   add constraint FK_PROGRAMA_RELATIONS_MATRICUL foreign key (IDMATRICULA)
      references MATRICULACION (IDMATRICULA)
      on delete restrict on update restrict;

alter table REG_NINO
   add constraint FK_REG_NINO_RELATIONS_PADRE foreign key (ID_PADRE)
      references PADRE (ID_PADRE)
      on delete restrict on update restrict;

alter table REG_NINO
   add constraint FK_REG_NINO_RELATIONS_ANO_LECT foreign key (ID_AN_LECTIVO)
      references ANO_LECT (ID_AN_LECTIVO)
      on delete restrict on update restrict;

alter table REG_NINO
   add constraint FK_REG_NINO_RELATIONS_MADRE foreign key (ID_MADRE)
      references MADRE (ID_MADRE)
      on delete restrict on update restrict;

alter table REG_NINO
   add constraint FK_REG_NINO_RELATIONS_TUTOR_RE foreign key (ID_TUTOR)
      references TUTOR_REPRESENTANTE (ID_TUTOR)
      on delete restrict on update restrict;

alter table REG_NINO
   add constraint FK_REG_NINO_RELATIONS_ESTADO_S foreign key (COD_SOCIAL)
      references ESTADO_SOCIAL_NINO (COD_SOCIAL)
      on delete restrict on update restrict;

alter table RENDIMIENTO
   add constraint FK_RENDIMIE_RELATIONS_MATRICUL foreign key (IDMATRICULA)
      references MATRICULACION (IDMATRICULA)
      on delete restrict on update restrict;

alter table RENDIMIENTO
   add constraint FK_RENDIMIE_RELATIONS_PROGRAMA foreign key (COD_PROG)
      references PROGRAMA (COD_PROG)
      on delete restrict on update restrict;

alter table RENDIMIENTO
   add constraint FK_RENDIMIE_RELATIONS_MAESTRO foreign key (ID_MAESTRO)
      references MAESTRO (ID_MAESTRO)
      on delete restrict on update restrict;


