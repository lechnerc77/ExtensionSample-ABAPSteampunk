CLASS zz_cl_oh_fill_db_table DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zz_cl_oh_fill_db_table IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


   DATA itab TYPE TABLE OF zzohorderhistory.

*   fill internal travel table (itab)
    itab = VALUE #(
      ( orderno = '76272720' businesspartner = '1245783695' orderdate = '20201012' deliverydate = '20201105' deliverystatus = 'C' wasorderdelayed = 'true' )
      ( orderno = '76272715' businesspartner = '1245783695' orderdate = '20200808' deliverydate = '20200830' deliverystatus = 'C' wasorderdelayed = 'true' )
      ( orderno = '76272710' businesspartner = '1245783695' orderdate = '20200718' deliverydate = '20200720' deliverystatus = 'C' wasorderdelayed = 'false' )
    ).

*   delete existing entries in the database table
    DELETE FROM zzohorderhistory.

*   insert the new table entries
    INSERT zzohorderhistory FROM TABLE @itab.

*   output the result as a console message
    out->write( |{ sy-dbcnt } travel entries inserted successfully!| ).

  ENDMETHOD.
ENDCLASS.
