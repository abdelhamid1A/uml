/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  4/26/2020 6:41:58 PM                     */
/*==============================================================*/


drop table if exists Moto;

drop table if exists client;

drop table if exists reservation;

/*==============================================================*/
/* Table : Moto                                                 */
/*==============================================================*/
create table Moto
(
   id_moto              int not null,
   image                varchar(254),
   name                 varchar(254),
   price                int,
   primary key (id_moto)
);

/*==============================================================*/
/* Table : client                                               */
/*==============================================================*/
create table client
(
   id_client            int not null,
   nom                  varchar(254),
   email                varchar(254),
   password             varchar(254),
   primary key (id_client)
);

/*==============================================================*/
/* Table : reservation                                          */
/*==============================================================*/
create table reservation
(
   nbre_de_personne     int,
   id_client            int,
   id_moto              int,
   date_depart          datetime,
   date_dr_retoure      datetime
);

alter table reservation add constraint FK_Association_1 foreign key (id_moto)
      references Moto (id_moto) on delete restrict on update restrict;

alter table reservation add constraint FK_Association_2 foreign key (id_client)
      references client (id_client) on delete restrict on update restrict;

