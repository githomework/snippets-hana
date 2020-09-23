-- warning: this doesn't show ___T columns which are in the rows with PROPERTY_TYPE = 4.  Same logic doesn't quite work when PROPERTY_TYPE = 4.

SELECT PROPERTY_NAME, PROPERTY_CAPTION, COLUMN_SQL_TYPE FROM "_SYS_BI"."BIMC_PROPERTIES" 
WHERE  SCHEMA_NAME = '_SYS_BIC' AND "CUBE_NAME" = 'last part of the view' 
AND "CATALOG_NAME" = 'second last part of the view' AND PROPERTY_TYPE = 1 ORDER BY PROPERTY_NAME


-- this shows ___T columns but doesn't have the captions
SELECT COLUMN_NAME, DATA_TYPE_NAME , "LENGTH" FROM sys.VIEW_COLUMNS 
WHERE SCHEMA_NAME = '_SYS_BIC' AND VIEW_NAME = 'XXX/YYY'  ORDER BY COLUMN_NAME
