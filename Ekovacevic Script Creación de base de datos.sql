
/*
Este Script genera la base de datos
*/


-- Creado de la base de datos
Create database if not exists Ekovacevic;
-- poner en uso la base de datos
Use Ekovacevic ;
-- Creando tablas
-- tabla proveedores 
Create table if not exists Proveedores
(
    Id_Proveedor  int not null unique auto_increment primary key,
	NombreProveedor varchar (50) not null ,
    NombreContacto varchar (50) ,
    Telefono varchar (50) not null ,
	Mail varchar (50) not null
);
-- tabla productos
Create table if not exists Productos 
	(
    Id_Producto  int not null unique auto_increment primary key,
    Descripcion varchar (999) ,
    TipoProducto varchar (50)  not null,
    Stock int not null , 
    Marca varchar (50) not null ,
    Precio decimal (10,2) not null,
    Id_Proveedor  int not null,
   foreign key (Id_Proveedor) 
		references proveedores (Id_Proveedor) 
        on delete cascade   
        on update cascade   
	);
    
-- tabla Clientes
Create table if not exists Clientes
	(
    Id_cliente  int not null unique auto_increment primary key,
    Nombre varchar (50) ,
    Apellido varchar (50)  not null,
    Mail varchar (50) ,
    Direccion varchar (50)  not null,
    CodigoPostal int not null,
    Telefono varchar (50) ,
	FechaCarga TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ()  -- se lo copie al profe, por que no lo entendi, yo habia puesto current_date
    ); 
    
-- Tabla Vendedoores
Create table if not exists Vendedores (
Id_Vendedor  int not null unique auto_increment primary key,
Nombre varchar (50) ,
Apellido  varchar (50)  not null,
Telefono varchar (50)  not null,
Mail varchar (50) ,
FechaIngreso  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ()  -- se lo copie al profe, por que no lo entendi, yo habia puesto current_date
);

-- tabla Facturacion
Create table if not exists Facturacion
(
Id_Factura int not null unique auto_increment primary key, 
FechaFactura TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP (),  -- se lo copie al profe, por que no lo entendi, yo habia puesto current_date
Id_vendedor  int not null,
Id_Cliente int not null,
Total_Factura decimal (10,2) default (0.0), 
		Foreign key (Id_Vendedor) 
			references vendedores (Id_Vendedor) 
			on delete cascade   
			on update cascade , 
		Foreign key (Id_Cliente) 
			references Clientes (Id_Cliente) 
			on delete cascade   
			on update cascade   
);

-- productosfacturados
Create table if not exists ProdcutosFacturados (
Id_Venta int not null unique auto_increment primary key, 
Id_Factura int not null,
FechaFactura TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP (),  -- se lo copie al profe, por que no lo entendi, yo habia puesto current_date
Id_Producto int not null,
Cantidad int not null ,
		Foreign key (Id_Factura) 
			references Facturacion(Id_Factura) 
			on delete cascade   
			on update cascade , 
		Foreign key (Id_Producto) 
			references Productos(Id_Producto) 
			on delete cascade   
			on update cascade   

);