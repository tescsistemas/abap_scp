@AbapCatalog.sqlViewName: 'ZV_CARS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Autos'
define view ZV_B_cars
  as select from zrent_cars
{

  key matricula    as Matricula,
      marca        as Marca,
      modelo       as Modelo,
      color        as Color,
      motor        as Motor,
      potencia     as Potencia,
      und_potencia as unidad,
      combustible  as Combustible,
      consumo      as Consumo,
      fecha_fabr   as FechaFabr,
      puertas      as Puertas,
      precio       as Precio,
      moneda       as Moneda,
      alquilado    as Alquilado,
      alq_desde    as Desde,
      alq_hasta    as Hasta
}
