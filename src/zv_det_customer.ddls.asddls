@AbapCatalog.sqlViewName: 'ZV_DET_CUSTL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Detalle clientes'
@Metadata.allowExtensions: true
define view zv_det_customer
  as select from zrent_customers
{
  key doc_id    as id,
  key matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellido,
      email     as Correo,
      cntr_type as Tipo_Contrato
}
