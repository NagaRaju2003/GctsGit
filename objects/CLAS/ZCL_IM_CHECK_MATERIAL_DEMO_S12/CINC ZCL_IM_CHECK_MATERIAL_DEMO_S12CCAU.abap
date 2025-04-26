CLASS ltc_material_check_unit_test
 DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.
  PRIVATE SECTION.
    DATA: lo_check_material TYPE REF TO zcl_im_check_material_demo_s.
    METHODS setup.
    METHODS test_material_allowed FOR TESTING.
    METHODS test_material_not_allowed FOR TESTING.
ENDCLASS.



CLASS ltc_material_check_unit_test IMPLEMENTATION.


  METHOD setup.
    CREATE OBJECT lo_check_material.
  ENDMETHOD.


  METHOD test_material_allowed.

    DATA : wmara        TYPE mara,
           wmarc        TYPE marc,
           wmard        TYPE mard,
           wmbew        TYPE mbew,
           wmlgn        TYPE mlgn,
           wmlgt        TYPE mlgt,
           wmvke        TYPE mvke,
           wstat        TYPE mgstat,
           wmfhm        TYPE mfhm,
           wmpop        TYPE mpop,
           ssteuertab   TYPE mgint_mg03steuer,
           ssteummtab   TYPE mgint_mg03steumm,
           wmeinh       TYPE mgint_smeinh,
           smean_me_tab TYPE mgint_me_mean_tab,
           wrmmg1       TYPE rmmg1,
           wrmmg2       TYPE rmmg2,
           cmara        TYPE maru,
           stext        TYPE mgint_short_desc,
           lv_sub_rc    TYPE sy-subrc,
           lv_bool      TYPE abap_bool.

    wmara-meins = 'TST'. " not allowed value

    lo_check_material->if_ex_badi_material_check~check_data(
      EXPORTING
        wmara             = wmara    " General Material Data
        wmarc             = wmarc    " Plant Data for Material
        wmard             = wmard    " Storage Location Data For Material
        wmbew             = wmbew    " Material Valuation
        wmlgn             = wmlgn    " Material Data For Each Warehouse Number
        wmlgt             = wmlgt    " Material Data For Each Storage Type
        wmvke             = wmvke    " Sales Data for Material
        wstat             = wstat    " Interface for Customer Exit EXIT_SAPLMGMU_001
        wmfhm             = wmfhm    " Production Resource Tool (PRT) Fields in the Material Master
        wmpop             = wmpop    " Forecast Parameters
        ssteuertab        = ssteuertab    " Table for Taxes
        ssteummtab        = ssteummtab    " Table for Taxes (Purchasing)
        wmeinh            = wmeinh    " Table for Units of Measure
        smean_me_tab      = smean_me_tab    " International Article Numbers (EANs) for Material
        wrmmg1            = wrmmg1    " Mat. Master Maintenance: Initial Parameters - Orig. Material
        wrmmg2            = wrmmg2    " Additional Material Master Fields: Dialog and Transfer
      CHANGING
        cmara             = cmara    " Changeable General Data (Structure: MARU)
        stext             = stext    " Table for Short Texts
      EXCEPTIONS
        application_error = 1
        OTHERS            = 2 ).

    IF sy-subrc <> 0.
      lv_bool = abap_true.
    ELSE.
      lv_bool = abap_false.
    ENDIF.

    cl_abap_unit_assert=>assert_true(
      EXPORTING
        act              = lv_bool
        msg              = 'Exception not Raised for not Allowed Material' ).
  ENDMETHOD.

  METHOD test_material_not_allowed.
    " OC Tanner DEMO
    DATA : wmara        TYPE mara,
           wmarc        TYPE marc,
           wmard        TYPE mard,
           wmbew        TYPE mbew,
           wmlgn        TYPE mlgn,
           wmlgt        TYPE mlgt,
           wmvke        TYPE mvke,
           wstat        TYPE mgstat,
           wmfhm        TYPE mfhm,
           wmpop        TYPE mpop,
           ssteuertab   TYPE mgint_mg03steuer,
           ssteummtab   TYPE mgint_mg03steumm,
           wmeinh       TYPE mgint_smeinh,
           smean_me_tab TYPE mgint_me_mean_tab,
           wrmmg1       TYPE rmmg1,
           wrmmg2       TYPE rmmg2,
           cmara        TYPE maru,
           stext        TYPE mgint_short_desc.

    wmara-meins = 'TWT'. " Allowed value

    lo_check_material->if_ex_badi_material_check~check_data(
      EXPORTING
        wmara             = wmara    " General Material Data
        wmarc             = wmarc    " Plant Data for Material
        wmard             = wmard    " Storage Location Data For Material
        wmbew             = wmbew    " Material Valuation
        wmlgn             = wmlgn    " Material Data For Each Warehouse Number
        wmlgt             = wmlgt    " Material Data For Each Storage Type
        wmvke             = wmvke    " Sales Data for Material
        wstat             = wstat    " Interface for Customer Exit EXIT_SAPLMGMU_001
        wmfhm             = wmfhm    " Production Resource Tool (PRT) Fields in the Material Master
        wmpop             = wmpop    " Forecast Parameters
        ssteuertab        = ssteuertab    " Table for Taxes
        ssteummtab        = ssteummtab    " Table for Taxes (Purchasing)
        wmeinh            = wmeinh    " Table for Units of Measure
        smean_me_tab      = smean_me_tab    " International Article Numbers (EANs) for Material
        wrmmg1            = wrmmg1    " Mat. Master Maintenance: Initial Parameters - Orig. Material
        wrmmg2            = wrmmg2    " Additional Material Master Fields: Dialog and Transfer
      CHANGING
        cmara             = cmara    " Changeable General Data (Structure: MARU)
        stext             = stext    " Table for Short Texts
      EXCEPTIONS
        application_error = 1
        OTHERS            = 2 ).

    cl_abap_unit_assert=>assert_subrc(
     EXPORTING
      exp              = 0    " Expected return code, optional, if not zero
      act              = sy-subrc    " Return Value of ABAP Statements
      msg              = 'Exception Raised for Allowed Material' ).


  ENDMETHOD.

ENDCLASS."* use this source file for your ABAP unit test classes