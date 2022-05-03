


use('opticaPipo');


db.dropDatabase();

use('opticaPipo');




db.proveedor.insertMany ([{

 'id_proveedor':1,
 'nombre':'Versac S.A.',

 'direccion':{

            'calle':'Carretera Plumillo',
            'numero':'221',
            'piso': '0',
            'puerta':'0',
            'codigo_postal':'2018',
            'pais':'España',

  },

 'telefono':'555-1234',
 'fax':'21333555',
 'NIF':'658981456',

 
 },

{
'id_proveedor':2,
'nombre':'Lo S.L',

 'dirección': {

              'calle': 'Av. Coglan',
              'numero':'22',
              'piso':'0',
              'puerta':'0',
              'codigo_postal':'020321',
              'pais':'Portugal',

   },

 'telefono':'555-9658',
 'fax':'215556987',
 'NIF':'3698521457',

},

{

 'id_proveedor':3,
 'nombre':'Sands',

 'dirección':{

              'calle':'Calle Menorca',
              'numero':'5',
              'piso':'3',
              'puerta':'2',
              'codigo_postal':'080036',
              'pais':'España',

},
 
 'telefono':'555-3515',
 'fax':'3652112458',
 'NIF':'3652158',

},



]);


//==========================================================================================================
//==========================================================================================================

db.cliente.insertMany([

  {  
  
  'id': 1, 
  'nombre': 'Beto', 
  'direccion': 'Av. de las camelias 78', 
  'telefono': '555-5565', 
  'email': 'beto@bing.es',
  'fecha_registro':'2019-12-31',
  'recomendador': 'Natalio',
  'fecha de venta':'2020-01-01',
  'gafas': {
              'id':1,
              'marca':'Oackle', 
              'cristales_grad_izq': 'Si', 
              'cristales_grad_der':'No', 
              'cristales_color':'verde', 
              'montura_color':'azul', 
              'montura_flotante':'Si', 
              'montura_pasta':'No', 
              'montura_metalica':'Si',
              'precio':35,

              'proveedor': {

                $ref:'proveedor',
                id:3,


                            },

              },

  },


  {
   
  'id': 2, 
  'nombre': 'Natalio', 
  'direccion': 'Princesa Perfumo 123', 
  'telefono': '555-5565', 
  'email': 'natalio@terra.com',
  'fecha_registro':'2018-2-09',
  'recomendador': 'Moly',
  'fecha de venta':'2020-10-31',
  'gafas':{

              'id':2,
              'marca':'Luxy', 
              'cristales_grad_izq':'No', 
              'cristales_grad_der':'25', 
              'cristales_color':'No', 
              'montura_color':'No', 
              'montura_flotante':'Si', 
              'montura_pasta':'No', 
              'montura_metalica':'Si',
              'precio':65,

              'proveedor': {

                $ref:'proveedor',
                id:2,


                          },

            },

  },

  {

  'id': 3, 
  'nombre': 'Moly', 
  'direccion': 'Guateque 7', 
  'telefono': '555-5567', 
  'email': 'moly@icq.com',
  'fecha_registro':'2014-06-23',
  'recomendador': 'Beto',
  'fecha de venta':'2020-11-23',
  'gafas': {  

              'id':3,
              'marca':'Manolito', 
              'cristales_grad_izq':'25', 
              'cristales_grad_der':'75', 
              'cristales_color':'No', 
              'montura_color':'No', 
              'montura_flotante':'Si', 
              'montura_pasta':'No', 
              'montura_metalica':'Si',
              'precio':101,

              'proveedor': {

                $ref:'proveedor',
                id:1,


            },

      },

  },


  ]);

 

