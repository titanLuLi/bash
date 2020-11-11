DECLARE
    filename   VARCHAR2(200);
    v1         VARCHAR2(max_size CHAR);
    f1         utl_file.file_type;    
BEGIN
    filename := 'blocked_perm_with_ads.html';
    f1 := utl_file.fopen('./',filename,'R');
     dbms_output.put_line('Start');
    LOOP
        BEGIN
            utl_file.get_line(f1,v1);
            --dbms_output.put_line(v1);
        EXCEPTION
            WHEN no_data_found THEN
                EXIT;
        END;
    END LOOP;
dbms_output.put_line('End');
    IF
        utl_file.is_open(f1)
    THEN
        dbms_output.put_line('File is Open');
    END IF;
    utl_file.fclose(f1);
    insert INTO EBOKS_TEMPLATE_TEST  (DOCUMENT_TEMPLATE, DOCUMENT_TITLE) VALUES (filename,hextoraw(v1));
END;

--insert INTO EBOKS_TEMPLATE_TEST ( DOCUMENT_TITLE ,DOCUMENT_TEMPLATE) VALUES ('filename',utl_raw.cast_to_raw('v1'));
