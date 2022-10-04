/*
Este script carga datos de prueba  Solo para poder hacer test en la base de datos
*/


-- Tabla clientes
insert into ekovacevic.clientes (Nombre, Apellido, Mail, Direccion, CodigoPostal, Telefono)
	Values 
		('Estean' , 'Kovacevic', 'Ekovacevic@gmail.com' , 'Av. Santa fe 3531' , 1425 , '1165367198'),
		('Juan' , 'Armas' , 'jarmas@gmail.com' , 'Armenia 2215 ' , 1414 , '1167489964'),
		('Sebastian' , 'Delgado', 'sebadelgado@gmail.com' , 'Monrroe 1708 7 "B"' , 1905 , '1154782414') ,
		('Julieta' , 'Pereyra Boue', 'Jpb@hotmail.com' , 'Julian Alvarez 3447 ' , 11475 , '1165797979') ,
		('Gerardo' , 'Ferrante', 'gerardofe@hotmail.com' , 'uriarte 2514 "' , 2547 , '1134719985') ,
		('Josefina' , 'Cordoba', 'jopicordoba@gmail.com' , 'ortiz de ocampo 2487 14 "B"' , 1425 , '1167843321'),
		('Daniela' , 'Vacaro', 'dani@gmail.com' , 'marcos paz 3361' , 1417 , '1139984417'),
		('Guido' , 'Della Vela', 'Gidomartin@gmail.com' , 'armenia 2215 2 "B" ' , 1425 , '1157742526'),
		('Alan' , 'castiglia', 'elalan@gmail.com' , 'Cabildo 921' , 1426 , '1126542397'),
		('Stefany' , 'Nelly', 'Stefy14@gmail.com' , 'Sanabria 1684' , 1418 , '1164892214')
;
 
 -- Tabla vendedores
insert into ekovacevic.Vendedores (Nombre, Apellido, telefono, Mail)
	Values
		('Daniel' , 'Leisarrague', '201' , 'Dleisarrague@tecnohard.com.ar') ,
        ('Marcelo' , 'Rodiguez', '218' , 'mrodriguez@tecnohard.com.ar') ,
        ('Javier' , 'Dileva', '207' , 'Jdileva@tecnohard.com.ar'),
        ('Ariel' , 'Dominguez', '205' , 'Adiminguez@tecnohard.com.ar') ,
        ('Graciela' , 'Rinaldi', '202' , 'Grinaldi@tecnohard.com.ar')
;
-- Tabla proveedores
Insert Into ekovacevic.proveedores (NombreProveedor, NombreContacto, Telefono, Mail)
	Values
		('HP', 'Arian Rua' ,'114845-2218' , 'Arua@hp.com.ar') ,                   	 -- ID 1
		('Dell' , 'Federico Terier' , '1168523674' , 'Fterier@dell.com.ar') , 		  	 -- ID 2
        ('Noga Net', 'Romina Rodriguez', '114902-2518' , 'Romina@Noganet.com.ar') ,  	 -- ID 3
        ('Logitech', 'null' ,'115244441', 'pedidos@Logitech.com.ar') ,			  	 -- ID 4
        ('Asus', 'German Ricardo', '4318-5555' ,'compras@asus.com.ar') ,			 	 -- ID 5
        ('Bangho', 'ernest', '748-0000', 'Compras@bangho.com.ar') ,					 -- ID 6	
        ('Exo Argentina', 'Gabriel Medina' ,'1168740020' , 'presupuestos@exo.com.ar') , -- ID 7
        ('Apple', 'Brian', '4400-8700' ,'Brianrodriguez@onclik.com.ar') ,				 -- ID 8
        ('Genius', 'Gariel', '5900-0010', 'genius@gmail.com.ar'), 					 -- ID 9
		('ImportadorARG', 'Daniel ', '4111-4788' , 'entregas@gmail.com.ar')			 -- ID 10
;

-- Tabla Productos

Insert Into Ekovacevic.Productos (Descripcion , TipoProducto, Stock, Marca, Precio, Id_Proveedor)
	Values
		('Gammer RJX-2526' , 'Mouse' , 214 , 'Noga Net' , 2714 , 3),
        ('Lightspeed G502 Inalambrico' , 'Mouse' , 189 , 'Noga Net' , 14799 , 3),
        ('Noganet 78005' , 'Teclado' , 108 , 'Noga Net' , 566.99 , 3),
        ('Noganet Ganon XS gamer  Luz' , 'Teclado' , 119 , 'Noga Net' , 5477 , 3),
        ('NG-900U negro' , 'Mouse' , 447 , 'Noga Net' , 569 , 3),
		('NG-900U Rojo' , 'Mouse' , 562 , 'Noga Net' , 569 , 3),
		('NG-900U Rosa' , 'Mouse' , 411 , 'Noga Net' , 569 , 3),
		('NG-900U Azul' , 'Mouse' , 118 , 'Noga Net' , 569 , 3),
		('NG-900U Celeste' , 'Mouse' , 147 , 'Noga Net' , 569 , 3),
        ('Ng-918bt Rosa' , 'Auriculares' , 710 , 'Noga Net' ,5499 , 3),
        ('Ng-918bt Negro' , 'Auriculares' , 410 , 'Noga Net' ,5499 , 3),
        ('Ng-918bt Azul' , 'Auriculares' , 710 , 'Noga Net' ,5499 , 3),
        ('Ng-918bt Blanco' , 'Auriculares' , 410 , 'Noga Net' ,5499 , 3),
        ('Master Series MX Inalambrico Recargable' , 'Mouse' , 119 , 'Logitech' , 17799 , 4),
        ('14-dq2029la - Intel Core i5 8GB RAM 256GB SSD Intel Iris Xe Graphics G7' , 'Notebook' , 115 , 'HP' ,151998 , 1),
        ('15-ef2126wm spruce blue 15.6", AMD Ryzen 5 5500U 8GBRAM 256GB SSD, AMD Radeon RX Vega 7 ' , 'Notebook' , 203 , 'HP' , 130990 , 1),
        ('HP 240 G7' , 'Notebook' , 128 , 'HP' , 99000, 1),
        ('HP Laser 107w con wifi ' , 'Impresora' , 108 , 'HP' , 49499 , 10),
        ('Xerox Phaser 3020/BI con wifi  ' , 'Impresora' , 465 , 'Xerox' , 47187 , 10),
        ('Epson SureColor F170 con wifi ' , 'Impresora' , 112 , 'Epson' , 109774 , 10),
        ('HDD solido 500G' , 'Hdd' , 113 , 'Segate' , 15449 , 1) ,
        ('HDD solido 256', 'Hdd' , 5, 'Segate' , 8740, 1),
        ('Teclado generico' , 'teclado' , 188 , 'Noga Net' , 599 , 4),
		('M280 negro' , 'Mouse' , 488 , 'Logitecht' , 2499.99 , 4),
        ('M280 Azul' , 'Mouse' , 488 , 'Logitecht' , 2499.99 , 4),
        ('M280 Rojo' , 'Mouse' , 379 , 'Logitecht' , 2499.99 , 4),
        ('M280 Blanco' , 'Mouse' , 474 , 'Logitecht' , 2499.99 , 4),
        ('Pop Keys bluetooth Negro' , 'Teclado' , 788 , 'Logitecht' , 13999.99 , 4),
        ('Pop Keys bluetooth Azul' , 'Teclado' , 788 , 'Logitecht' , 13999.99 , 4),
        ('Pop Keys bluetooth Rojo' , 'Teclado' , 788 , 'Logitecht' , 13999.99 , 4),
        ('Pop Keys bluetooth Blanco' , 'Teclado' , 788 , 'Logitecht' , 13999.99 , 4),
        ('G Series G435 blanco' , 'Auriculares' , 474 , 'Logitecht' , 15550 , 4),
        ('G Series G435 Negro' , 'Auriculares' , 714 , 'Logitecht' , 15550 , 4),
        ('G Series G435 Azul/Frambuesa' , 'Auriculares' , 322 , 'Logitecht' , 15550 , 4),
		('G Series G435 Blanco crudo/Lila' , 'Auriculares' , 418 , 'Logitecht' , 15550 , 4),
        ('G413 Se Mecánico' , 'Teclado' , 154 , 'Logitecht' , 3947 , 4),
        ('G Series G332 black' , 'Auriculares' , 619 , 'Logitecht' , 10099.99 , 4),
        ('32gb Kit 2x16gb Ddr4 ' , 'Memoria' , 775 , 'samsung' , 58999 , 2),
        ('16gb Kit 2x18GB Ddr4 ' , 'Memoria' , 477 , 'samsung' , 34499 , 2),
        ('8gb Ddr4 ' , 'Memoria' , 142 , 'samsung' , 16499 , 2),
        ('32 Ddr4 ' , 'Memoria' , 115 , 'HP' , 63999 , 1),
        ('16gb Ddr4 ' , 'Memoria' , 113 , 'HP' , 39870 , 1),
        ('8 GB Ddr4 ' , 'Memoria' , 222 , 'HP' , 15449 , 1),
		('Dell Inspiron 3515 plateada 15.5", AMD Ryzen 5 3450U 8GB RAM 256GB SSD, AMD Radeon RX Vega 8 ' , 'Notebook' , 512 , 'Dell' , 149999, 2),
		('Dell Inspiron 3502 plata 15.55", Intel Celeron N4020 4GB RAM 128GB SSD, Intel UHD Graphics' , 'Notebook' , 145 , 'Dell' , 2714 , 2),
		('Dell Latitude 5420 gris 355.6mm, Intel Core i5 1135G7 8GB RAM 256GB SSD, Intel Iris Xe Graphics G7' , 'Notebook' , 147 , 'Dell' , 2714 , 2), 
		('Dual GeForce GTX 16 Series GTX 1650' , 'Placa Video' , 305 , 'Asus' , 64000 , 4),
        ('Nvidia GeForce RTX 3060 ROG' , 'Placa Video' , 175 , 'Asus' , 229999 , 4),
        ('Nvidia GeForce GTX 1660 SUPER' , 'Placa Video' , 145 , 'Gigabyte' , 89999 , 10),
        ('Nvidia Ventus GeForce RTX 2060' , 'Placa Video' , 788 , 'MSI' , 92299 , 10),
        ('NvidiaGeForce RTX 3070' , 'Placa Video' , 147 , 'Evga' , 290099 , 10),
		('NvidiaGeForce RTX 3070' , 'Placa Video' , 486 , 'Zotac' , 200199 , 10),
        ('P22v G4 led 21.5' , 'Monitor' , 140 , 'HP' , 47000 , 1),
		('19M38A led 19 ' , 'Monitor' , 147 , 'LG' , 48400 , 7),
        ('curvo UltraGear 34GL750 led 474 ' , 'Monitor' , 24 , 'LG' , 47000 , 7),
        ('Elitedisplay E202 ' , 'Monitor' , 668 , 'HP' , 67000 , 1),
        ('VG248QG Gaming led 24' , 'Monitor' , 710 , 'Asus' , 47000 , 5),
        ('Rog Swift Pg65uq 65 Hdr Gaming 144hz 4k' , 'Monitor' , 10 , 'Asus' , 890099 , 5),
        ('Tuf Curvo 27 Gaming Vg27wq1b 165hz 1ms' , 'Monitor' , 35 , 'Asus' , 101099 , 5),
        ('ZenBook 14 UM425QA pine gray 14", AMD Ryzen 5 4500U 8GB RAM 512GB SSD, AMD Radeon RX' , 'Notebook' , 210 , 'Asus' , 199999 , 5),
        ('VivoBook X413JA dreamy white 14", Intel Core i3 1005G1 4GB RAM 128GB SSD, Intel UHD Graphics G1' , 'Notebook' , 110 , 'Asus' , 149899 , 5),
        ('Ultra Thin L510MA star black 15.6", Intel Celeron N4020 4GB RAM 128GB SSD, Intel UHD Graphics 600' , 'Notebook' , 347 , 'Asus' ,97998 , 5),
        ('Em2110w 21.5 Pulgadas ' , 'Monitor' , 463 , 'Bangho' , 47000 , 6),
        ('Max L5 i3 gris oscura 15.6", Intel Core i3 10110U 8GB de RAM 240GB SSD ' , 'Notebook' , 243 , 'Bangho' , 126099 , 6),
        ('Max L4 i1 gris oscura 14", Intel Celeron N4000 4GB de RAM 120GB SSD ' , 'Notebook' , 163 , 'Bangho' , 60099 , 6),
        ('All In One Banghó 24 Fhd Core I5 8gb 480gb Ssd E24 I5 ' , 'PC Escritorio' , 147 , 'Bangho' , 129000 , 6),
		('Cross B02 Core I3 8gb 240gb Ssd 22 Fhd ' , 'PC Escritorio' , 147 , 'Bangho' , 99998 , 6),
        ('Gamer Gm Carbide Core I3 Gtx1050 8gb 480gb Win 11 ' , 'PC Escritorio' , 99 , 'Bangho' , 199889 , 6),
        ('KB-118' , 'Teclado' , 10 , 'Genius' , 1190 , 9),
		('Dx-110' , 'Mouse' , 108 , 'Genius' , 1230 , 9),
        ('Kit de teclado y mouse KM-200' , 'Teclado' , 784 , 'Genius' , 2099 , 9),
		('Eco-8100 Wireless' , 'Mouse' , 1101 , 'Genius' ,2099 , 9),
		('Scorpion K215 gamer luz' , 'Teclado' , 1140 , 'Genius' , 2140 , 9),
        ('Smart XQ3H-S3182 plateada 15.6", Intel Core i3 1115G4 8GB de RAM 256GB SSD, Intel UHD Graphics Xe G4' , 'Notebook' , 112 , 'Exo' , 129799, 7),
        ('Smart M33 gris 14.1", Intel Celeron N4020 4GB de RAM 64GB SSD, Intel UHD Graphics 600' , 'Notebook' , 138 , 'Exo' , 68799, 7),
        ('Clever A2-h3388 Amd Ryzen 3 3200g 8gb 1tb' , 'PC Escritorio' , 288 , 'Exo' , 94799, 7),
		('All In One X5-s7785 Intel I7-11va 8gb Ssd 500gb 23" ' , 'PC Escritorio' , 199 , 'Exo' , 247000, 7),
		('MacBook Pro 14 pulgadas, Chip M1 Pro 16 GB RAM, 1 TB SSD Gris' , 'Notebook' , 101 , 'Apple' , 729000, 8),
        ('MacBook Pro 14 pulgadas, Chip M1 Pro 16 GB RAM, 1 TB SSD Oro' , 'Notebook' , 79 , 'Apple' , 729000, 8),
        ('MacBook Pro 14 pulgadas, Chip M1 Pro 16 GB RAM, 1 TB SSD Plata ' , 'Notebook' , 47 , 'Apple' , 729000, 8),
        ('MacBook Pro 13 pulgadas, 2020, Chip M1, 256 GB de SSD, 8 GB de RAM Gris" ' , 'Notebook' , 147 , 'Apple' , 365000 , 8),
        ('MacBook Pro 13 pulgadas, 2020, Chip M1, 256 GB de SSD, 8 GB de RAM Oro" ' , 'Notebook' , 47 , 'Apple' , 365000 , 8 ),
        ('MacBook Pro 13 pulgadas, 2020, Chip M1, 256 GB de SSD, 8 GB de RAM Plata" ' , 'Notebook' , 99 , 'Apple' , 365000 , 8),
        ('Macbook Air 13 pulgadas, 2020, Chip M1, 256 GB de SSD, 8 GB de RAM  Gris" ' , 'Notebook' , 147 , 'Apple' , 269990, 8),
        ('Macbook Air 13 pulgadas, 2020, Chip M1, 256 GB de SSD, 8 GB de RAM  Oro' , 'Notebook' , 211 , 'Apple' , 269990, 8),
		('Macbook Air 13 pulgadas, 2020, Chip M1, 256 GB de SSD, 8 GB de RAM  plata' , 'Notebook' , 199 , 'Apple' , 269990, 8),
        ('Magic Mouse 2 Gris espacial' , 'Mouse' , 74 , 'Apple' , 39999, 8),
        ('Magic Mouse 2 Blanco' , 'Mouse' , 147 , 'Apple' , 39999, 8),
        ('Magic Keyboard - Español' , 'Teclado' , 147 , 'Apple' , 36889, 8),
        ('Magic Keyboard - Ingles' , 'Teclado' , 85 , 'Apple' , 36889, 8),
        ('AirPods Pro' , 'Auriculares' , 147, 'Apple' , 49889, 8),
        ('EarPods con conector Lightning' , 'Auriculares' , 43 , 'Apple' , 4550, 8),
        ('AirPods Max Azul Cielo' , 'Auriculares' , 399 , 'Apple' , 199990, 8),
        ('AirPods Max Gris espacial' , 'Auriculares' , 399 , 'Apple' , 199990, 8),
        ('AirPods Max Plateado' , 'Auriculares' , 399 , 'Apple' , 199990, 8),
        ('AirPods Max Rosa' , 'Auriculares' , 399 , 'Apple' , 199990, 8),
        ('AirPods Max Verde' , 'Auriculares' , 399 , 'Apple' , 199990, 8)
;
-- Carga de Facturacion con Total en 0.00
Insert into ekovacevic.facturacion (Id_vendedor , Id_Cliente)
Values
	(1 , 1),    -- ID factura 1
    (4 , 8),    -- ID factura 2
    (2 , 4 ),   -- ID factura 3
    (3 , 10),	-- ID factura 4
	(5 , 1),	-- ID factura 5
    (4 , 2),	-- ID factura 6
    (5 , 10),	-- ID factura 7
    (1 , 1),	-- ID factura 8
    (4 , 8),	-- ID factura 9
    (3 , 10),	-- ID factura 10
    (5 , 8)		-- ID factura 11
;
-- Carga de productos Facturados
 Insert into ekovacevic.prodcutosfacturados (ID_Factura, Id_Producto ,Cantidad)
 Values 
	(1 , 1 , 5),
    (1 , 12 , 1),
    (1 , 19 ,3),
    (2 ,84 , 2),
    (3 , 22 , 5 ),
    (3 , 48 , 1 ),
    (4 , 72 , 17 ),
	(4 , 72 , 41 ),
	(5 , 16 , 1 ),
    (5 , 17 , 1 ),
    (5 , 34 , 2 ),
    (6 , 79 , 18 ),
    (7 , 27 , 2 ),
    (7 , 26 , 1 ),
    (8 , 4 , 3 ),
    (9 , 4 , 1 ),
    (10 , 57 , 1 ),
    (10 , 41 , 1 ),
    (11 , 79 , 2 )
  ;
  
-- SET @last_id = LAST_INSERT_ID();  NO Me Funciono.

-- Actualizar todos los Totales.
 UPDATE ekovacevic.facturacion
SET Total_Factura =  (Select SUM(T.Cantidad * P.Precio)
From ekovacevic.productos as P
Inner join ekovacevic.prodcutosfacturados as T
on  P.Id_producto  = T.Id_producto
where T.Id_Factura =  '1')
where Id_factura =  '1'
;
 UPDATE ekovacevic.facturacion
SET Total_Factura =  (Select SUM(T.Cantidad * P.Precio)
From ekovacevic.productos as P
Inner join ekovacevic.prodcutosfacturados as T
on  P.Id_producto  = T.Id_producto
where T.Id_Factura =  '2')
where Id_factura =  '2'
;
 UPDATE ekovacevic.facturacion
SET Total_Factura =  (Select SUM(T.Cantidad * P.Precio)
From ekovacevic.productos as P
Inner join ekovacevic.prodcutosfacturados as T
on  P.Id_producto  = T.Id_producto
where T.Id_Factura =  '3')
where Id_factura =  '3'
;
 UPDATE ekovacevic.facturacion
SET Total_Factura =  (Select SUM(T.Cantidad * P.Precio)
From ekovacevic.productos as P
Inner join ekovacevic.prodcutosfacturados as T
on  P.Id_producto  = T.Id_producto
where T.Id_Factura =  '4')
where Id_factura =  '4'
;
 UPDATE ekovacevic.facturacion
SET Total_Factura =  (Select SUM(T.Cantidad * P.Precio)
From ekovacevic.productos as P
Inner join ekovacevic.prodcutosfacturados as T
on  P.Id_producto  = T.Id_producto
where T.Id_Factura =  '5')
where Id_factura =  '5'
;
 UPDATE ekovacevic.facturacion
SET Total_Factura =  (Select SUM(T.Cantidad * P.Precio)
From ekovacevic.productos as P
Inner join ekovacevic.prodcutosfacturados as T
on  P.Id_producto  = T.Id_producto
where T.Id_Factura =  '6')
where Id_factura =  '6' ;
;
 UPDATE ekovacevic.facturacion
SET Total_Factura =  (Select SUM(T.Cantidad * P.Precio)
From ekovacevic.productos as P
Inner join ekovacevic.prodcutosfacturados as T
on  P.Id_producto  = T.Id_producto
where T.Id_Factura =  '7')
where Id_factura =  '7'
;
 UPDATE ekovacevic.facturacion
SET Total_Factura =  (Select SUM(T.Cantidad * P.Precio)
From ekovacevic.productos as P
Inner join ekovacevic.prodcutosfacturados as T
on  P.Id_producto  = T.Id_producto
where T.Id_Factura =  '8')
where Id_factura =  '8'
;
 UPDATE ekovacevic.facturacion
SET Total_Factura =  (Select SUM(T.Cantidad * P.Precio)
From ekovacevic.productos as P
Inner join ekovacevic.prodcutosfacturados as T
on  P.Id_producto  = T.Id_producto
where T.Id_Factura =  '9')
where Id_factura =  '9'
;
 UPDATE ekovacevic.facturacion
SET Total_Factura =  (Select SUM(T.Cantidad * P.Precio)
From ekovacevic.productos as P
Inner join ekovacevic.prodcutosfacturados as T
on  P.Id_producto  = T.Id_producto
where T.Id_Factura =  '10')
where Id_factura =  '10'
;
 UPDATE ekovacevic.facturacion
SET Total_Factura =  (Select SUM(T.Cantidad * P.Precio)
From ekovacevic.productos as P
Inner join ekovacevic.prodcutosfacturados as T
on  P.Id_producto  = T.Id_producto
where T.Id_Factura =  '11')
where Id_factura =  '11'
;
