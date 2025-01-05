SELECT 
    fk.name AS 'Foreign Key Name',
    tp.name AS 'Parent Table',
    ref.name AS 'Referenced Table',
    c.name AS 'Foreign Key Column',
    refc.name AS 'Referenced Column'
FROM 
    sys.foreign_keys AS fk
INNER JOIN 
    sys.tables AS tp ON fk.parent_object_id = tp.object_id
INNER JOIN 
    sys.tables AS ref ON fk.referenced_object_id = ref.object_id
INNER JOIN 
    sys.foreign_key_columns AS fkc ON fk.object_id = fkc.constraint_object_id
INNER JOIN 
    sys.columns AS c ON fkc.parent_column_id = c.column_id AND c.object_id = tp.object_id
INNER JOIN 
    sys.columns AS refc ON fkc.referenced_column_id = refc.column_id AND refc.object_id = ref.object_id;
