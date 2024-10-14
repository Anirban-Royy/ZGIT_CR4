CLASS zac_simple_admp_class DEFINITION
  PUBLIC FINAL CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES : if_amdp_marker_hdb.
    TYPES      : tt_employee TYPE STANDARD TABLE OF zac_tab1.
    METHODS    : get_employee
                             EXPORTING VALUE(et_employee) TYPE tt_employee.

ENDCLASS.

CLASS zac_simple_admp_class IMPLEMENTATION.

  METHOD get_employee BY DATABASE PROCEDURE 
                     FOR HDB 
                     LANGUAGE SQLSCRIPT
                     USING zac_tab1.
                     
    et_employee = select * from zac_tab1;
  
  ENDMETHOD.

ENDCLASS.