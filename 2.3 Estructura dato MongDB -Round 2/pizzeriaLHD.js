

use('pizzeriaLHD');


db.dropDatabase();

use('pizzeriaLHD');



db.tienda.insertMany([{

'id':1,
'direccion':'Av. Libelula 9',
'codigo_postal':'01712',
'localidad':'Amacort',
'provincia':'Lleida', 
'empleado':
          {
          'id':3,
          'nombre':'Lidia',
          'apellido':'Puig',
          'NIF':'65842152',
          'telefono':'555-6321',
          'cocinero':'Si',
          'repartidor':'Si',

          },

 },

 {

'id':2,
'direccion':'Calle Guel 65',
'codigo_postal':'01569',
'localidad':'Hospitalet',
'provincia':'Barcelona', 
'empleado': {
            'id':1,
            'nombre':'Pipo',
            'apellido':'Piccolo',
            'NIF':'63215478' ,
            'telefono':'555-8521' ,
            'cocinero':'Si' ,
            'repartidor':'No',

             },


 },


{  

'id':3,
'direccion': 'Carretera del molino 222',
'codigo_postal':'01544',
'localidad':'Plot',
'provincia':'Tarragona', 
'empleado':
         {
          'id':2,
          'nombre':'Luca',
          'apellido':'Tudera',
          'NIF':'65426321',
          'telefono':'555-8521',
          'cocinero':'No',
          'repartidor':'Si',

}


},


]);



//=========================================================

db.productos.insertMany([
  
  {

'id': 1,
'tipo':'pizza',
'Nombre':'Margarita',
'Descripción':'Muzzarella y tomate',
'Imagen':'No',
'Precio':10,

},

{
'id':2,
'tipo':'pizza',
'Nombre':'Calabresa',
'Descripción':'Muzzarella y salami',
'Imagen':'No',
'Precio':13,


},

{
'id':3,
'tipo':'pizza',
'Nombre':'Fugazza',
'Descripción':'Muzzarella y cebolla',
'Imagen':'No',
'Precio':15,


},

{
 'id':1,
'tipo':'empanada',
'Nombre':'Carne',
'Descripción':'Carne picada especiada',
'Imagen':'No',
'Precio':2,


},

{

'id':2,
'tipo':'empanada',
'Nombre':'Pollo',
'Descripción':'Carne de pollo especiado',
'Imagen':'No',
'Precio':2,

 },

 {  

'id':3,
'tipo':'empanada',
'Nombre':'Queso',
'Descripción':'Muzzarella,jamón y cebolla',
'Imagen':'No',
'Precio': 3,

},

{

'id':1,
'tipo':'bebida',
'Nombre':'Coca-cola',
'Descripción':'Bebida sin alcohol',
'Imagen':'No',
'Precio':2,
 

 },

 {

'id':2,
'tipo':'bebida',
'Nombre':'Fanta',
'Descripción':'Bebida de frienzone sin alcohol',
'Imagen':'No',
'Precio':2,

 },


{  

'id':3,
'tipo': 'bebida',
'Nombre':'Estrella de Galicia',
'Descripción':'Cerveza con alcohol',
'Imagen':'No',
'Precio': 3,

},


])




db.cliente.insertMany([
    {  
  
  'id':1,
  'nombre':'Pepo',
  'apellidos':'Pig',
  'direccion':'Calle Umbrera 78' ,
  'codigo_postal':'010235' ,
  'telefono': '555-6321',
  'pedido': {
            'id':3,
            'Fecha_hora':'2020-03-12',
            'Reparto_domicilio':'19:30:45',
            'Recogida_tienda':'Si',
            'Cantidad_productos':'11' ,
            'Precio_total':'65', 
            'repartido':{

              $ref:'tienda',
              id: 2,
              $ref:'empleado',
              id:1,
              $ref:'productos',
              id:3,
              }

            }
  
 },

  {   
  
  'id':2,
  'nombre':'Tico',
  'apellidos':'Molo',
  'direccion':'Av. Caspirin 259' ,
  'codigo_postal':'010236',
  'telefono':'555-8965',
  'pedido':
          {
          'id':1,
          'Fecha_hora':'2020-03-03',
          'Reparto_domicilio':'12:35:21',
          'Recogida_tienda':'no',
          'Cantidad_productos':'5' ,
          'Precio_total':'43',
          'repartidor':{
            $ref:'tienda',
            id:1,
            $ref:'empleado',
            id:3,
            $ref:'productos',
            id:2,

          },

      },

   },

 {   

  'id':3,
  'nombre':'Sako',
  'apellidos':'Ubbi',
  'direccion':'Av. Asloin 4',
  'codigo_postal':'010237' ,
  'telefono':'555-7896' ,
  'pedido':{

        'id':2,
        'Fecha_hora':'2020-03-03',
        'Reparto_domicilio':'12:41:01',
        'Recogida_tienda':'Si',
        'Cantidad_productos':'2' ,
        'Precio_total':'9',
            

          },

   },


]);


