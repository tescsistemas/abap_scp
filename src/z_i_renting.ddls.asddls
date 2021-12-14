@AbapCatalog.sqlViewName: 'ZV_RENTL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Renting'
@Metadata.allowExtensions: true
define view z_i_renting
  as select from ZV_B_cars as Cars
  association [1]    to z_b_rem_days    as _RemDays     on Cars.Matricula = _RemDays.Matricula
  association [0..1] to zv_b_brands     as _Brands      on Cars.Marca = _Brands.Marca
  association [0..*] to zv_det_customer as _DetCustomer on Cars.Matricula = _DetCustomer.Matricula
{

  key Matricula,
      Marca,
      Modelo,
      Color,
      Motor,
      Potencia,
      unidad,
      Combustible,
      Consumo,
      FechaFabr,
      Puertas,
      Precio,
      Moneda,
      Alquilado,
      Desde,
      Hasta,
      case
      when _RemDays.Dias <= 0
      then 0
      when  _RemDays.Dias between 1 and 30 then 1
      when _RemDays.Dias between 31 and 100 then 2
      when _RemDays.Dias > 100 then 3
      else 0
      end as TiempoRenta,
      _Brands.Url,
      _DetCustomer

}
