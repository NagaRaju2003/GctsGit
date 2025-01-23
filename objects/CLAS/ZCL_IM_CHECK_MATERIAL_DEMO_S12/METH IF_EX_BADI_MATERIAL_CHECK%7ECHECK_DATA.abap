  METHOD IF_EX_BADI_MATERIAL_CHECK~CHECK_DATA.
    " DEMO Example 01.25.24
    DATA ls_msehi TYPE zt006.


    SELECT SINGLE msehi FROM t006 AS bum INTO CORRESPONDING FIELDS OF ls_msehi WHERE msehi = wmara-meins.

    IF ls_msehi IS NOT INITIAL.
      RAISE application_error.
    ENDIF.
  ENDMETHOD.