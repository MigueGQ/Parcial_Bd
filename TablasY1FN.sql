Create database Veterinario
use Veterinario

Create table Departamento
(
Cod_Postal_Depar int primary key,
Nombre varchar (20)
)

Create table Municipio
(
Cod_Postal_Mun int primary key,
Cod_Postal_Depar int foreign key(Cod_Postal_Depar) references Departamento(Cod_Postal_Depar),
Nombre varchar(20)
)

Create table  Dueno_Mascota
(
Num_Identidad int primary key,
Nombre varchar(20),
Apellido varchar(20),
Direccion varchar(50),
Cod_Postal_Mun int foreign key(Cod_Postal_Mun) references Municipio(Cod_Postal_Mun) 
)

Create table Contacto
(
Id int primary key identity(1,1),
Num_Identidad int foreign key(Num_Identidad) references Dueno_Mascota(Num_Identidad),
Num_Telefono int
)

Create table Tipo_Raza
(
Id_TP int primary key identity(1,1),
Tipo_Animal varchar(30),
Raza varchar(30)
)

Create table Mascota
(
Id_Mascota int primary key identity(1,1),
Nombre varchar(30),
Observaciones varchar(max),
Id_TP int foreign key(Id_Tp) references Tipo_Raza(Id_TP)
)

Create table Cargo
(
Id_Cargo int primary key identity(1,1),
Nombre varchar(30)
)

Create table Veterinario
(
Id_Veterinario int primary key,
Nombre varchar(30),
Apellido varchar(30)
)

Create table Veterinario_Cargo
(
id_VC int primary key identity(1,1),
Id_Veterinario int foreign key(Id_Veterinario) references Veterinario(Id_Veterinario),
Id_Cargo int foreign key(Id_Cargo) references Cargo(Id_Cargo) 
)

Create table Ingresos
(
Id_Ingreso int primary key identity(1,1),
Motivos varchar(max),
Fecha date,
Observaciones varchar(50),
Num_Identidad int foreign key (Num_Identidad) references Dueno_Mascota(Num_Identidad),
Id_Mascota int foreign key (Id_Mascota) references Mascota(Id_Mascota),
Id_Veterinario int foreign key(Num_Identidad) references Veterinario(Id_Veterinario)
)

Insert into Departamento(Cod_Postal_Depar, Nombre)
Values 
(001, 'Chalatenango'),
(002, 'Cabañas')

Insert into Municipio
Values
(001, 001, 'Nueva Concepción'),
(002, 001, 'La Reina'),
(003, 002, 'Cojutepeque'),
(004, 002, 'Sensunte')

Insert into Dueno_Mascota
Values
(01, 'Panfilo', 'Papa', 'Av Chicunhuexo', 01),
(02, 'PAblo', 'Nerudo', 'Av Chicunhuexo', 01)

Insert into Contacto
Values
(01, 74773861),
(01, 74773865),
(02, 25648941)

Insert into Tipo_Raza
Values
('Perro', 'Pitbul'),
('Perro', 'ChaoChao'),
('Gato', 'Angora'),
('Culebra', 'Piton')

Insert into Mascota
Values
('Perro', 'Curso', 1),
('Dogui', 'Calvo', 2),
('Pelumbre', 'No respira', 3),
('Pelambre', 'Curso', 3),
('Rino', 'Maneada', 4),
('Cheke', 'Sucio', 1),
('Lucios', 'Curso', 2),
('Cule', 'Preñada', 4),
('Perro', 'Pañalitis', 3),
('Suegra', 'Depresión', 4)

Insert into Cargo
Values
('Enfermero'),
('Odontologo'),
('Veterinario Bañador')

Insert into Veterinario
Values
(1, 'Carlitos', 'Mancia'),
(2, 'Maria José', 'Alvarez'),
(3, 'Steven', 'Tejada'),
(4, 'Ronal Manuel', 'De León')

Insert into Veterinario_Cargo
Values
(1,1),
(2,2),
(4,3),
(3,2)

Insert into Ingresos
Values
('Curso', '2012-12-12', 'Mejoró', 01, 10, 1),
('Patita lastimada', '2011-12-12', 'Fractura', 02, 9, 2),
('Baño', '2020-12-12', 'Sucio', 01, 7, 1),
('Consulta', '2012-12-12', 'Sin observaciones', 01, 8, 1),
('Consulta', '2012-12-12', 'Sin observaciones', 01, 7, 1),
('Consulta', '2012-12-12', 'Sin observaciones', 01, 2, 1),
('Diente flojo', '2016-07-12', 'Mejoró', 01, 3, 2),
('Infección por mosca', '2012-10-12', 'Mejoró', 02, 4, 2),
('Curso', '2021-08-06', 'No mejoró', 02, 5, 1),
('Curso', '2021-09-12', 'Mejoró', 02, 5, 1),
('Corete de pelo', '2014-12-12', 'Quedó fachero', 02, 01, 1),
('Paliditis', '2012-12-12', 'Mejoró', 02, 04, 4),
('Curso', '2012-12-12', 'Mejoró', 01, 10, 1),
('Curso', '2012-12-12', 'Mejoró', 01, 10, 1)