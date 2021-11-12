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
Id_Mascota int identity(1,1),
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
Observaciones varchar(50)
)