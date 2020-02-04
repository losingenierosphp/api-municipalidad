id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
lastnombre VARCHAR(20),
apellido VARCHAR(20),
email VARCHAR(20),
contrasena VARCHAR(20),
fechanacimiento DATE,
perfil int

INSERT INTO usuarios (lastnombre,apellido,email,contrasena,fechanacimiento,perfil)values('said','ravest','said.tattoo@gail.com','123','1987-06-25',1);

INSERT INTO data (estado,fecha,area,numerocheque,precio,numerofactura,fecharetiro,banco,cuenta,contacto1,contacto2,comentario)values (2,'1987-06-25',3,344434,1200,134567,'1987-06-25',3,43,'mail','fono','texto de prueba 2 ')


CREATE TABLE data (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    estado INT, /* TABLA ESTADOS*/
    fecha DATE,
    area INT,/* TABLA AREA*/
    numerocheque BIGINT,
    precio INT,
    numerofactura BIGINT,
    fecharetiro DATE,
    banco INT, /*TABLA BANCOS*/
    cuenta BIGINT,
    contacto1 VARCHAR(200),
    contacto2 VARCHAR(200),
    comentario TEXT
);


CREATE TABLE area (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    nombre VARCHAR(20)
);

insert into data

Insert into area (nombre) values ('Municipal');
Insert into area (nombre) values ('Salud');
Insert into area (nombre) values ('Educacion');

Insert into area (nombre) values ('Deposito');
Insert into estado (nombre) values ('Retirado');
Insert into estado (nombre) values ('Correo');
Insert into estado (nombre) values ('Llamado');
Insert into estado (nombre) values ('Depositar');
Insert into estado (nombre) values ('Farmacia');
Insert into estado (nombre) values ('Marcela');
Insert into estado (nombre) values ('Movil');
Insert into estado (nombre) values ('Edna');
Insert into estado (nombre) values ('Tesoreria');
Insert into estado (nombre) values ('Falta cedible');
Insert into estado (nombre) values ('Falta cedible/ avisado');
Insert into estado (nombre) values ('Sin contacto');
Insert into estado (nombre) values ('Anulado');
Insert into estado (nombre) values ('Retenido');
Insert into estado (nombre) values ('No contesta');
Insert into estado (nombre) values ('Otros');
create table estado (
         id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
        nombre VARCHAR(20)
)


SELECT estado.nombre as estado, 
data.fecha as fecha, area.nombre as area, 
data.numerocheque as cheque, 
data.fecharetiro as retiro, 
bancos.nombre as banco,
data.cuenta as cuenta,
data.contacto1 as emailcontacto,
data.contacto2 as fonocontacto,
data.comentario as comentario
FROM bancos
inner join data  on  bancos.id = data.banco
inner join estado on data.estado =  estado.id
inner join area on data.area = area.id;