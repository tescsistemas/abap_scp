@AbapCatalog.sqlViewName: 'Z_REM_DAYSL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Días restantes antes del fin de contrato'
define view z_b_rem_days
  as select from zrent_cars
{
  key matricula                                                              as Matricula,
      marca                                                                  as Marca,
      
      case
      when alq_hasta <> ''
      then dats_days_between( cast($session.system_date as abap.dats), alq_hasta) 
      else 0
       end as Dias
}
