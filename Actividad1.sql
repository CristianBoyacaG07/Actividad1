CREATE DATABASE ACTIVIDAD_1;
USE ACTIVIDAD_1;

CREATE TABLE USUARIO(
ID_Usuario VARCHAR(20) NOT NULL,
primer_nombre_us VARCHAR (45),
segundo_nombre_ VARCHAR (45),
primer_apellido_us VARCHAR (45),
segundo_apellido_us VARCHAR (45),
telefono_us BIGINT,
fk_cod_ciudad INT ,
fk_cod_tdoc VARCHAR (4));


CREATE TABLE CIUDAD(
Cod_Ciudad INT NOT NULL,
Desc_Ciudad VARCHAR (35),
PRIMARY KEY (Cod_Ciudad));

CREATE TABLE Tipo_Doc(
Cod_tdoc VARCHAR (4) NOT NULL,
Desc_tdoc VARCHAR (45),
PRIMARY KEY (Cod_tdoc));

ALTER TABLE USUARIO ADD CONSTRAINT fk_usuario_ciudad FOREIGN KEY (fk_cod_ciudad) references CIUDAD (Cod_Ciudad) on update cascade;
ALTER TABLE USUARIO ADD CONSTRAINT fk_usuario_tipo_doc FOREIGN KEY (fk_cod_tdoc) REFERENCES Tipo_Doc (Cod_tdoc);
ALTER TABLE USUARIO ADD PRIMARY KEY (fk_cod_tdoc, ID_Usuario);