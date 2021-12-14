CLASS zcl_delete_table DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_delete_table IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DELETE FROM zrent_brands.

    IF sy-subrc EQ 0.
      out->write( 'DATOS ELIMINADOS' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
