@AbapCatalog.sqlViewName: 'ZV_BRANDSL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Marcas'
define view zv_b_brands as select from zrent_brands {

key marca as Marca,
url as Url
    
}
