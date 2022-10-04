/*
En este Srcit Creamos Vistas, Trigger sp Y las tablas de auditoria. 

*/

-- Vista Nombre de los clientes x factura
Create view V_Factura_por_Cliente as 
SELECT 
    F.Id_Factura as Numero_Factura ,
    F.FechaFactura , 
    c.Nombre As Cliente
FROM
    ekovacevic.facturacion as F 
Join 
	ekovacevic.clientes as C
	on F.Id_Cliente = C.Id_cliente
;

    
-- mejores vendedores los que mas Facturaron
Create view V_Mejores_vendedores as 
SELECT sum(Total_Factura) As 'Total vendido por vendedor' ,
CONCAT(V.Nombre, '   ' , V.Apellido) as 'Nombre Vendedor'
  FROM
    ekovacevic.facturacion as F 
Join 
	ekovacevic.Vendedores as V
	on F.Id_vendedor = V.Id_vendedor 
where F.Id_vendedor = F.Id_vendedor  
Group By  V.Nombre
Order by Total_Factura  desc
;

-- Productos Mas vendidos

Create view V_Productos_Mas_Vendidos as
SELECT  
P.Id_producto,
P.Descripcion ,
P.TipoProducto,
P.Marca,
Sum(F.Cantidad) as Cantidad_vendida 

FROM
    ekovacevic.prodcutosfacturados  as F
Join 
	ekovacevic.productos as P
	on F.Id_Producto = P.Id_Producto  
where F.Id_Producto = P.Id_Producto   
Group By  P.Id_Producto 
Order by Cantidad_vendida desc
;



-- Venta mayorista con descuentos
Create view V_Descuentos as 
Select
Id_Producto,
Descripcion,
TipoProducto,
Stock,
Marca,
Precio As 'Precio sin descuento' 
, round((Precio * '10' / 100) , 2)  As 'Descuento del 10%'
, round((precio - precio * '0.10' ), 2) As 'Precio Final con 10'
, round((Precio * '20' / 100), 2) As 'Descuento del 20%'
, round((precio - precio * '0.20' ), 2) As 'Precio Final con 20'
FROM ekovacevic.productos 
;


-- Nos muestra el contacto del proveedor por casa producto 
Create view V_Listado_proveedores_por_Producto as 
SELECT 
	P.Id_Producto,
	P.Descripcion,
    Pro.NombreProveedor,
	Pro.NombreContacto 
FROM 	
	ekovacevic.productos as P
Inner Join Ekovacevic.Proveedores as Pro
On P.ID_Proveedor = Pro.Id_Proveedor 
;



-- Ingresando el ID del producto te vevuele la marca del producto.
Use ekovacevic;
Delimiter $$
Create Function DevolverMarca (param_ID_Prodcuto int )  
Returns Varchar(100)  
Reads SQl Data 
Begin  
Declare Marca_Retun varchar(100);
SELECT Marca INTO Marca_Retun FROM Productos WHERE  param_ID_Prodcuto = id_producto ;
Return Marca_Retun;

End$$
Delimiter ;



#Funcion 3 - Dado el ID de un produco quien es el provedor

Use ekovacevic;
Delimiter $$
Create Function DevolverProvedor (param_ID_producto int)  
Returns Varchar(100)  
Reads SQl Data 
Begin  
Declare Proveedor_Retun varchar(100);

set Proveedor_Retun = ( 
SELECT NombreProveedor 
FROM 	
	Ekovacevic.Proveedores as Pro
Inner Join Ekovacevic.productos as P
On Pro.Id_Proveedor = P.Id_Proveedor 
where param_ID_producto = p.Id_Producto ) ;

Return Proveedor_Retun ;

End$$
Delimiter ;

-- SP Listar tabla y ordernar 

Use ekovacevic;
Delimiter $$
Create Procedure `SP_Listar_Productos` (in orden varchar(50))
Begin
If orden <> '' Then
Set @Ordenar =  Concat('Order by ' , orden) ;
else 
Set @ordenar = '' ;
end if ;

Set @Busqueda =  concat('Select * From `ekovacevic`.`Productos` ' , @ordenar)  ;


prepare querySQL From @Busqueda ;
execute querySQL ;
Deallocate prepare querySQL ;
End$$
Delimiter ;

-- SP Agregar Cleinte
Use ekovacevic;
Delimiter $$
Create Procedure `SP_Agregar_Cliente`(in Definir_Nombre varchar(50) , in Definir_Apellido varchar(50) , in Definir_Mail varchar(50) , in Definir_Direccion varchar(50) , in Definir_CodigoPostal int , in Definir_Telefono varchar(50) )
Begin

SET @Verificar = 0;

IF Definir_Nombre = '' THEN
SET @respuesta = 'SELECT \'VERIFICAR \' AS Error';
SET @Verificar = 1;
ELSE
SET @respuesta = CONCAT('INSERT INTO `ekovacevic`.`Clientes` (`nombre` , `Apellido`, `Mail`, `Direccion`, `codigoPostal` ,`Telefono`) VALUES (', '"', Definir_Nombre, '", "', Definir_Apellido, '", "', Definir_Mail, '", "', Definir_Direccion, '", "' , Definir_CodigoPostal, '", "' , Definir_Telefono, '")');
SET @seleccionar = 'SELECT * FROM `ekovacevic`.`Clientes` ORDER BY  Id_cliente DESC';
END IF;
    
PREPARE ejecutarSQL FROM @respuesta;
EXECUTE ejecutarSQL;
DEALLOCATE PREPARE ejecutarSQL;

IF @Verificar = 1 THEN
PREPARE seleccionarSQL FROM @Verificar;
EXECUTE seleccionarSQL;
DEALLOCATE PREPARE seleccionarSQL;
END IF;
END$$
Delimiter ;
-- --------------------------------------------------------------------------------------------------------


-- Crear tabla Auditoria Productos    
Use Ekovacevic ;
Create table if not exists Auditoria_Productos
(
    Id_Producto  int ,
	Precio_anterior decimal(10,2) ,
    Precio_Nuevo decimal(10,2) ,
    Fecha date ,
    Hora time ,
    usuario Varchar (50)
 );
 
 --  Creando un trigger que guarda los cambios de precio en los productos.
Use Ekovacevic ;
-- Delimiter $$ Si le pongo los delimiter no me funciona........ por eso estan comentados.
Create trigger tr_Auditoria_Productos
Before  Update on productos
For each row
insert into Auditoria_Productos (Id_Producto  ,  Precio_anterior, Precio_Nuevo , Fecha , hora, Usuario)
Values (New.Id_Producto  , Old.precio , new.precio , Current_date() , Current_time(),session_user())
;
-- Delimiter ;
/*
-- Comprobando que funciona el Trigger  cambiando un precio
Use Ekovacevic ;
UPDATE ekovacevic.productos SET precio  = '113' WHERE (`Id_Producto` = '1');
Select * from ekovacevic.auditoria_productos;
*/
-- -----------------------------------------------


-- Crear tabla Auditoria Clientes 
Use Ekovacevic ;

Create table if not exists Auditoria_Clientes
(
    Id_cliente  int ,
	NombreCliente varchar (50) ,
    Fecha date ,
    Hora time ,
    usuario Varchar (50)
 );
 
 --  Creando un trigger que mantiene copia de la insercion de clientes
Use Ekovacevic ;
-- Delimiter $$ Si le pongo los delimiter no me funciona........ por eso estan comentados.
Create trigger tr_Auditoria_Clientes
After insert on clientes
For each row
insert into Auditoria_Clientes (Id_cliente , NombreCliente ,  Fecha , hora, Usuario)
Values (New.Id_cliente , New.Nombre , Current_date() , Current_time(),session_user())
;
-- Delimiter $$ Si le pongo los delimiter no me funciona........ por eso estan comentados.
/*
-- Comprobando que funciona el Trigger Asienta en la base nombre ID, nombre.....
Use Ekovacevic ;
insert into ekovacevic.clientes (Nombre, Apellido, Mail, Direccion, CodigoPostal, Telefono)
	Values 
		('Trigger'  , 'Funciona', 'tf@gmail.com' , 'Av.Funciona 1112' , 1147 , '1161147874');
Select * from ekovacevic.auditoria_Clientes;
*/
-- ----------------------------------------------------------
