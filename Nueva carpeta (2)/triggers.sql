
    CREATE OR REPLACE TRIGGER mview$_adv_parameters_audit_insert
    AFTER INSERT ON MVIEW$_ADV_PARAMETERS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.PARAMETER_NAME || ', Datos=' || '{col}=' || :NEW.PARAMETER_TYPE || ', ' || '{col}=' || :NEW.STRING_VALUE || ', ' || '{col}=' || :NEW.DATE_VALUE || ', ' || '{col}=' || :NEW.NUMERICAL_VALUE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_PARAMETERS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_parameters_audit_update
    AFTER UPDATE ON MVIEW$_ADV_PARAMETERS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.PARAMETER_NAME || ' -> ' || :NEW.PARAMETER_NAME || ', Datos=' || '{col}=' || :OLD.PARAMETER_TYPE || ' -> ' || :NEW.PARAMETER_TYPE || ', ' || '{col}=' || :OLD.STRING_VALUE || ' -> ' || :NEW.STRING_VALUE || ', ' || '{col}=' || :OLD.DATE_VALUE || ' -> ' || :NEW.DATE_VALUE || ', ' || '{col}=' || :OLD.NUMERICAL_VALUE || ' -> ' || :NEW.NUMERICAL_VALUE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_PARAMETERS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_parameters_audit_delete
    AFTER DELETE ON MVIEW$_ADV_PARAMETERS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.PARAMETER_NAME || ', Datos=' || '{col}=' || :OLD.PARAMETER_TYPE || ', ' || '{col}=' || :OLD.STRING_VALUE || ', ' || '{col}=' || :OLD.DATE_VALUE || ', ' || '{col}=' || :OLD.NUMERICAL_VALUE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_PARAMETERS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER aq$_queues_audit_insert
    AFTER INSERT ON AQ$_QUEUES
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.OID || ', Datos=' || '{col}=' || :NEW.SUBSCRIBERS || ', ' || '{col}=' || :NEW.EVENTID || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.TABLE_OBJNO || ', ' || '{col}=' || :NEW.USAGE || ', ' || '{col}=' || :NEW.ENABLE_FLAG || ', ' || '{col}=' || :NEW.MAX_RETRIES || ', ' || '{col}=' || :NEW.RETRY_DELAY || ', ' || '{col}=' || :NEW.PROPERTIES || ', ' || '{col}=' || :NEW.RET_TIME || ', ' || '{col}=' || :NEW.QUEUE_COMMENT || ', ' || '{col}=' || :NEW.MEMORY_THRESHOLD || ', ' || '{col}=' || :NEW.SERVICE_NAME || ', ' || '{col}=' || :NEW.NETWORK_NAME || ', ' || '{col}=' || :NEW.SUB_OID || ', ' || '{col}=' || :NEW.SHARDED || ', ' || '{col}=' || :NEW.BASE_QUEUE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'AQ$_QUEUES',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER aq$_queues_audit_update
    AFTER UPDATE ON AQ$_QUEUES
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.OID || ' -> ' || :NEW.OID || ', Datos=' || '{col}=' || :OLD.SUBSCRIBERS || ' -> ' || :NEW.SUBSCRIBERS || ', ' || '{col}=' || :OLD.EVENTID || ' -> ' || :NEW.EVENTID || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.TABLE_OBJNO || ' -> ' || :NEW.TABLE_OBJNO || ', ' || '{col}=' || :OLD.USAGE || ' -> ' || :NEW.USAGE || ', ' || '{col}=' || :OLD.ENABLE_FLAG || ' -> ' || :NEW.ENABLE_FLAG || ', ' || '{col}=' || :OLD.MAX_RETRIES || ' -> ' || :NEW.MAX_RETRIES || ', ' || '{col}=' || :OLD.RETRY_DELAY || ' -> ' || :NEW.RETRY_DELAY || ', ' || '{col}=' || :OLD.PROPERTIES || ' -> ' || :NEW.PROPERTIES || ', ' || '{col}=' || :OLD.RET_TIME || ' -> ' || :NEW.RET_TIME || ', ' || '{col}=' || :OLD.QUEUE_COMMENT || ' -> ' || :NEW.QUEUE_COMMENT || ', ' || '{col}=' || :OLD.MEMORY_THRESHOLD || ' -> ' || :NEW.MEMORY_THRESHOLD || ', ' || '{col}=' || :OLD.SERVICE_NAME || ' -> ' || :NEW.SERVICE_NAME || ', ' || '{col}=' || :OLD.NETWORK_NAME || ' -> ' || :NEW.NETWORK_NAME || ', ' || '{col}=' || :OLD.SUB_OID || ' -> ' || :NEW.SUB_OID || ', ' || '{col}=' || :OLD.SHARDED || ' -> ' || :NEW.SHARDED || ', ' || '{col}=' || :OLD.BASE_QUEUE || ' -> ' || :NEW.BASE_QUEUE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'AQ$_QUEUES',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER aq$_queues_audit_delete
    AFTER DELETE ON AQ$_QUEUES
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.OID || ', Datos=' || '{col}=' || :OLD.SUBSCRIBERS || ', ' || '{col}=' || :OLD.EVENTID || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.TABLE_OBJNO || ', ' || '{col}=' || :OLD.USAGE || ', ' || '{col}=' || :OLD.ENABLE_FLAG || ', ' || '{col}=' || :OLD.MAX_RETRIES || ', ' || '{col}=' || :OLD.RETRY_DELAY || ', ' || '{col}=' || :OLD.PROPERTIES || ', ' || '{col}=' || :OLD.RET_TIME || ', ' || '{col}=' || :OLD.QUEUE_COMMENT || ', ' || '{col}=' || :OLD.MEMORY_THRESHOLD || ', ' || '{col}=' || :OLD.SERVICE_NAME || ', ' || '{col}=' || :OLD.NETWORK_NAME || ', ' || '{col}=' || :OLD.SUB_OID || ', ' || '{col}=' || :OLD.SHARDED || ', ' || '{col}=' || :OLD.BASE_QUEUE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'AQ$_QUEUES',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER repl_support_matrix_audit_insert
    AFTER INSERT ON REPL_SUPPORT_MATRIX
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.BMAP1 || ', Datos=' || '{col}=' || :NEW.FEATURE_NAME || ', ' || '{col}=' || :NEW.REASON_CODE || ', ' || '{col}=' || :NEW.BMAP2 || ', ' || '{col}=' || :NEW.REPL_PRODUCT || ', ' || '{col}=' || :NEW.SUPPORT_MODE || ', ' || '{col}=' || :NEW.MIN_COMPAT || ', ' || '{col}=' || :NEW.MAX_COMPAT;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'REPL_SUPPORT_MATRIX',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER repl_support_matrix_audit_update
    AFTER UPDATE ON REPL_SUPPORT_MATRIX
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.BMAP1 || ' -> ' || :NEW.BMAP1 || ', Datos=' || '{col}=' || :OLD.FEATURE_NAME || ' -> ' || :NEW.FEATURE_NAME || ', ' || '{col}=' || :OLD.REASON_CODE || ' -> ' || :NEW.REASON_CODE || ', ' || '{col}=' || :OLD.BMAP2 || ' -> ' || :NEW.BMAP2 || ', ' || '{col}=' || :OLD.REPL_PRODUCT || ' -> ' || :NEW.REPL_PRODUCT || ', ' || '{col}=' || :OLD.SUPPORT_MODE || ' -> ' || :NEW.SUPPORT_MODE || ', ' || '{col}=' || :OLD.MIN_COMPAT || ' -> ' || :NEW.MIN_COMPAT || ', ' || '{col}=' || :OLD.MAX_COMPAT || ' -> ' || :NEW.MAX_COMPAT;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'REPL_SUPPORT_MATRIX',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER repl_support_matrix_audit_delete
    AFTER DELETE ON REPL_SUPPORT_MATRIX
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.BMAP1 || ', Datos=' || '{col}=' || :OLD.FEATURE_NAME || ', ' || '{col}=' || :OLD.REASON_CODE || ', ' || '{col}=' || :OLD.BMAP2 || ', ' || '{col}=' || :OLD.REPL_PRODUCT || ', ' || '{col}=' || :OLD.SUPPORT_MODE || ', ' || '{col}=' || :OLD.MIN_COMPAT || ', ' || '{col}=' || :OLD.MAX_COMPAT;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'REPL_SUPPORT_MATRIX',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER aq$_queue_tables_audit_insert
    AFTER INSERT ON AQ$_QUEUE_TABLES
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.OBJNO || ', Datos=' || '{col}=' || :NEW.SCHEMA || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.UDATA_TYPE || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.SORT_COLS || ', ' || '{col}=' || :NEW.TIMEZONE || ', ' || '{col}=' || :NEW.TABLE_COMMENT;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'AQ$_QUEUE_TABLES',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER aq$_queue_tables_audit_update
    AFTER UPDATE ON AQ$_QUEUE_TABLES
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.OBJNO || ' -> ' || :NEW.OBJNO || ', Datos=' || '{col}=' || :OLD.SCHEMA || ' -> ' || :NEW.SCHEMA || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.UDATA_TYPE || ' -> ' || :NEW.UDATA_TYPE || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.SORT_COLS || ' -> ' || :NEW.SORT_COLS || ', ' || '{col}=' || :OLD.TIMEZONE || ' -> ' || :NEW.TIMEZONE || ', ' || '{col}=' || :OLD.TABLE_COMMENT || ' -> ' || :NEW.TABLE_COMMENT;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'AQ$_QUEUE_TABLES',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER aq$_queue_tables_audit_delete
    AFTER DELETE ON AQ$_QUEUE_TABLES
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.OBJNO || ', Datos=' || '{col}=' || :OLD.SCHEMA || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.UDATA_TYPE || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.SORT_COLS || ', ' || '{col}=' || :OLD.TIMEZONE || ', ' || '{col}=' || :OLD.TABLE_COMMENT;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'AQ$_QUEUE_TABLES',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER aq$_internet_agents_audit_insert
    AFTER INSERT ON AQ$_INTERNET_AGENTS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.AGENT_NAME || ', Datos=' || '{col}=' || :NEW.PROTOCOL || ', ' || '{col}=' || :NEW.SPARE1;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'AQ$_INTERNET_AGENTS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER aq$_internet_agents_audit_update
    AFTER UPDATE ON AQ$_INTERNET_AGENTS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.AGENT_NAME || ' -> ' || :NEW.AGENT_NAME || ', Datos=' || '{col}=' || :OLD.PROTOCOL || ' -> ' || :NEW.PROTOCOL || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'AQ$_INTERNET_AGENTS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER aq$_internet_agents_audit_delete
    AFTER DELETE ON AQ$_INTERNET_AGENTS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.AGENT_NAME || ', Datos=' || '{col}=' || :OLD.PROTOCOL || ', ' || '{col}=' || :OLD.SPARE1;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'AQ$_INTERNET_AGENTS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER producto_bodega_audit_insert
    AFTER INSERT ON PRODUCTO_BODEGA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_PRODUCTO_BODEGA || ', Datos=' || '{col}=' || :NEW.PRODUCTO_ID || ', ' || '{col}=' || :NEW.BODEGA_ID || ', ' || '{col}=' || :NEW.CANTIDAD;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PRODUCTO_BODEGA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER producto_bodega_audit_update
    AFTER UPDATE ON PRODUCTO_BODEGA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_PRODUCTO_BODEGA || ' -> ' || :NEW.ID_PRODUCTO_BODEGA || ', Datos=' || '{col}=' || :OLD.PRODUCTO_ID || ' -> ' || :NEW.PRODUCTO_ID || ', ' || '{col}=' || :OLD.BODEGA_ID || ' -> ' || :NEW.BODEGA_ID || ', ' || '{col}=' || :OLD.CANTIDAD || ' -> ' || :NEW.CANTIDAD;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PRODUCTO_BODEGA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER producto_bodega_audit_delete
    AFTER DELETE ON PRODUCTO_BODEGA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_PRODUCTO_BODEGA || ', Datos=' || '{col}=' || :OLD.PRODUCTO_ID || ', ' || '{col}=' || :OLD.BODEGA_ID || ', ' || '{col}=' || :OLD.CANTIDAD;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PRODUCTO_BODEGA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER help_audit_insert
    AFTER INSERT ON HELP
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.TOPIC || ', Datos=' || '{col}=' || :NEW.SEQ || ', ' || '{col}=' || :NEW.INFO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'HELP',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER help_audit_update
    AFTER UPDATE ON HELP
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.TOPIC || ' -> ' || :NEW.TOPIC || ', Datos=' || '{col}=' || :OLD.SEQ || ' -> ' || :NEW.SEQ || ', ' || '{col}=' || :OLD.INFO || ' -> ' || :NEW.INFO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'HELP',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER help_audit_delete
    AFTER DELETE ON HELP
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.TOPIC || ', Datos=' || '{col}=' || :OLD.SEQ || ', ' || '{col}=' || :OLD.INFO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'HELP',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER direccion_entrega_audit_insert
    AFTER INSERT ON DIRECCION_ENTREGA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_DIRECCION || ', Datos=' || '{col}=' || :NEW.CALLE || ', ' || '{col}=' || :NEW.CIUDAD || ', ' || '{col}=' || :NEW.ESTADO || ', ' || '{col}=' || :NEW.CODIGO_POSTAL;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'DIRECCION_ENTREGA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER direccion_entrega_audit_update
    AFTER UPDATE ON DIRECCION_ENTREGA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_DIRECCION || ' -> ' || :NEW.ID_DIRECCION || ', Datos=' || '{col}=' || :OLD.CALLE || ' -> ' || :NEW.CALLE || ', ' || '{col}=' || :OLD.CIUDAD || ' -> ' || :NEW.CIUDAD || ', ' || '{col}=' || :OLD.ESTADO || ' -> ' || :NEW.ESTADO || ', ' || '{col}=' || :OLD.CODIGO_POSTAL || ' -> ' || :NEW.CODIGO_POSTAL;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'DIRECCION_ENTREGA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER direccion_entrega_audit_delete
    AFTER DELETE ON DIRECCION_ENTREGA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_DIRECCION || ', Datos=' || '{col}=' || :OLD.CALLE || ', ' || '{col}=' || :OLD.CIUDAD || ', ' || '{col}=' || :OLD.ESTADO || ', ' || '{col}=' || :OLD.CODIGO_POSTAL;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'DIRECCION_ENTREGA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER pedido_audit_insert
    AFTER INSERT ON PEDIDO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_PEDIDO || ', Datos=' || '{col}=' || :NEW.FECHA_PEDIDO || ', ' || '{col}=' || :NEW.DIRECCION_ENTREGA_ID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PEDIDO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER pedido_audit_update
    AFTER UPDATE ON PEDIDO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_PEDIDO || ' -> ' || :NEW.ID_PEDIDO || ', Datos=' || '{col}=' || :OLD.FECHA_PEDIDO || ' -> ' || :NEW.FECHA_PEDIDO || ', ' || '{col}=' || :OLD.DIRECCION_ENTREGA_ID || ' -> ' || :NEW.DIRECCION_ENTREGA_ID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PEDIDO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER pedido_audit_delete
    AFTER DELETE ON PEDIDO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_PEDIDO || ', Datos=' || '{col}=' || :OLD.FECHA_PEDIDO || ', ' || '{col}=' || :OLD.DIRECCION_ENTREGA_ID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PEDIDO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER empleados_audit_insert
    AFTER INSERT ON EMPLEADOS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.EMPLEADOID || ', Datos=' || '{col}=' || :NEW.NOMBRE || ', ' || '{col}=' || :NEW.APELLIDO || ', ' || '{col}=' || :NEW.DEPARTAMENTOID || ', ' || '{col}=' || :NEW.FECHACONTRATACION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'EMPLEADOS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER empleados_audit_update
    AFTER UPDATE ON EMPLEADOS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.EMPLEADOID || ' -> ' || :NEW.EMPLEADOID || ', Datos=' || '{col}=' || :OLD.NOMBRE || ' -> ' || :NEW.NOMBRE || ', ' || '{col}=' || :OLD.APELLIDO || ' -> ' || :NEW.APELLIDO || ', ' || '{col}=' || :OLD.DEPARTAMENTOID || ' -> ' || :NEW.DEPARTAMENTOID || ', ' || '{col}=' || :OLD.FECHACONTRATACION || ' -> ' || :NEW.FECHACONTRATACION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'EMPLEADOS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER empleados_audit_delete
    AFTER DELETE ON EMPLEADOS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.EMPLEADOID || ', Datos=' || '{col}=' || :OLD.NOMBRE || ', ' || '{col}=' || :OLD.APELLIDO || ', ' || '{col}=' || :OLD.DEPARTAMENTOID || ', ' || '{col}=' || :OLD.FECHACONTRATACION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'EMPLEADOS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER detalle_producto_audit_insert
    AFTER INSERT ON DETALLE_PRODUCTO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_DETALLE_PRODUCTO || ', Datos=' || '{col}=' || :NEW.PRODUCTO_ID || ', ' || '{col}=' || :NEW.PASILLO_ID || ', ' || '{col}=' || :NEW.FECHA_INGRESO || ', ' || '{col}=' || :NEW.CANTIDAD || ', ' || '{col}=' || :NEW.PRECIO_COMPRA;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'DETALLE_PRODUCTO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER detalle_producto_audit_update
    AFTER UPDATE ON DETALLE_PRODUCTO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_DETALLE_PRODUCTO || ' -> ' || :NEW.ID_DETALLE_PRODUCTO || ', Datos=' || '{col}=' || :OLD.PRODUCTO_ID || ' -> ' || :NEW.PRODUCTO_ID || ', ' || '{col}=' || :OLD.PASILLO_ID || ' -> ' || :NEW.PASILLO_ID || ', ' || '{col}=' || :OLD.FECHA_INGRESO || ' -> ' || :NEW.FECHA_INGRESO || ', ' || '{col}=' || :OLD.CANTIDAD || ' -> ' || :NEW.CANTIDAD || ', ' || '{col}=' || :OLD.PRECIO_COMPRA || ' -> ' || :NEW.PRECIO_COMPRA;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'DETALLE_PRODUCTO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER detalle_producto_audit_delete
    AFTER DELETE ON DETALLE_PRODUCTO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_DETALLE_PRODUCTO || ', Datos=' || '{col}=' || :OLD.PRODUCTO_ID || ', ' || '{col}=' || :OLD.PASILLO_ID || ', ' || '{col}=' || :OLD.FECHA_INGRESO || ', ' || '{col}=' || :OLD.CANTIDAD || ', ' || '{col}=' || :OLD.PRECIO_COMPRA;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'DETALLE_PRODUCTO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER bodega_audit_insert
    AFTER INSERT ON BODEGA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_BODEGA || ', Datos=' || '{col}=' || :NEW.NOMBRE || ', ' || '{col}=' || :NEW.DIRECCION || ', ' || '{col}=' || :NEW.CIUDAD || ', ' || '{col}=' || :NEW.ESTADO || ', ' || '{col}=' || :NEW.CODIGO_POSTAL;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'BODEGA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER bodega_audit_update
    AFTER UPDATE ON BODEGA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_BODEGA || ' -> ' || :NEW.ID_BODEGA || ', Datos=' || '{col}=' || :OLD.NOMBRE || ' -> ' || :NEW.NOMBRE || ', ' || '{col}=' || :OLD.DIRECCION || ' -> ' || :NEW.DIRECCION || ', ' || '{col}=' || :OLD.CIUDAD || ' -> ' || :NEW.CIUDAD || ', ' || '{col}=' || :OLD.ESTADO || ' -> ' || :NEW.ESTADO || ', ' || '{col}=' || :OLD.CODIGO_POSTAL || ' -> ' || :NEW.CODIGO_POSTAL;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'BODEGA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER bodega_audit_delete
    AFTER DELETE ON BODEGA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_BODEGA || ', Datos=' || '{col}=' || :OLD.NOMBRE || ', ' || '{col}=' || :OLD.DIRECCION || ', ' || '{col}=' || :OLD.CIUDAD || ', ' || '{col}=' || :OLD.ESTADO || ', ' || '{col}=' || :OLD.CODIGO_POSTAL;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'BODEGA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER departamentos_audit_insert
    AFTER INSERT ON DEPARTAMENTOS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.DEPARTAMENTOID || ', Datos=' || '{col}=' || :NEW.NOMBRE || ', ' || '{col}=' || :NEW.UBICACION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'DEPARTAMENTOS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER departamentos_audit_update
    AFTER UPDATE ON DEPARTAMENTOS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.DEPARTAMENTOID || ' -> ' || :NEW.DEPARTAMENTOID || ', Datos=' || '{col}=' || :OLD.NOMBRE || ' -> ' || :NEW.NOMBRE || ', ' || '{col}=' || :OLD.UBICACION || ' -> ' || :NEW.UBICACION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'DEPARTAMENTOS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER departamentos_audit_delete
    AFTER DELETE ON DEPARTAMENTOS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.DEPARTAMENTOID || ', Datos=' || '{col}=' || :OLD.NOMBRE || ', ' || '{col}=' || :OLD.UBICACION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'DEPARTAMENTOS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER trabja_audit_insert
    AFTER INSERT ON TRABJA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID || ', Datos=' || '{col}=' || :NEW.NOMVRE || ', ' || '{col}=' || :NEW.PESO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'TRABJA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER trabja_audit_update
    AFTER UPDATE ON TRABJA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID || ' -> ' || :NEW.ID || ', Datos=' || '{col}=' || :OLD.NOMVRE || ' -> ' || :NEW.NOMVRE || ', ' || '{col}=' || :OLD.PESO || ' -> ' || :NEW.PESO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'TRABJA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER trabja_audit_delete
    AFTER DELETE ON TRABJA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID || ', Datos=' || '{col}=' || :OLD.NOMVRE || ', ' || '{col}=' || :OLD.PESO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'TRABJA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER base_audit_insert
    AFTER INSERT ON BASE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID || ', Datos=' || '{col}=' || :NEW.NOMVRE || ', ' || '{col}=' || :NEW.GOR;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'BASE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER base_audit_update
    AFTER UPDATE ON BASE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID || ' -> ' || :NEW.ID || ', Datos=' || '{col}=' || :OLD.NOMVRE || ' -> ' || :NEW.NOMVRE || ', ' || '{col}=' || :OLD.GOR || ' -> ' || :NEW.GOR;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'BASE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER base_audit_delete
    AFTER DELETE ON BASE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID || ', Datos=' || '{col}=' || :OLD.NOMVRE || ', ' || '{col}=' || :OLD.GOR;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'BASE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER cliente_audit_insert
    AFTER INSERT ON CLIENTE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_CLIENTE || ', Datos=' || '{col}=' || :NEW.NOMBRE || ', ' || '{col}=' || :NEW.APELLIDO || ', ' || '{col}=' || :NEW.EMAIL || ', ' || '{col}=' || :NEW.CEDULA || ', ' || '{col}=' || :NEW.TELEFONO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'CLIENTE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER cliente_audit_update
    AFTER UPDATE ON CLIENTE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_CLIENTE || ' -> ' || :NEW.ID_CLIENTE || ', Datos=' || '{col}=' || :OLD.NOMBRE || ' -> ' || :NEW.NOMBRE || ', ' || '{col}=' || :OLD.APELLIDO || ' -> ' || :NEW.APELLIDO || ', ' || '{col}=' || :OLD.EMAIL || ' -> ' || :NEW.EMAIL || ', ' || '{col}=' || :OLD.CEDULA || ' -> ' || :NEW.CEDULA || ', ' || '{col}=' || :OLD.TELEFONO || ' -> ' || :NEW.TELEFONO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'CLIENTE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER cliente_audit_delete
    AFTER DELETE ON CLIENTE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_CLIENTE || ', Datos=' || '{col}=' || :OLD.NOMBRE || ', ' || '{col}=' || :OLD.APELLIDO || ', ' || '{col}=' || :OLD.EMAIL || ', ' || '{col}=' || :OLD.CEDULA || ', ' || '{col}=' || :OLD.TELEFONO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'CLIENTE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER carrito_compra_audit_insert
    AFTER INSERT ON CARRITO_COMPRA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_CARRITO || ', Datos=' || '{col}=' || :NEW.CLIENTE_ID || ', ' || '{col}=' || :NEW.PEDIDO_ID || ', ' || '{col}=' || :NEW.FECHA_CREACION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'CARRITO_COMPRA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER carrito_compra_audit_update
    AFTER UPDATE ON CARRITO_COMPRA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_CARRITO || ' -> ' || :NEW.ID_CARRITO || ', Datos=' || '{col}=' || :OLD.CLIENTE_ID || ' -> ' || :NEW.CLIENTE_ID || ', ' || '{col}=' || :OLD.PEDIDO_ID || ' -> ' || :NEW.PEDIDO_ID || ', ' || '{col}=' || :OLD.FECHA_CREACION || ' -> ' || :NEW.FECHA_CREACION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'CARRITO_COMPRA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER carrito_compra_audit_delete
    AFTER DELETE ON CARRITO_COMPRA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_CARRITO || ', Datos=' || '{col}=' || :OLD.CLIENTE_ID || ', ' || '{col}=' || :OLD.PEDIDO_ID || ', ' || '{col}=' || :OLD.FECHA_CREACION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'CARRITO_COMPRA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER categoria_empleado_audit_insert
    AFTER INSERT ON CATEGORIA_EMPLEADO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_CATEGORIA || ', Datos=' || '{col}=' || :NEW.NOMBRE || ', ' || '{col}=' || :NEW.DESCRIPCION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'CATEGORIA_EMPLEADO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER categoria_empleado_audit_update
    AFTER UPDATE ON CATEGORIA_EMPLEADO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_CATEGORIA || ' -> ' || :NEW.ID_CATEGORIA || ', Datos=' || '{col}=' || :OLD.NOMBRE || ' -> ' || :NEW.NOMBRE || ', ' || '{col}=' || :OLD.DESCRIPCION || ' -> ' || :NEW.DESCRIPCION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'CATEGORIA_EMPLEADO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER categoria_empleado_audit_delete
    AFTER DELETE ON CATEGORIA_EMPLEADO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_CATEGORIA || ', Datos=' || '{col}=' || :OLD.NOMBRE || ', ' || '{col}=' || :OLD.DESCRIPCION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'CATEGORIA_EMPLEADO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER empleado_audit_insert
    AFTER INSERT ON EMPLEADO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_EMPLEADO || ', Datos=' || '{col}=' || :NEW.NOMBRE || ', ' || '{col}=' || :NEW.APELLIDO || ', ' || '{col}=' || :NEW.CARGO || ', ' || '{col}=' || :NEW.SALARIO || ', ' || '{col}=' || :NEW.FECHA_CONTRATO || ', ' || '{col}=' || :NEW.CATEGORIA_ID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'EMPLEADO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER empleado_audit_update
    AFTER UPDATE ON EMPLEADO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_EMPLEADO || ' -> ' || :NEW.ID_EMPLEADO || ', Datos=' || '{col}=' || :OLD.NOMBRE || ' -> ' || :NEW.NOMBRE || ', ' || '{col}=' || :OLD.APELLIDO || ' -> ' || :NEW.APELLIDO || ', ' || '{col}=' || :OLD.CARGO || ' -> ' || :NEW.CARGO || ', ' || '{col}=' || :OLD.SALARIO || ' -> ' || :NEW.SALARIO || ', ' || '{col}=' || :OLD.FECHA_CONTRATO || ' -> ' || :NEW.FECHA_CONTRATO || ', ' || '{col}=' || :OLD.CATEGORIA_ID || ' -> ' || :NEW.CATEGORIA_ID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'EMPLEADO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER empleado_audit_delete
    AFTER DELETE ON EMPLEADO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_EMPLEADO || ', Datos=' || '{col}=' || :OLD.NOMBRE || ', ' || '{col}=' || :OLD.APELLIDO || ', ' || '{col}=' || :OLD.CARGO || ', ' || '{col}=' || :OLD.SALARIO || ', ' || '{col}=' || :OLD.FECHA_CONTRATO || ', ' || '{col}=' || :OLD.CATEGORIA_ID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'EMPLEADO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER promociones_audit_insert
    AFTER INSERT ON PROMOCIONES
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_PROMOCION || ', Datos=' || '{col}=' || :NEW.NOMBRE || ', ' || '{col}=' || :NEW.DESCRIPCION || ', ' || '{col}=' || :NEW.FECHA_INICIO || ', ' || '{col}=' || :NEW.FECHA_FIN || ', ' || '{col}=' || :NEW.DESCUENTO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PROMOCIONES',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER promociones_audit_update
    AFTER UPDATE ON PROMOCIONES
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_PROMOCION || ' -> ' || :NEW.ID_PROMOCION || ', Datos=' || '{col}=' || :OLD.NOMBRE || ' -> ' || :NEW.NOMBRE || ', ' || '{col}=' || :OLD.DESCRIPCION || ' -> ' || :NEW.DESCRIPCION || ', ' || '{col}=' || :OLD.FECHA_INICIO || ' -> ' || :NEW.FECHA_INICIO || ', ' || '{col}=' || :OLD.FECHA_FIN || ' -> ' || :NEW.FECHA_FIN || ', ' || '{col}=' || :OLD.DESCUENTO || ' -> ' || :NEW.DESCUENTO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PROMOCIONES',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER promociones_audit_delete
    AFTER DELETE ON PROMOCIONES
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_PROMOCION || ', Datos=' || '{col}=' || :OLD.NOMBRE || ', ' || '{col}=' || :OLD.DESCRIPCION || ', ' || '{col}=' || :OLD.FECHA_INICIO || ', ' || '{col}=' || :OLD.FECHA_FIN || ', ' || '{col}=' || :OLD.DESCUENTO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PROMOCIONES',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER factura_audit_insert
    AFTER INSERT ON FACTURA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_FACTURA || ', Datos=' || '{col}=' || :NEW.FECHA_FACTURA || ', ' || '{col}=' || :NEW.TOTAL || ', ' || '{col}=' || :NEW.CLIENTE_ID || ', ' || '{col}=' || :NEW.EMPLEADO_ID || ', ' || '{col}=' || :NEW.PROMOCIONES_ID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'FACTURA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER factura_audit_update
    AFTER UPDATE ON FACTURA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_FACTURA || ' -> ' || :NEW.ID_FACTURA || ', Datos=' || '{col}=' || :OLD.FECHA_FACTURA || ' -> ' || :NEW.FECHA_FACTURA || ', ' || '{col}=' || :OLD.TOTAL || ' -> ' || :NEW.TOTAL || ', ' || '{col}=' || :OLD.CLIENTE_ID || ' -> ' || :NEW.CLIENTE_ID || ', ' || '{col}=' || :OLD.EMPLEADO_ID || ' -> ' || :NEW.EMPLEADO_ID || ', ' || '{col}=' || :OLD.PROMOCIONES_ID || ' -> ' || :NEW.PROMOCIONES_ID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'FACTURA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER factura_audit_delete
    AFTER DELETE ON FACTURA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_FACTURA || ', Datos=' || '{col}=' || :OLD.FECHA_FACTURA || ', ' || '{col}=' || :OLD.TOTAL || ', ' || '{col}=' || :OLD.CLIENTE_ID || ', ' || '{col}=' || :OLD.EMPLEADO_ID || ', ' || '{col}=' || :OLD.PROMOCIONES_ID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'FACTURA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER contrato_audit_insert
    AFTER INSERT ON CONTRATO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_CONTRATO || ', Datos=' || '{col}=' || :NEW.EMPLEADO_ID || ', ' || '{col}=' || :NEW.TIPO_CONTRATO || ', ' || '{col}=' || :NEW.FECHA_INICIO || ', ' || '{col}=' || :NEW.FECHA_FIN || ', ' || '{col}=' || :NEW.SALARIO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'CONTRATO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER contrato_audit_update
    AFTER UPDATE ON CONTRATO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_CONTRATO || ' -> ' || :NEW.ID_CONTRATO || ', Datos=' || '{col}=' || :OLD.EMPLEADO_ID || ' -> ' || :NEW.EMPLEADO_ID || ', ' || '{col}=' || :OLD.TIPO_CONTRATO || ' -> ' || :NEW.TIPO_CONTRATO || ', ' || '{col}=' || :OLD.FECHA_INICIO || ' -> ' || :NEW.FECHA_INICIO || ', ' || '{col}=' || :OLD.FECHA_FIN || ' -> ' || :NEW.FECHA_FIN || ', ' || '{col}=' || :OLD.SALARIO || ' -> ' || :NEW.SALARIO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'CONTRATO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER contrato_audit_delete
    AFTER DELETE ON CONTRATO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_CONTRATO || ', Datos=' || '{col}=' || :OLD.EMPLEADO_ID || ', ' || '{col}=' || :OLD.TIPO_CONTRATO || ', ' || '{col}=' || :OLD.FECHA_INICIO || ', ' || '{col}=' || :OLD.FECHA_FIN || ', ' || '{col}=' || :OLD.SALARIO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'CONTRATO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER metodo_pago_audit_insert
    AFTER INSERT ON METODO_PAGO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_METODO || ', Datos=' || '{col}=' || :NEW.NOMBRE || ', ' || '{col}=' || :NEW.DESCRIPCION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'METODO_PAGO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER metodo_pago_audit_update
    AFTER UPDATE ON METODO_PAGO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_METODO || ' -> ' || :NEW.ID_METODO || ', Datos=' || '{col}=' || :OLD.NOMBRE || ' -> ' || :NEW.NOMBRE || ', ' || '{col}=' || :OLD.DESCRIPCION || ' -> ' || :NEW.DESCRIPCION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'METODO_PAGO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER metodo_pago_audit_delete
    AFTER DELETE ON METODO_PAGO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_METODO || ', Datos=' || '{col}=' || :OLD.NOMBRE || ', ' || '{col}=' || :OLD.DESCRIPCION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'METODO_PAGO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER categoria_producto_audit_insert
    AFTER INSERT ON CATEGORIA_PRODUCTO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_CATEGORIA || ', Datos=' || '{col}=' || :NEW.NOMBRE || ', ' || '{col}=' || :NEW.DESCRIPCION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'CATEGORIA_PRODUCTO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER categoria_producto_audit_update
    AFTER UPDATE ON CATEGORIA_PRODUCTO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_CATEGORIA || ' -> ' || :NEW.ID_CATEGORIA || ', Datos=' || '{col}=' || :OLD.NOMBRE || ' -> ' || :NEW.NOMBRE || ', ' || '{col}=' || :OLD.DESCRIPCION || ' -> ' || :NEW.DESCRIPCION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'CATEGORIA_PRODUCTO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER categoria_producto_audit_delete
    AFTER DELETE ON CATEGORIA_PRODUCTO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_CATEGORIA || ', Datos=' || '{col}=' || :OLD.NOMBRE || ', ' || '{col}=' || :OLD.DESCRIPCION;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'CATEGORIA_PRODUCTO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER proveedor_audit_insert
    AFTER INSERT ON PROVEEDOR
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_PROVEEDOR || ', Datos=' || '{col}=' || :NEW.NOMBRE || ', ' || '{col}=' || :NEW.CONTACTO || ', ' || '{col}=' || :NEW.TELEFONO || ', ' || '{col}=' || :NEW.EMAIL;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PROVEEDOR',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER proveedor_audit_update
    AFTER UPDATE ON PROVEEDOR
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_PROVEEDOR || ' -> ' || :NEW.ID_PROVEEDOR || ', Datos=' || '{col}=' || :OLD.NOMBRE || ' -> ' || :NEW.NOMBRE || ', ' || '{col}=' || :OLD.CONTACTO || ' -> ' || :NEW.CONTACTO || ', ' || '{col}=' || :OLD.TELEFONO || ' -> ' || :NEW.TELEFONO || ', ' || '{col}=' || :OLD.EMAIL || ' -> ' || :NEW.EMAIL;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PROVEEDOR',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER proveedor_audit_delete
    AFTER DELETE ON PROVEEDOR
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_PROVEEDOR || ', Datos=' || '{col}=' || :OLD.NOMBRE || ', ' || '{col}=' || :OLD.CONTACTO || ', ' || '{col}=' || :OLD.TELEFONO || ', ' || '{col}=' || :OLD.EMAIL;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PROVEEDOR',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER producto_audit_insert
    AFTER INSERT ON PRODUCTO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_PRODUCTO || ', Datos=' || '{col}=' || :NEW.PROVEEDOR_ID || ', ' || '{col}=' || :NEW.NOMBRE || ', ' || '{col}=' || :NEW.DESCRIPCION || ', ' || '{col}=' || :NEW.PRECIO || ', ' || '{col}=' || :NEW.CATEGORIA_ID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PRODUCTO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER producto_audit_update
    AFTER UPDATE ON PRODUCTO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_PRODUCTO || ' -> ' || :NEW.ID_PRODUCTO || ', Datos=' || '{col}=' || :OLD.PROVEEDOR_ID || ' -> ' || :NEW.PROVEEDOR_ID || ', ' || '{col}=' || :OLD.NOMBRE || ' -> ' || :NEW.NOMBRE || ', ' || '{col}=' || :OLD.DESCRIPCION || ' -> ' || :NEW.DESCRIPCION || ', ' || '{col}=' || :OLD.PRECIO || ' -> ' || :NEW.PRECIO || ', ' || '{col}=' || :OLD.CATEGORIA_ID || ' -> ' || :NEW.CATEGORIA_ID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PRODUCTO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER producto_audit_delete
    AFTER DELETE ON PRODUCTO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_PRODUCTO || ', Datos=' || '{col}=' || :OLD.PROVEEDOR_ID || ', ' || '{col}=' || :OLD.NOMBRE || ', ' || '{col}=' || :OLD.DESCRIPCION || ', ' || '{col}=' || :OLD.PRECIO || ', ' || '{col}=' || :OLD.CATEGORIA_ID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PRODUCTO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER detalle_factura_audit_insert
    AFTER INSERT ON DETALLE_FACTURA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_DETALLE || ', Datos=' || '{col}=' || :NEW.FACTURA_ID || ', ' || '{col}=' || :NEW.PRODUCTO_ID || ', ' || '{col}=' || :NEW.METODO_ID || ', ' || '{col}=' || :NEW.CANTIDAD || ', ' || '{col}=' || :NEW.PRECIO_UNITARIO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'DETALLE_FACTURA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER detalle_factura_audit_update
    AFTER UPDATE ON DETALLE_FACTURA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_DETALLE || ' -> ' || :NEW.ID_DETALLE || ', Datos=' || '{col}=' || :OLD.FACTURA_ID || ' -> ' || :NEW.FACTURA_ID || ', ' || '{col}=' || :OLD.PRODUCTO_ID || ' -> ' || :NEW.PRODUCTO_ID || ', ' || '{col}=' || :OLD.METODO_ID || ' -> ' || :NEW.METODO_ID || ', ' || '{col}=' || :OLD.CANTIDAD || ' -> ' || :NEW.CANTIDAD || ', ' || '{col}=' || :OLD.PRECIO_UNITARIO || ' -> ' || :NEW.PRECIO_UNITARIO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'DETALLE_FACTURA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER detalle_factura_audit_delete
    AFTER DELETE ON DETALLE_FACTURA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_DETALLE || ', Datos=' || '{col}=' || :OLD.FACTURA_ID || ', ' || '{col}=' || :OLD.PRODUCTO_ID || ', ' || '{col}=' || :OLD.METODO_ID || ', ' || '{col}=' || :OLD.CANTIDAD || ', ' || '{col}=' || :OLD.PRECIO_UNITARIO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'DETALLE_FACTURA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER pasillo_audit_insert
    AFTER INSERT ON PASILLO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_PASILLO || ', Datos=' || '{col}=' || :NEW.NOMBRE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PASILLO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER pasillo_audit_update
    AFTER UPDATE ON PASILLO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_PASILLO || ' -> ' || :NEW.ID_PASILLO || ', Datos=' || '{col}=' || :OLD.NOMBRE || ' -> ' || :NEW.NOMBRE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PASILLO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER pasillo_audit_delete
    AFTER DELETE ON PASILLO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_PASILLO || ', Datos=' || '{col}=' || :OLD.NOMBRE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PASILLO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER dragon_audit_insert
    AFTER INSERT ON DRAGON
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID || ', Datos=' || '{col}=' || :NEW.NOMBRE || ', ' || '{col}=' || :NEW.EDAD;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'DRAGON',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER dragon_audit_update
    AFTER UPDATE ON DRAGON
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID || ' -> ' || :NEW.ID || ', Datos=' || '{col}=' || :OLD.NOMBRE || ' -> ' || :NEW.NOMBRE || ', ' || '{col}=' || :OLD.EDAD || ' -> ' || :NEW.EDAD;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'DRAGON',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER dragon_audit_delete
    AFTER DELETE ON DRAGON
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID || ', Datos=' || '{col}=' || :OLD.NOMBRE || ', ' || '{col}=' || :OLD.EDAD;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'DRAGON',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER nose_audit_insert
    AFTER INSERT ON NOSE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID || ', Datos=' || '{col}=' || :NEW.NOMBRE || ', ' || '{col}=' || :NEW.FECHA;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'NOSE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER nose_audit_update
    AFTER UPDATE ON NOSE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID || ' -> ' || :NEW.ID || ', Datos=' || '{col}=' || :OLD.NOMBRE || ' -> ' || :NEW.NOMBRE || ', ' || '{col}=' || :OLD.FECHA || ' -> ' || :NEW.FECHA;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'NOSE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER nose_audit_delete
    AFTER DELETE ON NOSE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID || ', Datos=' || '{col}=' || :OLD.NOMBRE || ', ' || '{col}=' || :OLD.FECHA;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'NOSE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER monte_audit_insert
    AFTER INSERT ON MONTE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID || ', Datos=' || '{col}=' || :NEW.NOMBRE || ', ' || '{col}=' || :NEW.TAMAÑO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MONTE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER monte_audit_update
    AFTER UPDATE ON MONTE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID || ' -> ' || :NEW.ID || ', Datos=' || '{col}=' || :OLD.NOMBRE || ' -> ' || :NEW.NOMBRE || ', ' || '{col}=' || :OLD.TAMAÑO || ' -> ' || :NEW.TAMAÑO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MONTE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER monte_audit_delete
    AFTER DELETE ON MONTE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID || ', Datos=' || '{col}=' || :OLD.NOMBRE || ', ' || '{col}=' || :OLD.TAMAÑO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MONTE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER musica_audit_insert
    AFTER INSERT ON MUSICA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID || ', Datos=' || '{col}=' || :NEW.NOMBRE || ', ' || '{col}=' || :NEW.ALBUM;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MUSICA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER musica_audit_update
    AFTER UPDATE ON MUSICA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID || ' -> ' || :NEW.ID || ', Datos=' || '{col}=' || :OLD.NOMBRE || ' -> ' || :NEW.NOMBRE || ', ' || '{col}=' || :OLD.ALBUM || ' -> ' || :NEW.ALBUM;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MUSICA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER musica_audit_delete
    AFTER DELETE ON MUSICA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID || ', Datos=' || '{col}=' || :OLD.NOMBRE || ', ' || '{col}=' || :OLD.ALBUM;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MUSICA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER inventario_audit_insert
    AFTER INSERT ON INVENTARIO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_PRODUCTO || ', Datos=' || '{col}=' || :NEW.CANTIDAD_DISPONIBLE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'INVENTARIO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER inventario_audit_update
    AFTER UPDATE ON INVENTARIO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_PRODUCTO || ' -> ' || :NEW.ID_PRODUCTO || ', Datos=' || '{col}=' || :OLD.CANTIDAD_DISPONIBLE || ' -> ' || :NEW.CANTIDAD_DISPONIBLE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'INVENTARIO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER inventario_audit_delete
    AFTER DELETE ON INVENTARIO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_PRODUCTO || ', Datos=' || '{col}=' || :OLD.CANTIDAD_DISPONIBLE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'INVENTARIO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER t_audit_insert
    AFTER INSERT ON T
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID || ', Datos=' || '{col}=' || :NEW.NOMBRE || ', ' || '{col}=' || :NEW.INICIO || ', ' || '{col}=' || :NEW.FIN;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'T',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER t_audit_update
    AFTER UPDATE ON T
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID || ' -> ' || :NEW.ID || ', Datos=' || '{col}=' || :OLD.NOMBRE || ' -> ' || :NEW.NOMBRE || ', ' || '{col}=' || :OLD.INICIO || ' -> ' || :NEW.INICIO || ', ' || '{col}=' || :OLD.FIN || ' -> ' || :NEW.FIN;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'T',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER t_audit_delete
    AFTER DELETE ON T
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID || ', Datos=' || '{col}=' || :OLD.NOMBRE || ', ' || '{col}=' || :OLD.INICIO || ', ' || '{col}=' || :OLD.FIN;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'T',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER puntos_fidelidad_audit_insert
    AFTER INSERT ON PUNTOS_FIDELIDAD
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_CLIENTE || ', Datos=' || '{col}=' || :NEW.PUNTOS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PUNTOS_FIDELIDAD',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER puntos_fidelidad_audit_update
    AFTER UPDATE ON PUNTOS_FIDELIDAD
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_CLIENTE || ' -> ' || :NEW.ID_CLIENTE || ', Datos=' || '{col}=' || :OLD.PUNTOS || ' -> ' || :NEW.PUNTOS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PUNTOS_FIDELIDAD',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER puntos_fidelidad_audit_delete
    AFTER DELETE ON PUNTOS_FIDELIDAD
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_CLIENTE || ', Datos=' || '{col}=' || :OLD.PUNTOS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'PUNTOS_FIDELIDAD',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER historial_puntos_audit_insert
    AFTER INSERT ON HISTORIAL_PUNTOS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.ID_HISTORIAL || ', Datos=' || '{col}=' || :NEW.ID_CLIENTE || ', ' || '{col}=' || :NEW.PUNTOS_GANADOS || ', ' || '{col}=' || :NEW.FECHA;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'HISTORIAL_PUNTOS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER historial_puntos_audit_update
    AFTER UPDATE ON HISTORIAL_PUNTOS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.ID_HISTORIAL || ' -> ' || :NEW.ID_HISTORIAL || ', Datos=' || '{col}=' || :OLD.ID_CLIENTE || ' -> ' || :NEW.ID_CLIENTE || ', ' || '{col}=' || :OLD.PUNTOS_GANADOS || ' -> ' || :NEW.PUNTOS_GANADOS || ', ' || '{col}=' || :OLD.FECHA || ' -> ' || :NEW.FECHA;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'HISTORIAL_PUNTOS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER historial_puntos_audit_delete
    AFTER DELETE ON HISTORIAL_PUNTOS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.ID_HISTORIAL || ', Datos=' || '{col}=' || :OLD.ID_CLIENTE || ', ' || '{col}=' || :OLD.PUNTOS_GANADOS || ', ' || '{col}=' || :OLD.FECHA;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'HISTORIAL_PUNTOS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrggc_gtlo_audit_insert
    AFTER INSERT ON LOGMNRGGC_GTLO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.KEYOBJ# || ', ' || '{col}=' || :NEW.LVLCNT || ', ' || '{col}=' || :NEW.BASEOBJ# || ', ' || '{col}=' || :NEW.BASEOBJV# || ', ' || '{col}=' || :NEW.LVL1OBJ# || ', ' || '{col}=' || :NEW.LVL2OBJ# || ', ' || '{col}=' || :NEW.LVL0TYPE# || ', ' || '{col}=' || :NEW.LVL1TYPE# || ', ' || '{col}=' || :NEW.LVL2TYPE# || ', ' || '{col}=' || :NEW.OWNER# || ', ' || '{col}=' || :NEW.OWNERNAME || ', ' || '{col}=' || :NEW.LVL0NAME || ', ' || '{col}=' || :NEW.LVL1NAME || ', ' || '{col}=' || :NEW.LVL2NAME || ', ' || '{col}=' || :NEW.INTCOLS || ', ' || '{col}=' || :NEW.COLS || ', ' || '{col}=' || :NEW.KERNELCOLS || ', ' || '{col}=' || :NEW.TAB_FLAGS || ', ' || '{col}=' || :NEW.TRIGFLAG || ', ' || '{col}=' || :NEW.ASSOC# || ', ' || '{col}=' || :NEW.OBJ_FLAGS || ', ' || '{col}=' || :NEW.TS# || ', ' || '{col}=' || :NEW.TSNAME || ', ' || '{col}=' || :NEW.PROPERTY || ', ' || '{col}=' || :NEW.START_SCN || ', ' || '{col}=' || :NEW.DROP_SCN || ', ' || '{col}=' || :NEW.XIDUSN || ', ' || '{col}=' || :NEW.XIDSLT || ', ' || '{col}=' || :NEW.XIDSQN || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.LOGMNR_SPARE1 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE2 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE3 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE4 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE5 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE6 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE7 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE8 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE9 || ', ' || '{col}=' || :NEW.PARTTYPE || ', ' || '{col}=' || :NEW.SUBPARTTYPE || ', ' || '{col}=' || :NEW.UNSUPPORTEDCOLS || ', ' || '{col}=' || :NEW.COMPLEXTYPECOLS || ', ' || '{col}=' || :NEW.NTPARENTOBJNUM || ', ' || '{col}=' || :NEW.NTPARENTOBJVERSION || ', ' || '{col}=' || :NEW.NTPARENTINTCOLNUM || ', ' || '{col}=' || :NEW.LOGMNRTLOFLAGS || ', ' || '{col}=' || :NEW.LOGMNRMCV || ', ' || '{col}=' || :NEW.ACDRFLAGS || ', ' || '{col}=' || :NEW.ACDRTSOBJ# || ', ' || '{col}=' || :NEW.ACDRROWTSINTCOL#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRGGC_GTLO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrggc_gtlo_audit_update
    AFTER UPDATE ON LOGMNRGGC_GTLO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.KEYOBJ# || ' -> ' || :NEW.KEYOBJ# || ', ' || '{col}=' || :OLD.LVLCNT || ' -> ' || :NEW.LVLCNT || ', ' || '{col}=' || :OLD.BASEOBJ# || ' -> ' || :NEW.BASEOBJ# || ', ' || '{col}=' || :OLD.BASEOBJV# || ' -> ' || :NEW.BASEOBJV# || ', ' || '{col}=' || :OLD.LVL1OBJ# || ' -> ' || :NEW.LVL1OBJ# || ', ' || '{col}=' || :OLD.LVL2OBJ# || ' -> ' || :NEW.LVL2OBJ# || ', ' || '{col}=' || :OLD.LVL0TYPE# || ' -> ' || :NEW.LVL0TYPE# || ', ' || '{col}=' || :OLD.LVL1TYPE# || ' -> ' || :NEW.LVL1TYPE# || ', ' || '{col}=' || :OLD.LVL2TYPE# || ' -> ' || :NEW.LVL2TYPE# || ', ' || '{col}=' || :OLD.OWNER# || ' -> ' || :NEW.OWNER# || ', ' || '{col}=' || :OLD.OWNERNAME || ' -> ' || :NEW.OWNERNAME || ', ' || '{col}=' || :OLD.LVL0NAME || ' -> ' || :NEW.LVL0NAME || ', ' || '{col}=' || :OLD.LVL1NAME || ' -> ' || :NEW.LVL1NAME || ', ' || '{col}=' || :OLD.LVL2NAME || ' -> ' || :NEW.LVL2NAME || ', ' || '{col}=' || :OLD.INTCOLS || ' -> ' || :NEW.INTCOLS || ', ' || '{col}=' || :OLD.COLS || ' -> ' || :NEW.COLS || ', ' || '{col}=' || :OLD.KERNELCOLS || ' -> ' || :NEW.KERNELCOLS || ', ' || '{col}=' || :OLD.TAB_FLAGS || ' -> ' || :NEW.TAB_FLAGS || ', ' || '{col}=' || :OLD.TRIGFLAG || ' -> ' || :NEW.TRIGFLAG || ', ' || '{col}=' || :OLD.ASSOC# || ' -> ' || :NEW.ASSOC# || ', ' || '{col}=' || :OLD.OBJ_FLAGS || ' -> ' || :NEW.OBJ_FLAGS || ', ' || '{col}=' || :OLD.TS# || ' -> ' || :NEW.TS# || ', ' || '{col}=' || :OLD.TSNAME || ' -> ' || :NEW.TSNAME || ', ' || '{col}=' || :OLD.PROPERTY || ' -> ' || :NEW.PROPERTY || ', ' || '{col}=' || :OLD.START_SCN || ' -> ' || :NEW.START_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ' -> ' || :NEW.DROP_SCN || ', ' || '{col}=' || :OLD.XIDUSN || ' -> ' || :NEW.XIDUSN || ', ' || '{col}=' || :OLD.XIDSLT || ' -> ' || :NEW.XIDSLT || ', ' || '{col}=' || :OLD.XIDSQN || ' -> ' || :NEW.XIDSQN || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.LOGMNR_SPARE1 || ' -> ' || :NEW.LOGMNR_SPARE1 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE2 || ' -> ' || :NEW.LOGMNR_SPARE2 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE3 || ' -> ' || :NEW.LOGMNR_SPARE3 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE4 || ' -> ' || :NEW.LOGMNR_SPARE4 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE5 || ' -> ' || :NEW.LOGMNR_SPARE5 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE6 || ' -> ' || :NEW.LOGMNR_SPARE6 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE7 || ' -> ' || :NEW.LOGMNR_SPARE7 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE8 || ' -> ' || :NEW.LOGMNR_SPARE8 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE9 || ' -> ' || :NEW.LOGMNR_SPARE9 || ', ' || '{col}=' || :OLD.PARTTYPE || ' -> ' || :NEW.PARTTYPE || ', ' || '{col}=' || :OLD.SUBPARTTYPE || ' -> ' || :NEW.SUBPARTTYPE || ', ' || '{col}=' || :OLD.UNSUPPORTEDCOLS || ' -> ' || :NEW.UNSUPPORTEDCOLS || ', ' || '{col}=' || :OLD.COMPLEXTYPECOLS || ' -> ' || :NEW.COMPLEXTYPECOLS || ', ' || '{col}=' || :OLD.NTPARENTOBJNUM || ' -> ' || :NEW.NTPARENTOBJNUM || ', ' || '{col}=' || :OLD.NTPARENTOBJVERSION || ' -> ' || :NEW.NTPARENTOBJVERSION || ', ' || '{col}=' || :OLD.NTPARENTINTCOLNUM || ' -> ' || :NEW.NTPARENTINTCOLNUM || ', ' || '{col}=' || :OLD.LOGMNRTLOFLAGS || ' -> ' || :NEW.LOGMNRTLOFLAGS || ', ' || '{col}=' || :OLD.LOGMNRMCV || ' -> ' || :NEW.LOGMNRMCV || ', ' || '{col}=' || :OLD.ACDRFLAGS || ' -> ' || :NEW.ACDRFLAGS || ', ' || '{col}=' || :OLD.ACDRTSOBJ# || ' -> ' || :NEW.ACDRTSOBJ# || ', ' || '{col}=' || :OLD.ACDRROWTSINTCOL# || ' -> ' || :NEW.ACDRROWTSINTCOL#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRGGC_GTLO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrggc_gtlo_audit_delete
    AFTER DELETE ON LOGMNRGGC_GTLO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.KEYOBJ# || ', ' || '{col}=' || :OLD.LVLCNT || ', ' || '{col}=' || :OLD.BASEOBJ# || ', ' || '{col}=' || :OLD.BASEOBJV# || ', ' || '{col}=' || :OLD.LVL1OBJ# || ', ' || '{col}=' || :OLD.LVL2OBJ# || ', ' || '{col}=' || :OLD.LVL0TYPE# || ', ' || '{col}=' || :OLD.LVL1TYPE# || ', ' || '{col}=' || :OLD.LVL2TYPE# || ', ' || '{col}=' || :OLD.OWNER# || ', ' || '{col}=' || :OLD.OWNERNAME || ', ' || '{col}=' || :OLD.LVL0NAME || ', ' || '{col}=' || :OLD.LVL1NAME || ', ' || '{col}=' || :OLD.LVL2NAME || ', ' || '{col}=' || :OLD.INTCOLS || ', ' || '{col}=' || :OLD.COLS || ', ' || '{col}=' || :OLD.KERNELCOLS || ', ' || '{col}=' || :OLD.TAB_FLAGS || ', ' || '{col}=' || :OLD.TRIGFLAG || ', ' || '{col}=' || :OLD.ASSOC# || ', ' || '{col}=' || :OLD.OBJ_FLAGS || ', ' || '{col}=' || :OLD.TS# || ', ' || '{col}=' || :OLD.TSNAME || ', ' || '{col}=' || :OLD.PROPERTY || ', ' || '{col}=' || :OLD.START_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ', ' || '{col}=' || :OLD.XIDUSN || ', ' || '{col}=' || :OLD.XIDSLT || ', ' || '{col}=' || :OLD.XIDSQN || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.LOGMNR_SPARE1 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE2 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE3 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE4 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE5 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE6 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE7 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE8 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE9 || ', ' || '{col}=' || :OLD.PARTTYPE || ', ' || '{col}=' || :OLD.SUBPARTTYPE || ', ' || '{col}=' || :OLD.UNSUPPORTEDCOLS || ', ' || '{col}=' || :OLD.COMPLEXTYPECOLS || ', ' || '{col}=' || :OLD.NTPARENTOBJNUM || ', ' || '{col}=' || :OLD.NTPARENTOBJVERSION || ', ' || '{col}=' || :OLD.NTPARENTINTCOLNUM || ', ' || '{col}=' || :OLD.LOGMNRTLOFLAGS || ', ' || '{col}=' || :OLD.LOGMNRMCV || ', ' || '{col}=' || :OLD.ACDRFLAGS || ', ' || '{col}=' || :OLD.ACDRTSOBJ# || ', ' || '{col}=' || :OLD.ACDRROWTSINTCOL#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRGGC_GTLO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrggc_gtcs_audit_insert
    AFTER INSERT ON LOGMNRGGC_GTCS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.INTERVAL_LEADING_PRECISION || ', ' || '{col}=' || :NEW.INTERVAL_TRAILING_PRECISION || ', ' || '{col}=' || :NEW.PROPERTY || ', ' || '{col}=' || :NEW.TOID || ', ' || '{col}=' || :NEW.CHARSETID || ', ' || '{col}=' || :NEW.CHARSETFORM || ', ' || '{col}=' || :NEW.TYPENAME || ', ' || '{col}=' || :NEW.FQCOLNAME || ', ' || '{col}=' || :NEW.NUMINTCOLS || ', ' || '{col}=' || :NEW.NUMATTRS || ', ' || '{col}=' || :NEW.ADTORDER || ', ' || '{col}=' || :NEW.LOGMNR_SPARE1 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE2 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE3 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE4 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE5 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE6 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE7 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE8 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE9 || ', ' || '{col}=' || :NEW.COL# || ', ' || '{col}=' || :NEW.XTYPESCHEMANAME || ', ' || '{col}=' || :NEW.XTYPENAME || ', ' || '{col}=' || :NEW.XFQCOLNAME || ', ' || '{col}=' || :NEW.XTOPINTCOL || ', ' || '{col}=' || :NEW.XREFFEDTABLEOBJN || ', ' || '{col}=' || :NEW.XREFFEDTABLEOBJV || ', ' || '{col}=' || :NEW.XCOLTYPEFLAGS || ', ' || '{col}=' || :NEW.XOPQTYPETYPE || ', ' || '{col}=' || :NEW.XOPQTYPEFLAGS || ', ' || '{col}=' || :NEW.XOPQLOBINTCOL || ', ' || '{col}=' || :NEW.XOPQOBJINTCOL || ', ' || '{col}=' || :NEW.XXMLINTCOL || ', ' || '{col}=' || :NEW.EAOWNER# || ', ' || '{col}=' || :NEW.EAMKEYID || ', ' || '{col}=' || :NEW.EAENCALG || ', ' || '{col}=' || :NEW.EAINTALG || ', ' || '{col}=' || :NEW.EACOLKLC || ', ' || '{col}=' || :NEW.EAKLCLEN || ', ' || '{col}=' || :NEW.EAFLAGS || ', ' || '{col}=' || :NEW.LOGMNRDERIVEDFLAGS || ', ' || '{col}=' || :NEW.COLLID || ', ' || '{col}=' || :NEW.COLLINTCOL# || ', ' || '{col}=' || :NEW.ACDRRESCOL# || ', ' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.OBJV# || ', ' || '{col}=' || :NEW.SEGCOL# || ', ' || '{col}=' || :NEW.INTCOL# || ', ' || '{col}=' || :NEW.COLNAME || ', ' || '{col}=' || :NEW.TYPE# || ', ' || '{col}=' || :NEW.LENGTH || ', ' || '{col}=' || :NEW.PRECISION || ', ' || '{col}=' || :NEW.SCALE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRGGC_GTCS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrggc_gtcs_audit_update
    AFTER UPDATE ON LOGMNRGGC_GTCS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.INTERVAL_LEADING_PRECISION || ' -> ' || :NEW.INTERVAL_LEADING_PRECISION || ', ' || '{col}=' || :OLD.INTERVAL_TRAILING_PRECISION || ' -> ' || :NEW.INTERVAL_TRAILING_PRECISION || ', ' || '{col}=' || :OLD.PROPERTY || ' -> ' || :NEW.PROPERTY || ', ' || '{col}=' || :OLD.TOID || ' -> ' || :NEW.TOID || ', ' || '{col}=' || :OLD.CHARSETID || ' -> ' || :NEW.CHARSETID || ', ' || '{col}=' || :OLD.CHARSETFORM || ' -> ' || :NEW.CHARSETFORM || ', ' || '{col}=' || :OLD.TYPENAME || ' -> ' || :NEW.TYPENAME || ', ' || '{col}=' || :OLD.FQCOLNAME || ' -> ' || :NEW.FQCOLNAME || ', ' || '{col}=' || :OLD.NUMINTCOLS || ' -> ' || :NEW.NUMINTCOLS || ', ' || '{col}=' || :OLD.NUMATTRS || ' -> ' || :NEW.NUMATTRS || ', ' || '{col}=' || :OLD.ADTORDER || ' -> ' || :NEW.ADTORDER || ', ' || '{col}=' || :OLD.LOGMNR_SPARE1 || ' -> ' || :NEW.LOGMNR_SPARE1 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE2 || ' -> ' || :NEW.LOGMNR_SPARE2 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE3 || ' -> ' || :NEW.LOGMNR_SPARE3 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE4 || ' -> ' || :NEW.LOGMNR_SPARE4 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE5 || ' -> ' || :NEW.LOGMNR_SPARE5 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE6 || ' -> ' || :NEW.LOGMNR_SPARE6 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE7 || ' -> ' || :NEW.LOGMNR_SPARE7 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE8 || ' -> ' || :NEW.LOGMNR_SPARE8 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE9 || ' -> ' || :NEW.LOGMNR_SPARE9 || ', ' || '{col}=' || :OLD.COL# || ' -> ' || :NEW.COL# || ', ' || '{col}=' || :OLD.XTYPESCHEMANAME || ' -> ' || :NEW.XTYPESCHEMANAME || ', ' || '{col}=' || :OLD.XTYPENAME || ' -> ' || :NEW.XTYPENAME || ', ' || '{col}=' || :OLD.XFQCOLNAME || ' -> ' || :NEW.XFQCOLNAME || ', ' || '{col}=' || :OLD.XTOPINTCOL || ' -> ' || :NEW.XTOPINTCOL || ', ' || '{col}=' || :OLD.XREFFEDTABLEOBJN || ' -> ' || :NEW.XREFFEDTABLEOBJN || ', ' || '{col}=' || :OLD.XREFFEDTABLEOBJV || ' -> ' || :NEW.XREFFEDTABLEOBJV || ', ' || '{col}=' || :OLD.XCOLTYPEFLAGS || ' -> ' || :NEW.XCOLTYPEFLAGS || ', ' || '{col}=' || :OLD.XOPQTYPETYPE || ' -> ' || :NEW.XOPQTYPETYPE || ', ' || '{col}=' || :OLD.XOPQTYPEFLAGS || ' -> ' || :NEW.XOPQTYPEFLAGS || ', ' || '{col}=' || :OLD.XOPQLOBINTCOL || ' -> ' || :NEW.XOPQLOBINTCOL || ', ' || '{col}=' || :OLD.XOPQOBJINTCOL || ' -> ' || :NEW.XOPQOBJINTCOL || ', ' || '{col}=' || :OLD.XXMLINTCOL || ' -> ' || :NEW.XXMLINTCOL || ', ' || '{col}=' || :OLD.EAOWNER# || ' -> ' || :NEW.EAOWNER# || ', ' || '{col}=' || :OLD.EAMKEYID || ' -> ' || :NEW.EAMKEYID || ', ' || '{col}=' || :OLD.EAENCALG || ' -> ' || :NEW.EAENCALG || ', ' || '{col}=' || :OLD.EAINTALG || ' -> ' || :NEW.EAINTALG || ', ' || '{col}=' || :OLD.EACOLKLC || ' -> ' || :NEW.EACOLKLC || ', ' || '{col}=' || :OLD.EAKLCLEN || ' -> ' || :NEW.EAKLCLEN || ', ' || '{col}=' || :OLD.EAFLAGS || ' -> ' || :NEW.EAFLAGS || ', ' || '{col}=' || :OLD.LOGMNRDERIVEDFLAGS || ' -> ' || :NEW.LOGMNRDERIVEDFLAGS || ', ' || '{col}=' || :OLD.COLLID || ' -> ' || :NEW.COLLID || ', ' || '{col}=' || :OLD.COLLINTCOL# || ' -> ' || :NEW.COLLINTCOL# || ', ' || '{col}=' || :OLD.ACDRRESCOL# || ' -> ' || :NEW.ACDRRESCOL# || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.OBJV# || ' -> ' || :NEW.OBJV# || ', ' || '{col}=' || :OLD.SEGCOL# || ' -> ' || :NEW.SEGCOL# || ', ' || '{col}=' || :OLD.INTCOL# || ' -> ' || :NEW.INTCOL# || ', ' || '{col}=' || :OLD.COLNAME || ' -> ' || :NEW.COLNAME || ', ' || '{col}=' || :OLD.TYPE# || ' -> ' || :NEW.TYPE# || ', ' || '{col}=' || :OLD.LENGTH || ' -> ' || :NEW.LENGTH || ', ' || '{col}=' || :OLD.PRECISION || ' -> ' || :NEW.PRECISION || ', ' || '{col}=' || :OLD.SCALE || ' -> ' || :NEW.SCALE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRGGC_GTCS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrggc_gtcs_audit_delete
    AFTER DELETE ON LOGMNRGGC_GTCS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.INTERVAL_LEADING_PRECISION || ', ' || '{col}=' || :OLD.INTERVAL_TRAILING_PRECISION || ', ' || '{col}=' || :OLD.PROPERTY || ', ' || '{col}=' || :OLD.TOID || ', ' || '{col}=' || :OLD.CHARSETID || ', ' || '{col}=' || :OLD.CHARSETFORM || ', ' || '{col}=' || :OLD.TYPENAME || ', ' || '{col}=' || :OLD.FQCOLNAME || ', ' || '{col}=' || :OLD.NUMINTCOLS || ', ' || '{col}=' || :OLD.NUMATTRS || ', ' || '{col}=' || :OLD.ADTORDER || ', ' || '{col}=' || :OLD.LOGMNR_SPARE1 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE2 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE3 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE4 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE5 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE6 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE7 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE8 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE9 || ', ' || '{col}=' || :OLD.COL# || ', ' || '{col}=' || :OLD.XTYPESCHEMANAME || ', ' || '{col}=' || :OLD.XTYPENAME || ', ' || '{col}=' || :OLD.XFQCOLNAME || ', ' || '{col}=' || :OLD.XTOPINTCOL || ', ' || '{col}=' || :OLD.XREFFEDTABLEOBJN || ', ' || '{col}=' || :OLD.XREFFEDTABLEOBJV || ', ' || '{col}=' || :OLD.XCOLTYPEFLAGS || ', ' || '{col}=' || :OLD.XOPQTYPETYPE || ', ' || '{col}=' || :OLD.XOPQTYPEFLAGS || ', ' || '{col}=' || :OLD.XOPQLOBINTCOL || ', ' || '{col}=' || :OLD.XOPQOBJINTCOL || ', ' || '{col}=' || :OLD.XXMLINTCOL || ', ' || '{col}=' || :OLD.EAOWNER# || ', ' || '{col}=' || :OLD.EAMKEYID || ', ' || '{col}=' || :OLD.EAENCALG || ', ' || '{col}=' || :OLD.EAINTALG || ', ' || '{col}=' || :OLD.EACOLKLC || ', ' || '{col}=' || :OLD.EAKLCLEN || ', ' || '{col}=' || :OLD.EAFLAGS || ', ' || '{col}=' || :OLD.LOGMNRDERIVEDFLAGS || ', ' || '{col}=' || :OLD.COLLID || ', ' || '{col}=' || :OLD.COLLINTCOL# || ', ' || '{col}=' || :OLD.ACDRRESCOL# || ', ' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.OBJV# || ', ' || '{col}=' || :OLD.SEGCOL# || ', ' || '{col}=' || :OLD.INTCOL# || ', ' || '{col}=' || :OLD.COLNAME || ', ' || '{col}=' || :OLD.TYPE# || ', ' || '{col}=' || :OLD.LENGTH || ', ' || '{col}=' || :OLD.PRECISION || ', ' || '{col}=' || :OLD.SCALE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRGGC_GTCS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_session$_audit_insert
    AFTER INSERT ON LOGMNR_SESSION$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.SESSION# || ', Datos=' || '{col}=' || :NEW.SESSION_NAME || ', ' || '{col}=' || :NEW.DB_ID || ', ' || '{col}=' || :NEW.RESETLOGS_CHANGE# || ', ' || '{col}=' || :NEW.SESSION_ATTR || ', ' || '{col}=' || :NEW.SESSION_ATTR_VERBOSE || ', ' || '{col}=' || :NEW.START_SCN || ', ' || '{col}=' || :NEW.END_SCN || ', ' || '{col}=' || :NEW.SPILL_SCN || ', ' || '{col}=' || :NEW.SPILL_TIME || ', ' || '{col}=' || :NEW.OLDEST_SCN || ', ' || '{col}=' || :NEW.RESUME_SCN || ', ' || '{col}=' || :NEW.GLOBAL_DB_NAME || ', ' || '{col}=' || :NEW.RESET_TIMESTAMP || ', ' || '{col}=' || :NEW.BRANCH_SCN || ', ' || '{col}=' || :NEW.VERSION || ', ' || '{col}=' || :NEW.REDO_COMPAT || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.PURGE_SCN || ', ' || '{col}=' || :NEW.SPARE3 || ', ' || '{col}=' || :NEW.SPARE4 || ', ' || '{col}=' || :NEW.SPARE5 || ', ' || '{col}=' || :NEW.SPARE6 || ', ' || '{col}=' || :NEW.SPARE7 || ', ' || '{col}=' || :NEW.SPARE8 || ', ' || '{col}=' || :NEW.SPARE9 || ', ' || '{col}=' || :NEW.CLIENT#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SESSION$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_session$_audit_update
    AFTER UPDATE ON LOGMNR_SESSION$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.SESSION# || ' -> ' || :NEW.SESSION# || ', Datos=' || '{col}=' || :OLD.SESSION_NAME || ' -> ' || :NEW.SESSION_NAME || ', ' || '{col}=' || :OLD.DB_ID || ' -> ' || :NEW.DB_ID || ', ' || '{col}=' || :OLD.RESETLOGS_CHANGE# || ' -> ' || :NEW.RESETLOGS_CHANGE# || ', ' || '{col}=' || :OLD.SESSION_ATTR || ' -> ' || :NEW.SESSION_ATTR || ', ' || '{col}=' || :OLD.SESSION_ATTR_VERBOSE || ' -> ' || :NEW.SESSION_ATTR_VERBOSE || ', ' || '{col}=' || :OLD.START_SCN || ' -> ' || :NEW.START_SCN || ', ' || '{col}=' || :OLD.END_SCN || ' -> ' || :NEW.END_SCN || ', ' || '{col}=' || :OLD.SPILL_SCN || ' -> ' || :NEW.SPILL_SCN || ', ' || '{col}=' || :OLD.SPILL_TIME || ' -> ' || :NEW.SPILL_TIME || ', ' || '{col}=' || :OLD.OLDEST_SCN || ' -> ' || :NEW.OLDEST_SCN || ', ' || '{col}=' || :OLD.RESUME_SCN || ' -> ' || :NEW.RESUME_SCN || ', ' || '{col}=' || :OLD.GLOBAL_DB_NAME || ' -> ' || :NEW.GLOBAL_DB_NAME || ', ' || '{col}=' || :OLD.RESET_TIMESTAMP || ' -> ' || :NEW.RESET_TIMESTAMP || ', ' || '{col}=' || :OLD.BRANCH_SCN || ' -> ' || :NEW.BRANCH_SCN || ', ' || '{col}=' || :OLD.VERSION || ' -> ' || :NEW.VERSION || ', ' || '{col}=' || :OLD.REDO_COMPAT || ' -> ' || :NEW.REDO_COMPAT || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.PURGE_SCN || ' -> ' || :NEW.PURGE_SCN || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ' -> ' || :NEW.SPARE4 || ', ' || '{col}=' || :OLD.SPARE5 || ' -> ' || :NEW.SPARE5 || ', ' || '{col}=' || :OLD.SPARE6 || ' -> ' || :NEW.SPARE6 || ', ' || '{col}=' || :OLD.SPARE7 || ' -> ' || :NEW.SPARE7 || ', ' || '{col}=' || :OLD.SPARE8 || ' -> ' || :NEW.SPARE8 || ', ' || '{col}=' || :OLD.SPARE9 || ' -> ' || :NEW.SPARE9 || ', ' || '{col}=' || :OLD.CLIENT# || ' -> ' || :NEW.CLIENT#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SESSION$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_session$_audit_delete
    AFTER DELETE ON LOGMNR_SESSION$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.SESSION# || ', Datos=' || '{col}=' || :OLD.SESSION_NAME || ', ' || '{col}=' || :OLD.DB_ID || ', ' || '{col}=' || :OLD.RESETLOGS_CHANGE# || ', ' || '{col}=' || :OLD.SESSION_ATTR || ', ' || '{col}=' || :OLD.SESSION_ATTR_VERBOSE || ', ' || '{col}=' || :OLD.START_SCN || ', ' || '{col}=' || :OLD.END_SCN || ', ' || '{col}=' || :OLD.SPILL_SCN || ', ' || '{col}=' || :OLD.SPILL_TIME || ', ' || '{col}=' || :OLD.OLDEST_SCN || ', ' || '{col}=' || :OLD.RESUME_SCN || ', ' || '{col}=' || :OLD.GLOBAL_DB_NAME || ', ' || '{col}=' || :OLD.RESET_TIMESTAMP || ', ' || '{col}=' || :OLD.BRANCH_SCN || ', ' || '{col}=' || :OLD.VERSION || ', ' || '{col}=' || :OLD.REDO_COMPAT || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.PURGE_SCN || ', ' || '{col}=' || :OLD.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ', ' || '{col}=' || :OLD.SPARE5 || ', ' || '{col}=' || :OLD.SPARE6 || ', ' || '{col}=' || :OLD.SPARE7 || ', ' || '{col}=' || :OLD.SPARE8 || ', ' || '{col}=' || :OLD.SPARE9 || ', ' || '{col}=' || :OLD.CLIENT#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SESSION$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_workload_audit_insert
    AFTER INSERT ON MVIEW$_ADV_WORKLOAD
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.QUERYID# || ', Datos=' || '{col}=' || :NEW.COLLECTIONID# || ', ' || '{col}=' || :NEW.COLLECTTIME || ', ' || '{col}=' || :NEW.APPLICATION || ', ' || '{col}=' || :NEW.CARDINALITY || ', ' || '{col}=' || :NEW.RESULTSIZE || ', ' || '{col}=' || :NEW.UNAME || ', ' || '{col}=' || :NEW.QDATE || ', ' || '{col}=' || :NEW.PRIORITY || ', ' || '{col}=' || :NEW.EXEC_TIME || ', ' || '{col}=' || :NEW.SQL_TEXT || ', ' || '{col}=' || :NEW.SQL_TEXTLEN || ', ' || '{col}=' || :NEW.SQL_HASH || ', ' || '{col}=' || :NEW.SQL_ADDR || ', ' || '{col}=' || :NEW.FREQUENCY;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_WORKLOAD',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_workload_audit_update
    AFTER UPDATE ON MVIEW$_ADV_WORKLOAD
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.QUERYID# || ' -> ' || :NEW.QUERYID# || ', Datos=' || '{col}=' || :OLD.COLLECTIONID# || ' -> ' || :NEW.COLLECTIONID# || ', ' || '{col}=' || :OLD.COLLECTTIME || ' -> ' || :NEW.COLLECTTIME || ', ' || '{col}=' || :OLD.APPLICATION || ' -> ' || :NEW.APPLICATION || ', ' || '{col}=' || :OLD.CARDINALITY || ' -> ' || :NEW.CARDINALITY || ', ' || '{col}=' || :OLD.RESULTSIZE || ' -> ' || :NEW.RESULTSIZE || ', ' || '{col}=' || :OLD.UNAME || ' -> ' || :NEW.UNAME || ', ' || '{col}=' || :OLD.QDATE || ' -> ' || :NEW.QDATE || ', ' || '{col}=' || :OLD.PRIORITY || ' -> ' || :NEW.PRIORITY || ', ' || '{col}=' || :OLD.EXEC_TIME || ' -> ' || :NEW.EXEC_TIME || ', ' || '{col}=' || :OLD.SQL_TEXT || ' -> ' || :NEW.SQL_TEXT || ', ' || '{col}=' || :OLD.SQL_TEXTLEN || ' -> ' || :NEW.SQL_TEXTLEN || ', ' || '{col}=' || :OLD.SQL_HASH || ' -> ' || :NEW.SQL_HASH || ', ' || '{col}=' || :OLD.SQL_ADDR || ' -> ' || :NEW.SQL_ADDR || ', ' || '{col}=' || :OLD.FREQUENCY || ' -> ' || :NEW.FREQUENCY;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_WORKLOAD',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_workload_audit_delete
    AFTER DELETE ON MVIEW$_ADV_WORKLOAD
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.QUERYID# || ', Datos=' || '{col}=' || :OLD.COLLECTIONID# || ', ' || '{col}=' || :OLD.COLLECTTIME || ', ' || '{col}=' || :OLD.APPLICATION || ', ' || '{col}=' || :OLD.CARDINALITY || ', ' || '{col}=' || :OLD.RESULTSIZE || ', ' || '{col}=' || :OLD.UNAME || ', ' || '{col}=' || :OLD.QDATE || ', ' || '{col}=' || :OLD.PRIORITY || ', ' || '{col}=' || :OLD.EXEC_TIME || ', ' || '{col}=' || :OLD.SQL_TEXT || ', ' || '{col}=' || :OLD.SQL_TEXTLEN || ', ' || '{col}=' || :OLD.SQL_HASH || ', ' || '{col}=' || :OLD.SQL_ADDR || ', ' || '{col}=' || :OLD.FREQUENCY;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_WORKLOAD',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_filter_audit_insert
    AFTER INSERT ON MVIEW$_ADV_FILTER
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.FILTERID# || ', Datos=' || '{col}=' || :NEW.SUBFILTERNUM# || ', ' || '{col}=' || :NEW.SUBFILTERTYPE || ', ' || '{col}=' || :NEW.STR_VALUE || ', ' || '{col}=' || :NEW.NUM_VALUE1 || ', ' || '{col}=' || :NEW.NUM_VALUE2 || ', ' || '{col}=' || :NEW.DATE_VALUE1 || ', ' || '{col}=' || :NEW.DATE_VALUE2;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_FILTER',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_filter_audit_update
    AFTER UPDATE ON MVIEW$_ADV_FILTER
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.FILTERID# || ' -> ' || :NEW.FILTERID# || ', Datos=' || '{col}=' || :OLD.SUBFILTERNUM# || ' -> ' || :NEW.SUBFILTERNUM# || ', ' || '{col}=' || :OLD.SUBFILTERTYPE || ' -> ' || :NEW.SUBFILTERTYPE || ', ' || '{col}=' || :OLD.STR_VALUE || ' -> ' || :NEW.STR_VALUE || ', ' || '{col}=' || :OLD.NUM_VALUE1 || ' -> ' || :NEW.NUM_VALUE1 || ', ' || '{col}=' || :OLD.NUM_VALUE2 || ' -> ' || :NEW.NUM_VALUE2 || ', ' || '{col}=' || :OLD.DATE_VALUE1 || ' -> ' || :NEW.DATE_VALUE1 || ', ' || '{col}=' || :OLD.DATE_VALUE2 || ' -> ' || :NEW.DATE_VALUE2;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_FILTER',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_filter_audit_delete
    AFTER DELETE ON MVIEW$_ADV_FILTER
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.FILTERID# || ', Datos=' || '{col}=' || :OLD.SUBFILTERNUM# || ', ' || '{col}=' || :OLD.SUBFILTERTYPE || ', ' || '{col}=' || :OLD.STR_VALUE || ', ' || '{col}=' || :OLD.NUM_VALUE1 || ', ' || '{col}=' || :OLD.NUM_VALUE2 || ', ' || '{col}=' || :OLD.DATE_VALUE1 || ', ' || '{col}=' || :OLD.DATE_VALUE2;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_FILTER',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_log_audit_insert
    AFTER INSERT ON MVIEW$_ADV_LOG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.RUNID# || ', Datos=' || '{col}=' || :NEW.FILTERID# || ', ' || '{col}=' || :NEW.RUN_BEGIN || ', ' || '{col}=' || :NEW.RUN_END || ', ' || '{col}=' || :NEW.RUN_TYPE || ', ' || '{col}=' || :NEW.UNAME || ', ' || '{col}=' || :NEW.STATUS || ', ' || '{col}=' || :NEW.MESSAGE || ', ' || '{col}=' || :NEW.COMPLETED || ', ' || '{col}=' || :NEW.TOTAL || ', ' || '{col}=' || :NEW.ERROR_CODE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_LOG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_log_audit_update
    AFTER UPDATE ON MVIEW$_ADV_LOG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.RUNID# || ' -> ' || :NEW.RUNID# || ', Datos=' || '{col}=' || :OLD.FILTERID# || ' -> ' || :NEW.FILTERID# || ', ' || '{col}=' || :OLD.RUN_BEGIN || ' -> ' || :NEW.RUN_BEGIN || ', ' || '{col}=' || :OLD.RUN_END || ' -> ' || :NEW.RUN_END || ', ' || '{col}=' || :OLD.RUN_TYPE || ' -> ' || :NEW.RUN_TYPE || ', ' || '{col}=' || :OLD.UNAME || ' -> ' || :NEW.UNAME || ', ' || '{col}=' || :OLD.STATUS || ' -> ' || :NEW.STATUS || ', ' || '{col}=' || :OLD.MESSAGE || ' -> ' || :NEW.MESSAGE || ', ' || '{col}=' || :OLD.COMPLETED || ' -> ' || :NEW.COMPLETED || ', ' || '{col}=' || :OLD.TOTAL || ' -> ' || :NEW.TOTAL || ', ' || '{col}=' || :OLD.ERROR_CODE || ' -> ' || :NEW.ERROR_CODE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_LOG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_log_audit_delete
    AFTER DELETE ON MVIEW$_ADV_LOG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.RUNID# || ', Datos=' || '{col}=' || :OLD.FILTERID# || ', ' || '{col}=' || :OLD.RUN_BEGIN || ', ' || '{col}=' || :OLD.RUN_END || ', ' || '{col}=' || :OLD.RUN_TYPE || ', ' || '{col}=' || :OLD.UNAME || ', ' || '{col}=' || :OLD.STATUS || ', ' || '{col}=' || :OLD.MESSAGE || ', ' || '{col}=' || :OLD.COMPLETED || ', ' || '{col}=' || :OLD.TOTAL || ', ' || '{col}=' || :OLD.ERROR_CODE;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_LOG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_level_audit_insert
    AFTER INSERT ON MVIEW$_ADV_LEVEL
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.RUNID# || ', Datos=' || '{col}=' || :NEW.LEVELNAME || ', ' || '{col}=' || :NEW.LEVELID# || ', ' || '{col}=' || :NEW.DIMOBJ# || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.TBLOBJ# || ', ' || '{col}=' || :NEW.COLUMNLIST;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_LEVEL',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_level_audit_update
    AFTER UPDATE ON MVIEW$_ADV_LEVEL
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.RUNID# || ' -> ' || :NEW.RUNID# || ', Datos=' || '{col}=' || :OLD.LEVELNAME || ' -> ' || :NEW.LEVELNAME || ', ' || '{col}=' || :OLD.LEVELID# || ' -> ' || :NEW.LEVELID# || ', ' || '{col}=' || :OLD.DIMOBJ# || ' -> ' || :NEW.DIMOBJ# || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.TBLOBJ# || ' -> ' || :NEW.TBLOBJ# || ', ' || '{col}=' || :OLD.COLUMNLIST || ' -> ' || :NEW.COLUMNLIST;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_LEVEL',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_level_audit_delete
    AFTER DELETE ON MVIEW$_ADV_LEVEL
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.RUNID# || ', Datos=' || '{col}=' || :OLD.LEVELNAME || ', ' || '{col}=' || :OLD.LEVELID# || ', ' || '{col}=' || :OLD.DIMOBJ# || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.TBLOBJ# || ', ' || '{col}=' || :OLD.COLUMNLIST;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_LEVEL',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_rollup_audit_insert
    AFTER INSERT ON MVIEW$_ADV_ROLLUP
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.RUNID# || ', Datos=' || '{col}=' || :NEW.CLEVELID# || ', ' || '{col}=' || :NEW.PLEVELID# || ', ' || '{col}=' || :NEW.FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_ROLLUP',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_rollup_audit_update
    AFTER UPDATE ON MVIEW$_ADV_ROLLUP
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.RUNID# || ' -> ' || :NEW.RUNID# || ', Datos=' || '{col}=' || :OLD.CLEVELID# || ' -> ' || :NEW.CLEVELID# || ', ' || '{col}=' || :OLD.PLEVELID# || ' -> ' || :NEW.PLEVELID# || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_ROLLUP',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_rollup_audit_delete
    AFTER DELETE ON MVIEW$_ADV_ROLLUP
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.RUNID# || ', Datos=' || '{col}=' || :OLD.CLEVELID# || ', ' || '{col}=' || :OLD.PLEVELID# || ', ' || '{col}=' || :OLD.FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_ROLLUP',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_ajg_audit_insert
    AFTER INSERT ON MVIEW$_ADV_AJG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.AJGID# || ', Datos=' || '{col}=' || :NEW.RUNID# || ', ' || '{col}=' || :NEW.AJGDESLEN || ', ' || '{col}=' || :NEW.AJGDES || ', ' || '{col}=' || :NEW.HASHVALUE || ', ' || '{col}=' || :NEW.FREQUENCY;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_AJG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_ajg_audit_update
    AFTER UPDATE ON MVIEW$_ADV_AJG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.AJGID# || ' -> ' || :NEW.AJGID# || ', Datos=' || '{col}=' || :OLD.RUNID# || ' -> ' || :NEW.RUNID# || ', ' || '{col}=' || :OLD.AJGDESLEN || ' -> ' || :NEW.AJGDESLEN || ', ' || '{col}=' || :OLD.AJGDES || ' -> ' || :NEW.AJGDES || ', ' || '{col}=' || :OLD.HASHVALUE || ' -> ' || :NEW.HASHVALUE || ', ' || '{col}=' || :OLD.FREQUENCY || ' -> ' || :NEW.FREQUENCY;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_AJG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_ajg_audit_delete
    AFTER DELETE ON MVIEW$_ADV_AJG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.AJGID# || ', Datos=' || '{col}=' || :OLD.RUNID# || ', ' || '{col}=' || :OLD.AJGDESLEN || ', ' || '{col}=' || :OLD.AJGDES || ', ' || '{col}=' || :OLD.HASHVALUE || ', ' || '{col}=' || :OLD.FREQUENCY;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_AJG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_fjg_audit_insert
    AFTER INSERT ON MVIEW$_ADV_FJG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.FJGID# || ', Datos=' || '{col}=' || :NEW.AJGID# || ', ' || '{col}=' || :NEW.FJGDESLEN || ', ' || '{col}=' || :NEW.FJGDES || ', ' || '{col}=' || :NEW.HASHVALUE || ', ' || '{col}=' || :NEW.FREQUENCY;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_FJG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_fjg_audit_update
    AFTER UPDATE ON MVIEW$_ADV_FJG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.FJGID# || ' -> ' || :NEW.FJGID# || ', Datos=' || '{col}=' || :OLD.AJGID# || ' -> ' || :NEW.AJGID# || ', ' || '{col}=' || :OLD.FJGDESLEN || ' -> ' || :NEW.FJGDESLEN || ', ' || '{col}=' || :OLD.FJGDES || ' -> ' || :NEW.FJGDES || ', ' || '{col}=' || :OLD.HASHVALUE || ' -> ' || :NEW.HASHVALUE || ', ' || '{col}=' || :OLD.FREQUENCY || ' -> ' || :NEW.FREQUENCY;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_FJG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_fjg_audit_delete
    AFTER DELETE ON MVIEW$_ADV_FJG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.FJGID# || ', Datos=' || '{col}=' || :OLD.AJGID# || ', ' || '{col}=' || :OLD.FJGDESLEN || ', ' || '{col}=' || :OLD.FJGDES || ', ' || '{col}=' || :OLD.HASHVALUE || ', ' || '{col}=' || :OLD.FREQUENCY;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_FJG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_gc_audit_insert
    AFTER INSERT ON MVIEW$_ADV_GC
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.GCID# || ', Datos=' || '{col}=' || :NEW.FJGID# || ', ' || '{col}=' || :NEW.GCDESLEN || ', ' || '{col}=' || :NEW.GCDES || ', ' || '{col}=' || :NEW.HASHVALUE || ', ' || '{col}=' || :NEW.FREQUENCY;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_GC',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_gc_audit_update
    AFTER UPDATE ON MVIEW$_ADV_GC
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.GCID# || ' -> ' || :NEW.GCID# || ', Datos=' || '{col}=' || :OLD.FJGID# || ' -> ' || :NEW.FJGID# || ', ' || '{col}=' || :OLD.GCDESLEN || ' -> ' || :NEW.GCDESLEN || ', ' || '{col}=' || :OLD.GCDES || ' -> ' || :NEW.GCDES || ', ' || '{col}=' || :OLD.HASHVALUE || ' -> ' || :NEW.HASHVALUE || ', ' || '{col}=' || :OLD.FREQUENCY || ' -> ' || :NEW.FREQUENCY;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_GC',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_gc_audit_delete
    AFTER DELETE ON MVIEW$_ADV_GC
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.GCID# || ', Datos=' || '{col}=' || :OLD.FJGID# || ', ' || '{col}=' || :OLD.GCDESLEN || ', ' || '{col}=' || :OLD.GCDES || ', ' || '{col}=' || :OLD.HASHVALUE || ', ' || '{col}=' || :OLD.FREQUENCY;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_GC',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_clique_audit_insert
    AFTER INSERT ON MVIEW$_ADV_CLIQUE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.CLIQUEID# || ', Datos=' || '{col}=' || :NEW.RUNID# || ', ' || '{col}=' || :NEW.CLIQUEDESLEN || ', ' || '{col}=' || :NEW.CLIQUEDES || ', ' || '{col}=' || :NEW.HASHVALUE || ', ' || '{col}=' || :NEW.FREQUENCY || ', ' || '{col}=' || :NEW.BYTECOST || ', ' || '{col}=' || :NEW.ROWSIZE || ', ' || '{col}=' || :NEW.NUMROWS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_CLIQUE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_clique_audit_update
    AFTER UPDATE ON MVIEW$_ADV_CLIQUE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.CLIQUEID# || ' -> ' || :NEW.CLIQUEID# || ', Datos=' || '{col}=' || :OLD.RUNID# || ' -> ' || :NEW.RUNID# || ', ' || '{col}=' || :OLD.CLIQUEDESLEN || ' -> ' || :NEW.CLIQUEDESLEN || ', ' || '{col}=' || :OLD.CLIQUEDES || ' -> ' || :NEW.CLIQUEDES || ', ' || '{col}=' || :OLD.HASHVALUE || ' -> ' || :NEW.HASHVALUE || ', ' || '{col}=' || :OLD.FREQUENCY || ' -> ' || :NEW.FREQUENCY || ', ' || '{col}=' || :OLD.BYTECOST || ' -> ' || :NEW.BYTECOST || ', ' || '{col}=' || :OLD.ROWSIZE || ' -> ' || :NEW.ROWSIZE || ', ' || '{col}=' || :OLD.NUMROWS || ' -> ' || :NEW.NUMROWS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_CLIQUE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_clique_audit_delete
    AFTER DELETE ON MVIEW$_ADV_CLIQUE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.CLIQUEID# || ', Datos=' || '{col}=' || :OLD.RUNID# || ', ' || '{col}=' || :OLD.CLIQUEDESLEN || ', ' || '{col}=' || :OLD.CLIQUEDES || ', ' || '{col}=' || :OLD.HASHVALUE || ', ' || '{col}=' || :OLD.FREQUENCY || ', ' || '{col}=' || :OLD.BYTECOST || ', ' || '{col}=' || :OLD.ROWSIZE || ', ' || '{col}=' || :OLD.NUMROWS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_CLIQUE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_eligible_audit_insert
    AFTER INSERT ON MVIEW$_ADV_ELIGIBLE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.SUMOBJN# || ', Datos=' || '{col}=' || :NEW.RUNID# || ', ' || '{col}=' || :NEW.BYTECOST || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.FREQUENCY;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_ELIGIBLE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_eligible_audit_update
    AFTER UPDATE ON MVIEW$_ADV_ELIGIBLE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.SUMOBJN# || ' -> ' || :NEW.SUMOBJN# || ', Datos=' || '{col}=' || :OLD.RUNID# || ' -> ' || :NEW.RUNID# || ', ' || '{col}=' || :OLD.BYTECOST || ' -> ' || :NEW.BYTECOST || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.FREQUENCY || ' -> ' || :NEW.FREQUENCY;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_ELIGIBLE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_eligible_audit_delete
    AFTER DELETE ON MVIEW$_ADV_ELIGIBLE
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.SUMOBJN# || ', Datos=' || '{col}=' || :OLD.RUNID# || ', ' || '{col}=' || :OLD.BYTECOST || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.FREQUENCY;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_ELIGIBLE',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_output_audit_insert
    AFTER INSERT ON MVIEW$_ADV_OUTPUT
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.RUNID# || ', Datos=' || '{col}=' || :NEW.OUTPUT_TYPE || ', ' || '{col}=' || :NEW.RANK# || ', ' || '{col}=' || :NEW.ACTION_TYPE || ', ' || '{col}=' || :NEW.SUMMARY_OWNER || ', ' || '{col}=' || :NEW.SUMMARY_NAME || ', ' || '{col}=' || :NEW.GROUP_BY_COLUMNS || ', ' || '{col}=' || :NEW.WHERE_CLAUSE || ', ' || '{col}=' || :NEW.FROM_CLAUSE || ', ' || '{col}=' || :NEW.MEASURES_LIST || ', ' || '{col}=' || :NEW.FACT_TABLES || ', ' || '{col}=' || :NEW.GROUPING_LEVELS || ', ' || '{col}=' || :NEW.QUERYLEN || ', ' || '{col}=' || :NEW.QUERY_TEXT || ', ' || '{col}=' || :NEW.STORAGE_IN_BYTES || ', ' || '{col}=' || :NEW.PCT_PERFORMANCE_GAIN || ', ' || '{col}=' || :NEW.FREQUENCY || ', ' || '{col}=' || :NEW.CUMULATIVE_BENEFIT || ', ' || '{col}=' || :NEW.BENEFIT_TO_COST_RATIO || ', ' || '{col}=' || :NEW.VALIDATED;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_OUTPUT',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_output_audit_update
    AFTER UPDATE ON MVIEW$_ADV_OUTPUT
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.RUNID# || ' -> ' || :NEW.RUNID# || ', Datos=' || '{col}=' || :OLD.OUTPUT_TYPE || ' -> ' || :NEW.OUTPUT_TYPE || ', ' || '{col}=' || :OLD.RANK# || ' -> ' || :NEW.RANK# || ', ' || '{col}=' || :OLD.ACTION_TYPE || ' -> ' || :NEW.ACTION_TYPE || ', ' || '{col}=' || :OLD.SUMMARY_OWNER || ' -> ' || :NEW.SUMMARY_OWNER || ', ' || '{col}=' || :OLD.SUMMARY_NAME || ' -> ' || :NEW.SUMMARY_NAME || ', ' || '{col}=' || :OLD.GROUP_BY_COLUMNS || ' -> ' || :NEW.GROUP_BY_COLUMNS || ', ' || '{col}=' || :OLD.WHERE_CLAUSE || ' -> ' || :NEW.WHERE_CLAUSE || ', ' || '{col}=' || :OLD.FROM_CLAUSE || ' -> ' || :NEW.FROM_CLAUSE || ', ' || '{col}=' || :OLD.MEASURES_LIST || ' -> ' || :NEW.MEASURES_LIST || ', ' || '{col}=' || :OLD.FACT_TABLES || ' -> ' || :NEW.FACT_TABLES || ', ' || '{col}=' || :OLD.GROUPING_LEVELS || ' -> ' || :NEW.GROUPING_LEVELS || ', ' || '{col}=' || :OLD.QUERYLEN || ' -> ' || :NEW.QUERYLEN || ', ' || '{col}=' || :OLD.QUERY_TEXT || ' -> ' || :NEW.QUERY_TEXT || ', ' || '{col}=' || :OLD.STORAGE_IN_BYTES || ' -> ' || :NEW.STORAGE_IN_BYTES || ', ' || '{col}=' || :OLD.PCT_PERFORMANCE_GAIN || ' -> ' || :NEW.PCT_PERFORMANCE_GAIN || ', ' || '{col}=' || :OLD.FREQUENCY || ' -> ' || :NEW.FREQUENCY || ', ' || '{col}=' || :OLD.CUMULATIVE_BENEFIT || ' -> ' || :NEW.CUMULATIVE_BENEFIT || ', ' || '{col}=' || :OLD.BENEFIT_TO_COST_RATIO || ' -> ' || :NEW.BENEFIT_TO_COST_RATIO || ', ' || '{col}=' || :OLD.VALIDATED || ' -> ' || :NEW.VALIDATED;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_OUTPUT',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_output_audit_delete
    AFTER DELETE ON MVIEW$_ADV_OUTPUT
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.RUNID# || ', Datos=' || '{col}=' || :OLD.OUTPUT_TYPE || ', ' || '{col}=' || :OLD.RANK# || ', ' || '{col}=' || :OLD.ACTION_TYPE || ', ' || '{col}=' || :OLD.SUMMARY_OWNER || ', ' || '{col}=' || :OLD.SUMMARY_NAME || ', ' || '{col}=' || :OLD.GROUP_BY_COLUMNS || ', ' || '{col}=' || :OLD.WHERE_CLAUSE || ', ' || '{col}=' || :OLD.FROM_CLAUSE || ', ' || '{col}=' || :OLD.MEASURES_LIST || ', ' || '{col}=' || :OLD.FACT_TABLES || ', ' || '{col}=' || :OLD.GROUPING_LEVELS || ', ' || '{col}=' || :OLD.QUERYLEN || ', ' || '{col}=' || :OLD.QUERY_TEXT || ', ' || '{col}=' || :OLD.STORAGE_IN_BYTES || ', ' || '{col}=' || :OLD.PCT_PERFORMANCE_GAIN || ', ' || '{col}=' || :OLD.FREQUENCY || ', ' || '{col}=' || :OLD.CUMULATIVE_BENEFIT || ', ' || '{col}=' || :OLD.BENEFIT_TO_COST_RATIO || ', ' || '{col}=' || :OLD.VALIDATED;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_OUTPUT',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_info_audit_insert
    AFTER INSERT ON MVIEW$_ADV_INFO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.RUNID# || ', Datos=' || '{col}=' || :NEW.SEQ# || ', ' || '{col}=' || :NEW.TYPE || ', ' || '{col}=' || :NEW.INFOLEN || ', ' || '{col}=' || :NEW.INFO || ', ' || '{col}=' || :NEW.STATUS || ', ' || '{col}=' || :NEW.FLAG;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_INFO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_info_audit_update
    AFTER UPDATE ON MVIEW$_ADV_INFO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.RUNID# || ' -> ' || :NEW.RUNID# || ', Datos=' || '{col}=' || :OLD.SEQ# || ' -> ' || :NEW.SEQ# || ', ' || '{col}=' || :OLD.TYPE || ' -> ' || :NEW.TYPE || ', ' || '{col}=' || :OLD.INFOLEN || ' -> ' || :NEW.INFOLEN || ', ' || '{col}=' || :OLD.INFO || ' -> ' || :NEW.INFO || ', ' || '{col}=' || :OLD.STATUS || ' -> ' || :NEW.STATUS || ', ' || '{col}=' || :OLD.FLAG || ' -> ' || :NEW.FLAG;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_INFO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_info_audit_delete
    AFTER DELETE ON MVIEW$_ADV_INFO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.RUNID# || ', Datos=' || '{col}=' || :OLD.SEQ# || ', ' || '{col}=' || :OLD.TYPE || ', ' || '{col}=' || :OLD.INFOLEN || ', ' || '{col}=' || :OLD.INFO || ', ' || '{col}=' || :OLD.STATUS || ', ' || '{col}=' || :OLD.FLAG;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_INFO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_journal_audit_insert
    AFTER INSERT ON MVIEW$_ADV_JOURNAL
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.RUNID# || ', Datos=' || '{col}=' || :NEW.SEQ# || ', ' || '{col}=' || :NEW.TIMESTAMP || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.NUM || ', ' || '{col}=' || :NEW.TEXT || ', ' || '{col}=' || :NEW.TEXTLEN;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_JOURNAL',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_journal_audit_update
    AFTER UPDATE ON MVIEW$_ADV_JOURNAL
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.RUNID# || ' -> ' || :NEW.RUNID# || ', Datos=' || '{col}=' || :OLD.SEQ# || ' -> ' || :NEW.SEQ# || ', ' || '{col}=' || :OLD.TIMESTAMP || ' -> ' || :NEW.TIMESTAMP || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.NUM || ' -> ' || :NEW.NUM || ', ' || '{col}=' || :OLD.TEXT || ' -> ' || :NEW.TEXT || ', ' || '{col}=' || :OLD.TEXTLEN || ' -> ' || :NEW.TEXTLEN;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_JOURNAL',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER mview$_adv_journal_audit_delete
    AFTER DELETE ON MVIEW$_ADV_JOURNAL
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.RUNID# || ', Datos=' || '{col}=' || :OLD.SEQ# || ', ' || '{col}=' || :OLD.TIMESTAMP || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.NUM || ', ' || '{col}=' || :OLD.TEXT || ', ' || '{col}=' || :OLD.TEXTLEN;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'MVIEW$_ADV_JOURNAL',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER aq$_schedules_audit_insert
    AFTER INSERT ON AQ$_SCHEDULES
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.OID || ', Datos=' || '{col}=' || :NEW.DESTINATION || ', ' || '{col}=' || :NEW.START_TIME || ', ' || '{col}=' || :NEW.DURATION || ', ' || '{col}=' || :NEW.NEXT_TIME || ', ' || '{col}=' || :NEW.LATENCY || ', ' || '{col}=' || :NEW.LAST_TIME || ', ' || '{col}=' || :NEW.JOBNO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'AQ$_SCHEDULES',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER aq$_schedules_audit_update
    AFTER UPDATE ON AQ$_SCHEDULES
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.OID || ' -> ' || :NEW.OID || ', Datos=' || '{col}=' || :OLD.DESTINATION || ' -> ' || :NEW.DESTINATION || ', ' || '{col}=' || :OLD.START_TIME || ' -> ' || :NEW.START_TIME || ', ' || '{col}=' || :OLD.DURATION || ' -> ' || :NEW.DURATION || ', ' || '{col}=' || :OLD.NEXT_TIME || ' -> ' || :NEW.NEXT_TIME || ', ' || '{col}=' || :OLD.LATENCY || ' -> ' || :NEW.LATENCY || ', ' || '{col}=' || :OLD.LAST_TIME || ' -> ' || :NEW.LAST_TIME || ', ' || '{col}=' || :OLD.JOBNO || ' -> ' || :NEW.JOBNO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'AQ$_SCHEDULES',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER aq$_schedules_audit_delete
    AFTER DELETE ON AQ$_SCHEDULES
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.OID || ', Datos=' || '{col}=' || :OLD.DESTINATION || ', ' || '{col}=' || :OLD.START_TIME || ', ' || '{col}=' || :OLD.DURATION || ', ' || '{col}=' || :OLD.NEXT_TIME || ', ' || '{col}=' || :OLD.LATENCY || ', ' || '{col}=' || :OLD.LAST_TIME || ', ' || '{col}=' || :OLD.JOBNO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'AQ$_SCHEDULES',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrt_mddl$_audit_insert
    AFTER INSERT ON LOGMNRT_MDDL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.SOURCE_OBJ# || ', Datos=' || '{col}=' || :NEW.SOURCE_ROWID || ', ' || '{col}=' || :NEW.DEST_ROWID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRT_MDDL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrt_mddl$_audit_update
    AFTER UPDATE ON LOGMNRT_MDDL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.SOURCE_OBJ# || ' -> ' || :NEW.SOURCE_OBJ# || ', Datos=' || '{col}=' || :OLD.SOURCE_ROWID || ' -> ' || :NEW.SOURCE_ROWID || ', ' || '{col}=' || :OLD.DEST_ROWID || ' -> ' || :NEW.DEST_ROWID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRT_MDDL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrt_mddl$_audit_delete
    AFTER DELETE ON LOGMNRT_MDDL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.SOURCE_OBJ# || ', Datos=' || '{col}=' || :OLD.SOURCE_ROWID || ', ' || '{col}=' || :OLD.DEST_ROWID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRT_MDDL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_dictstate$_audit_insert
    AFTER INSERT ON LOGMNR_DICTSTATE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.START_SCNBAS || ', ' || '{col}=' || :NEW.START_SCNWRP || ', ' || '{col}=' || :NEW.END_SCNBAS || ', ' || '{col}=' || :NEW.END_SCNWRP || ', ' || '{col}=' || :NEW.REDO_THREAD || ', ' || '{col}=' || :NEW.RBASQN || ', ' || '{col}=' || :NEW.RBABLK || ', ' || '{col}=' || :NEW.RBABYTE || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_DICTSTATE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_dictstate$_audit_update
    AFTER UPDATE ON LOGMNR_DICTSTATE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.START_SCNBAS || ' -> ' || :NEW.START_SCNBAS || ', ' || '{col}=' || :OLD.START_SCNWRP || ' -> ' || :NEW.START_SCNWRP || ', ' || '{col}=' || :OLD.END_SCNBAS || ' -> ' || :NEW.END_SCNBAS || ', ' || '{col}=' || :OLD.END_SCNWRP || ' -> ' || :NEW.END_SCNWRP || ', ' || '{col}=' || :OLD.REDO_THREAD || ' -> ' || :NEW.REDO_THREAD || ', ' || '{col}=' || :OLD.RBASQN || ' -> ' || :NEW.RBASQN || ', ' || '{col}=' || :OLD.RBABLK || ' -> ' || :NEW.RBABLK || ', ' || '{col}=' || :OLD.RBABYTE || ' -> ' || :NEW.RBABYTE || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_DICTSTATE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_dictstate$_audit_delete
    AFTER DELETE ON LOGMNR_DICTSTATE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.START_SCNBAS || ', ' || '{col}=' || :OLD.START_SCNWRP || ', ' || '{col}=' || :OLD.END_SCNBAS || ', ' || '{col}=' || :OLD.END_SCNWRP || ', ' || '{col}=' || :OLD.REDO_THREAD || ', ' || '{col}=' || :OLD.RBASQN || ', ' || '{col}=' || :OLD.RBABLK || ', ' || '{col}=' || :OLD.RBABYTE || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_DICTSTATE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_gtlo_audit_insert
    AFTER INSERT ON LOGMNRC_GTLO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.KEYOBJ# || ', ' || '{col}=' || :NEW.LVLCNT || ', ' || '{col}=' || :NEW.BASEOBJ# || ', ' || '{col}=' || :NEW.BASEOBJV# || ', ' || '{col}=' || :NEW.LVL1OBJ# || ', ' || '{col}=' || :NEW.LVL2OBJ# || ', ' || '{col}=' || :NEW.LVL0TYPE# || ', ' || '{col}=' || :NEW.LVL1TYPE# || ', ' || '{col}=' || :NEW.LVL2TYPE# || ', ' || '{col}=' || :NEW.OWNER# || ', ' || '{col}=' || :NEW.OWNERNAME || ', ' || '{col}=' || :NEW.LVL0NAME || ', ' || '{col}=' || :NEW.LVL1NAME || ', ' || '{col}=' || :NEW.LVL2NAME || ', ' || '{col}=' || :NEW.INTCOLS || ', ' || '{col}=' || :NEW.COLS || ', ' || '{col}=' || :NEW.KERNELCOLS || ', ' || '{col}=' || :NEW.TAB_FLAGS || ', ' || '{col}=' || :NEW.TRIGFLAG || ', ' || '{col}=' || :NEW.ASSOC# || ', ' || '{col}=' || :NEW.OBJ_FLAGS || ', ' || '{col}=' || :NEW.TS# || ', ' || '{col}=' || :NEW.TSNAME || ', ' || '{col}=' || :NEW.PROPERTY || ', ' || '{col}=' || :NEW.START_SCN || ', ' || '{col}=' || :NEW.DROP_SCN || ', ' || '{col}=' || :NEW.XIDUSN || ', ' || '{col}=' || :NEW.XIDSLT || ', ' || '{col}=' || :NEW.XIDSQN || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.LOGMNR_SPARE1 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE2 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE3 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE4 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE5 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE6 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE7 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE8 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE9 || ', ' || '{col}=' || :NEW.PARTTYPE || ', ' || '{col}=' || :NEW.SUBPARTTYPE || ', ' || '{col}=' || :NEW.UNSUPPORTEDCOLS || ', ' || '{col}=' || :NEW.COMPLEXTYPECOLS || ', ' || '{col}=' || :NEW.NTPARENTOBJNUM || ', ' || '{col}=' || :NEW.NTPARENTOBJVERSION || ', ' || '{col}=' || :NEW.NTPARENTINTCOLNUM || ', ' || '{col}=' || :NEW.LOGMNRTLOFLAGS || ', ' || '{col}=' || :NEW.LOGMNRMCV || ', ' || '{col}=' || :NEW.ACDRFLAGS || ', ' || '{col}=' || :NEW.ACDRTSOBJ# || ', ' || '{col}=' || :NEW.ACDRROWTSINTCOL#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_GTLO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_gtlo_audit_update
    AFTER UPDATE ON LOGMNRC_GTLO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.KEYOBJ# || ' -> ' || :NEW.KEYOBJ# || ', ' || '{col}=' || :OLD.LVLCNT || ' -> ' || :NEW.LVLCNT || ', ' || '{col}=' || :OLD.BASEOBJ# || ' -> ' || :NEW.BASEOBJ# || ', ' || '{col}=' || :OLD.BASEOBJV# || ' -> ' || :NEW.BASEOBJV# || ', ' || '{col}=' || :OLD.LVL1OBJ# || ' -> ' || :NEW.LVL1OBJ# || ', ' || '{col}=' || :OLD.LVL2OBJ# || ' -> ' || :NEW.LVL2OBJ# || ', ' || '{col}=' || :OLD.LVL0TYPE# || ' -> ' || :NEW.LVL0TYPE# || ', ' || '{col}=' || :OLD.LVL1TYPE# || ' -> ' || :NEW.LVL1TYPE# || ', ' || '{col}=' || :OLD.LVL2TYPE# || ' -> ' || :NEW.LVL2TYPE# || ', ' || '{col}=' || :OLD.OWNER# || ' -> ' || :NEW.OWNER# || ', ' || '{col}=' || :OLD.OWNERNAME || ' -> ' || :NEW.OWNERNAME || ', ' || '{col}=' || :OLD.LVL0NAME || ' -> ' || :NEW.LVL0NAME || ', ' || '{col}=' || :OLD.LVL1NAME || ' -> ' || :NEW.LVL1NAME || ', ' || '{col}=' || :OLD.LVL2NAME || ' -> ' || :NEW.LVL2NAME || ', ' || '{col}=' || :OLD.INTCOLS || ' -> ' || :NEW.INTCOLS || ', ' || '{col}=' || :OLD.COLS || ' -> ' || :NEW.COLS || ', ' || '{col}=' || :OLD.KERNELCOLS || ' -> ' || :NEW.KERNELCOLS || ', ' || '{col}=' || :OLD.TAB_FLAGS || ' -> ' || :NEW.TAB_FLAGS || ', ' || '{col}=' || :OLD.TRIGFLAG || ' -> ' || :NEW.TRIGFLAG || ', ' || '{col}=' || :OLD.ASSOC# || ' -> ' || :NEW.ASSOC# || ', ' || '{col}=' || :OLD.OBJ_FLAGS || ' -> ' || :NEW.OBJ_FLAGS || ', ' || '{col}=' || :OLD.TS# || ' -> ' || :NEW.TS# || ', ' || '{col}=' || :OLD.TSNAME || ' -> ' || :NEW.TSNAME || ', ' || '{col}=' || :OLD.PROPERTY || ' -> ' || :NEW.PROPERTY || ', ' || '{col}=' || :OLD.START_SCN || ' -> ' || :NEW.START_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ' -> ' || :NEW.DROP_SCN || ', ' || '{col}=' || :OLD.XIDUSN || ' -> ' || :NEW.XIDUSN || ', ' || '{col}=' || :OLD.XIDSLT || ' -> ' || :NEW.XIDSLT || ', ' || '{col}=' || :OLD.XIDSQN || ' -> ' || :NEW.XIDSQN || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.LOGMNR_SPARE1 || ' -> ' || :NEW.LOGMNR_SPARE1 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE2 || ' -> ' || :NEW.LOGMNR_SPARE2 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE3 || ' -> ' || :NEW.LOGMNR_SPARE3 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE4 || ' -> ' || :NEW.LOGMNR_SPARE4 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE5 || ' -> ' || :NEW.LOGMNR_SPARE5 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE6 || ' -> ' || :NEW.LOGMNR_SPARE6 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE7 || ' -> ' || :NEW.LOGMNR_SPARE7 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE8 || ' -> ' || :NEW.LOGMNR_SPARE8 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE9 || ' -> ' || :NEW.LOGMNR_SPARE9 || ', ' || '{col}=' || :OLD.PARTTYPE || ' -> ' || :NEW.PARTTYPE || ', ' || '{col}=' || :OLD.SUBPARTTYPE || ' -> ' || :NEW.SUBPARTTYPE || ', ' || '{col}=' || :OLD.UNSUPPORTEDCOLS || ' -> ' || :NEW.UNSUPPORTEDCOLS || ', ' || '{col}=' || :OLD.COMPLEXTYPECOLS || ' -> ' || :NEW.COMPLEXTYPECOLS || ', ' || '{col}=' || :OLD.NTPARENTOBJNUM || ' -> ' || :NEW.NTPARENTOBJNUM || ', ' || '{col}=' || :OLD.NTPARENTOBJVERSION || ' -> ' || :NEW.NTPARENTOBJVERSION || ', ' || '{col}=' || :OLD.NTPARENTINTCOLNUM || ' -> ' || :NEW.NTPARENTINTCOLNUM || ', ' || '{col}=' || :OLD.LOGMNRTLOFLAGS || ' -> ' || :NEW.LOGMNRTLOFLAGS || ', ' || '{col}=' || :OLD.LOGMNRMCV || ' -> ' || :NEW.LOGMNRMCV || ', ' || '{col}=' || :OLD.ACDRFLAGS || ' -> ' || :NEW.ACDRFLAGS || ', ' || '{col}=' || :OLD.ACDRTSOBJ# || ' -> ' || :NEW.ACDRTSOBJ# || ', ' || '{col}=' || :OLD.ACDRROWTSINTCOL# || ' -> ' || :NEW.ACDRROWTSINTCOL#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_GTLO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_gtlo_audit_delete
    AFTER DELETE ON LOGMNRC_GTLO
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.KEYOBJ# || ', ' || '{col}=' || :OLD.LVLCNT || ', ' || '{col}=' || :OLD.BASEOBJ# || ', ' || '{col}=' || :OLD.BASEOBJV# || ', ' || '{col}=' || :OLD.LVL1OBJ# || ', ' || '{col}=' || :OLD.LVL2OBJ# || ', ' || '{col}=' || :OLD.LVL0TYPE# || ', ' || '{col}=' || :OLD.LVL1TYPE# || ', ' || '{col}=' || :OLD.LVL2TYPE# || ', ' || '{col}=' || :OLD.OWNER# || ', ' || '{col}=' || :OLD.OWNERNAME || ', ' || '{col}=' || :OLD.LVL0NAME || ', ' || '{col}=' || :OLD.LVL1NAME || ', ' || '{col}=' || :OLD.LVL2NAME || ', ' || '{col}=' || :OLD.INTCOLS || ', ' || '{col}=' || :OLD.COLS || ', ' || '{col}=' || :OLD.KERNELCOLS || ', ' || '{col}=' || :OLD.TAB_FLAGS || ', ' || '{col}=' || :OLD.TRIGFLAG || ', ' || '{col}=' || :OLD.ASSOC# || ', ' || '{col}=' || :OLD.OBJ_FLAGS || ', ' || '{col}=' || :OLD.TS# || ', ' || '{col}=' || :OLD.TSNAME || ', ' || '{col}=' || :OLD.PROPERTY || ', ' || '{col}=' || :OLD.START_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ', ' || '{col}=' || :OLD.XIDUSN || ', ' || '{col}=' || :OLD.XIDSLT || ', ' || '{col}=' || :OLD.XIDSQN || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.LOGMNR_SPARE1 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE2 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE3 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE4 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE5 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE6 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE7 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE8 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE9 || ', ' || '{col}=' || :OLD.PARTTYPE || ', ' || '{col}=' || :OLD.SUBPARTTYPE || ', ' || '{col}=' || :OLD.UNSUPPORTEDCOLS || ', ' || '{col}=' || :OLD.COMPLEXTYPECOLS || ', ' || '{col}=' || :OLD.NTPARENTOBJNUM || ', ' || '{col}=' || :OLD.NTPARENTOBJVERSION || ', ' || '{col}=' || :OLD.NTPARENTINTCOLNUM || ', ' || '{col}=' || :OLD.LOGMNRTLOFLAGS || ', ' || '{col}=' || :OLD.LOGMNRMCV || ', ' || '{col}=' || :OLD.ACDRFLAGS || ', ' || '{col}=' || :OLD.ACDRTSOBJ# || ', ' || '{col}=' || :OLD.ACDRROWTSINTCOL#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_GTLO',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_gtcs_audit_insert
    AFTER INSERT ON LOGMNRC_GTCS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.ACDRRESCOL# || ', ' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.OBJV# || ', ' || '{col}=' || :NEW.SEGCOL# || ', ' || '{col}=' || :NEW.INTCOL# || ', ' || '{col}=' || :NEW.COLNAME || ', ' || '{col}=' || :NEW.TYPE# || ', ' || '{col}=' || :NEW.LENGTH || ', ' || '{col}=' || :NEW.PRECISION || ', ' || '{col}=' || :NEW.SCALE || ', ' || '{col}=' || :NEW.INTERVAL_LEADING_PRECISION || ', ' || '{col}=' || :NEW.INTERVAL_TRAILING_PRECISION || ', ' || '{col}=' || :NEW.PROPERTY || ', ' || '{col}=' || :NEW.TOID || ', ' || '{col}=' || :NEW.CHARSETID || ', ' || '{col}=' || :NEW.CHARSETFORM || ', ' || '{col}=' || :NEW.TYPENAME || ', ' || '{col}=' || :NEW.FQCOLNAME || ', ' || '{col}=' || :NEW.NUMINTCOLS || ', ' || '{col}=' || :NEW.NUMATTRS || ', ' || '{col}=' || :NEW.ADTORDER || ', ' || '{col}=' || :NEW.LOGMNR_SPARE1 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE2 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE3 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE4 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE5 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE6 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE7 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE8 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE9 || ', ' || '{col}=' || :NEW.COL# || ', ' || '{col}=' || :NEW.XTYPESCHEMANAME || ', ' || '{col}=' || :NEW.XTYPENAME || ', ' || '{col}=' || :NEW.XFQCOLNAME || ', ' || '{col}=' || :NEW.XTOPINTCOL || ', ' || '{col}=' || :NEW.XREFFEDTABLEOBJN || ', ' || '{col}=' || :NEW.XREFFEDTABLEOBJV || ', ' || '{col}=' || :NEW.XCOLTYPEFLAGS || ', ' || '{col}=' || :NEW.XOPQTYPETYPE || ', ' || '{col}=' || :NEW.XOPQTYPEFLAGS || ', ' || '{col}=' || :NEW.XOPQLOBINTCOL || ', ' || '{col}=' || :NEW.XOPQOBJINTCOL || ', ' || '{col}=' || :NEW.XXMLINTCOL || ', ' || '{col}=' || :NEW.EAOWNER# || ', ' || '{col}=' || :NEW.EAMKEYID || ', ' || '{col}=' || :NEW.EAENCALG || ', ' || '{col}=' || :NEW.EAINTALG || ', ' || '{col}=' || :NEW.EACOLKLC || ', ' || '{col}=' || :NEW.EAKLCLEN || ', ' || '{col}=' || :NEW.EAFLAGS || ', ' || '{col}=' || :NEW.LOGMNRDERIVEDFLAGS || ', ' || '{col}=' || :NEW.COLLID || ', ' || '{col}=' || :NEW.COLLINTCOL#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_GTCS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_gtcs_audit_update
    AFTER UPDATE ON LOGMNRC_GTCS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.ACDRRESCOL# || ' -> ' || :NEW.ACDRRESCOL# || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.OBJV# || ' -> ' || :NEW.OBJV# || ', ' || '{col}=' || :OLD.SEGCOL# || ' -> ' || :NEW.SEGCOL# || ', ' || '{col}=' || :OLD.INTCOL# || ' -> ' || :NEW.INTCOL# || ', ' || '{col}=' || :OLD.COLNAME || ' -> ' || :NEW.COLNAME || ', ' || '{col}=' || :OLD.TYPE# || ' -> ' || :NEW.TYPE# || ', ' || '{col}=' || :OLD.LENGTH || ' -> ' || :NEW.LENGTH || ', ' || '{col}=' || :OLD.PRECISION || ' -> ' || :NEW.PRECISION || ', ' || '{col}=' || :OLD.SCALE || ' -> ' || :NEW.SCALE || ', ' || '{col}=' || :OLD.INTERVAL_LEADING_PRECISION || ' -> ' || :NEW.INTERVAL_LEADING_PRECISION || ', ' || '{col}=' || :OLD.INTERVAL_TRAILING_PRECISION || ' -> ' || :NEW.INTERVAL_TRAILING_PRECISION || ', ' || '{col}=' || :OLD.PROPERTY || ' -> ' || :NEW.PROPERTY || ', ' || '{col}=' || :OLD.TOID || ' -> ' || :NEW.TOID || ', ' || '{col}=' || :OLD.CHARSETID || ' -> ' || :NEW.CHARSETID || ', ' || '{col}=' || :OLD.CHARSETFORM || ' -> ' || :NEW.CHARSETFORM || ', ' || '{col}=' || :OLD.TYPENAME || ' -> ' || :NEW.TYPENAME || ', ' || '{col}=' || :OLD.FQCOLNAME || ' -> ' || :NEW.FQCOLNAME || ', ' || '{col}=' || :OLD.NUMINTCOLS || ' -> ' || :NEW.NUMINTCOLS || ', ' || '{col}=' || :OLD.NUMATTRS || ' -> ' || :NEW.NUMATTRS || ', ' || '{col}=' || :OLD.ADTORDER || ' -> ' || :NEW.ADTORDER || ', ' || '{col}=' || :OLD.LOGMNR_SPARE1 || ' -> ' || :NEW.LOGMNR_SPARE1 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE2 || ' -> ' || :NEW.LOGMNR_SPARE2 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE3 || ' -> ' || :NEW.LOGMNR_SPARE3 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE4 || ' -> ' || :NEW.LOGMNR_SPARE4 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE5 || ' -> ' || :NEW.LOGMNR_SPARE5 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE6 || ' -> ' || :NEW.LOGMNR_SPARE6 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE7 || ' -> ' || :NEW.LOGMNR_SPARE7 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE8 || ' -> ' || :NEW.LOGMNR_SPARE8 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE9 || ' -> ' || :NEW.LOGMNR_SPARE9 || ', ' || '{col}=' || :OLD.COL# || ' -> ' || :NEW.COL# || ', ' || '{col}=' || :OLD.XTYPESCHEMANAME || ' -> ' || :NEW.XTYPESCHEMANAME || ', ' || '{col}=' || :OLD.XTYPENAME || ' -> ' || :NEW.XTYPENAME || ', ' || '{col}=' || :OLD.XFQCOLNAME || ' -> ' || :NEW.XFQCOLNAME || ', ' || '{col}=' || :OLD.XTOPINTCOL || ' -> ' || :NEW.XTOPINTCOL || ', ' || '{col}=' || :OLD.XREFFEDTABLEOBJN || ' -> ' || :NEW.XREFFEDTABLEOBJN || ', ' || '{col}=' || :OLD.XREFFEDTABLEOBJV || ' -> ' || :NEW.XREFFEDTABLEOBJV || ', ' || '{col}=' || :OLD.XCOLTYPEFLAGS || ' -> ' || :NEW.XCOLTYPEFLAGS || ', ' || '{col}=' || :OLD.XOPQTYPETYPE || ' -> ' || :NEW.XOPQTYPETYPE || ', ' || '{col}=' || :OLD.XOPQTYPEFLAGS || ' -> ' || :NEW.XOPQTYPEFLAGS || ', ' || '{col}=' || :OLD.XOPQLOBINTCOL || ' -> ' || :NEW.XOPQLOBINTCOL || ', ' || '{col}=' || :OLD.XOPQOBJINTCOL || ' -> ' || :NEW.XOPQOBJINTCOL || ', ' || '{col}=' || :OLD.XXMLINTCOL || ' -> ' || :NEW.XXMLINTCOL || ', ' || '{col}=' || :OLD.EAOWNER# || ' -> ' || :NEW.EAOWNER# || ', ' || '{col}=' || :OLD.EAMKEYID || ' -> ' || :NEW.EAMKEYID || ', ' || '{col}=' || :OLD.EAENCALG || ' -> ' || :NEW.EAENCALG || ', ' || '{col}=' || :OLD.EAINTALG || ' -> ' || :NEW.EAINTALG || ', ' || '{col}=' || :OLD.EACOLKLC || ' -> ' || :NEW.EACOLKLC || ', ' || '{col}=' || :OLD.EAKLCLEN || ' -> ' || :NEW.EAKLCLEN || ', ' || '{col}=' || :OLD.EAFLAGS || ' -> ' || :NEW.EAFLAGS || ', ' || '{col}=' || :OLD.LOGMNRDERIVEDFLAGS || ' -> ' || :NEW.LOGMNRDERIVEDFLAGS || ', ' || '{col}=' || :OLD.COLLID || ' -> ' || :NEW.COLLID || ', ' || '{col}=' || :OLD.COLLINTCOL# || ' -> ' || :NEW.COLLINTCOL#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_GTCS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_gtcs_audit_delete
    AFTER DELETE ON LOGMNRC_GTCS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.ACDRRESCOL# || ', ' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.OBJV# || ', ' || '{col}=' || :OLD.SEGCOL# || ', ' || '{col}=' || :OLD.INTCOL# || ', ' || '{col}=' || :OLD.COLNAME || ', ' || '{col}=' || :OLD.TYPE# || ', ' || '{col}=' || :OLD.LENGTH || ', ' || '{col}=' || :OLD.PRECISION || ', ' || '{col}=' || :OLD.SCALE || ', ' || '{col}=' || :OLD.INTERVAL_LEADING_PRECISION || ', ' || '{col}=' || :OLD.INTERVAL_TRAILING_PRECISION || ', ' || '{col}=' || :OLD.PROPERTY || ', ' || '{col}=' || :OLD.TOID || ', ' || '{col}=' || :OLD.CHARSETID || ', ' || '{col}=' || :OLD.CHARSETFORM || ', ' || '{col}=' || :OLD.TYPENAME || ', ' || '{col}=' || :OLD.FQCOLNAME || ', ' || '{col}=' || :OLD.NUMINTCOLS || ', ' || '{col}=' || :OLD.NUMATTRS || ', ' || '{col}=' || :OLD.ADTORDER || ', ' || '{col}=' || :OLD.LOGMNR_SPARE1 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE2 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE3 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE4 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE5 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE6 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE7 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE8 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE9 || ', ' || '{col}=' || :OLD.COL# || ', ' || '{col}=' || :OLD.XTYPESCHEMANAME || ', ' || '{col}=' || :OLD.XTYPENAME || ', ' || '{col}=' || :OLD.XFQCOLNAME || ', ' || '{col}=' || :OLD.XTOPINTCOL || ', ' || '{col}=' || :OLD.XREFFEDTABLEOBJN || ', ' || '{col}=' || :OLD.XREFFEDTABLEOBJV || ', ' || '{col}=' || :OLD.XCOLTYPEFLAGS || ', ' || '{col}=' || :OLD.XOPQTYPETYPE || ', ' || '{col}=' || :OLD.XOPQTYPEFLAGS || ', ' || '{col}=' || :OLD.XOPQLOBINTCOL || ', ' || '{col}=' || :OLD.XOPQOBJINTCOL || ', ' || '{col}=' || :OLD.XXMLINTCOL || ', ' || '{col}=' || :OLD.EAOWNER# || ', ' || '{col}=' || :OLD.EAMKEYID || ', ' || '{col}=' || :OLD.EAENCALG || ', ' || '{col}=' || :OLD.EAINTALG || ', ' || '{col}=' || :OLD.EACOLKLC || ', ' || '{col}=' || :OLD.EAKLCLEN || ', ' || '{col}=' || :OLD.EAFLAGS || ', ' || '{col}=' || :OLD.LOGMNRDERIVEDFLAGS || ', ' || '{col}=' || :OLD.COLLID || ', ' || '{col}=' || :OLD.COLLINTCOL#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_GTCS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_seq_gg_audit_insert
    AFTER INSERT ON LOGMNRC_SEQ_GG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.COMMIT_SCN || ', ' || '{col}=' || :NEW.DROP_SCN || ', ' || '{col}=' || :NEW.SEQ_FLAGS || ', ' || '{col}=' || :NEW.OWNER# || ', ' || '{col}=' || :NEW.OWNERNAME || ', ' || '{col}=' || :NEW.OBJNAME || ', ' || '{col}=' || :NEW.SEQCACHE || ', ' || '{col}=' || :NEW.SEQINC || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3 || ', ' || '{col}=' || :NEW.SPARE4;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_SEQ_GG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_seq_gg_audit_update
    AFTER UPDATE ON LOGMNRC_SEQ_GG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.COMMIT_SCN || ' -> ' || :NEW.COMMIT_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ' -> ' || :NEW.DROP_SCN || ', ' || '{col}=' || :OLD.SEQ_FLAGS || ' -> ' || :NEW.SEQ_FLAGS || ', ' || '{col}=' || :OLD.OWNER# || ' -> ' || :NEW.OWNER# || ', ' || '{col}=' || :OLD.OWNERNAME || ' -> ' || :NEW.OWNERNAME || ', ' || '{col}=' || :OLD.OBJNAME || ' -> ' || :NEW.OBJNAME || ', ' || '{col}=' || :OLD.SEQCACHE || ' -> ' || :NEW.SEQCACHE || ', ' || '{col}=' || :OLD.SEQINC || ' -> ' || :NEW.SEQINC || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ' -> ' || :NEW.SPARE4;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_SEQ_GG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_seq_gg_audit_delete
    AFTER DELETE ON LOGMNRC_SEQ_GG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.COMMIT_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ', ' || '{col}=' || :OLD.SEQ_FLAGS || ', ' || '{col}=' || :OLD.OWNER# || ', ' || '{col}=' || :OLD.OWNERNAME || ', ' || '{col}=' || :OLD.OBJNAME || ', ' || '{col}=' || :OLD.SEQCACHE || ', ' || '{col}=' || :OLD.SEQINC || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_SEQ_GG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_con_gg_audit_insert
    AFTER INSERT ON LOGMNRC_CON_GG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.CON# || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.COMMIT_SCN || ', ' || '{col}=' || :NEW.DROP_SCN || ', ' || '{col}=' || :NEW.BASEOBJ# || ', ' || '{col}=' || :NEW.BASEOBJV# || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.INDEXOBJ# || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3 || ', ' || '{col}=' || :NEW.SPARE4 || ', ' || '{col}=' || :NEW.SPARE5 || ', ' || '{col}=' || :NEW.SPARE6;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_CON_GG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_con_gg_audit_update
    AFTER UPDATE ON LOGMNRC_CON_GG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.CON# || ' -> ' || :NEW.CON# || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.COMMIT_SCN || ' -> ' || :NEW.COMMIT_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ' -> ' || :NEW.DROP_SCN || ', ' || '{col}=' || :OLD.BASEOBJ# || ' -> ' || :NEW.BASEOBJ# || ', ' || '{col}=' || :OLD.BASEOBJV# || ' -> ' || :NEW.BASEOBJV# || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.INDEXOBJ# || ' -> ' || :NEW.INDEXOBJ# || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ' -> ' || :NEW.SPARE4 || ', ' || '{col}=' || :OLD.SPARE5 || ' -> ' || :NEW.SPARE5 || ', ' || '{col}=' || :OLD.SPARE6 || ' -> ' || :NEW.SPARE6;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_CON_GG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_con_gg_audit_delete
    AFTER DELETE ON LOGMNRC_CON_GG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.CON# || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.COMMIT_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ', ' || '{col}=' || :OLD.BASEOBJ# || ', ' || '{col}=' || :OLD.BASEOBJV# || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.INDEXOBJ# || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ', ' || '{col}=' || :OLD.SPARE5 || ', ' || '{col}=' || :OLD.SPARE6;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_CON_GG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_concol_gg_audit_insert
    AFTER INSERT ON LOGMNRC_CONCOL_GG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.CON# || ', ' || '{col}=' || :NEW.COMMIT_SCN || ', ' || '{col}=' || :NEW.INTCOL# || ', ' || '{col}=' || :NEW.POS# || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_CONCOL_GG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_concol_gg_audit_update
    AFTER UPDATE ON LOGMNRC_CONCOL_GG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.CON# || ' -> ' || :NEW.CON# || ', ' || '{col}=' || :OLD.COMMIT_SCN || ' -> ' || :NEW.COMMIT_SCN || ', ' || '{col}=' || :OLD.INTCOL# || ' -> ' || :NEW.INTCOL# || ', ' || '{col}=' || :OLD.POS# || ' -> ' || :NEW.POS# || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_CONCOL_GG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_concol_gg_audit_delete
    AFTER DELETE ON LOGMNRC_CONCOL_GG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.CON# || ', ' || '{col}=' || :OLD.COMMIT_SCN || ', ' || '{col}=' || :OLD.INTCOL# || ', ' || '{col}=' || :OLD.POS# || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_CONCOL_GG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_ind_gg_audit_insert
    AFTER INSERT ON LOGMNRC_IND_GG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.COMMIT_SCN || ', ' || '{col}=' || :NEW.DROP_SCN || ', ' || '{col}=' || :NEW.BASEOBJ# || ', ' || '{col}=' || :NEW.BASEOBJV# || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.OWNER# || ', ' || '{col}=' || :NEW.OWNERNAME || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3 || ', ' || '{col}=' || :NEW.SPARE4 || ', ' || '{col}=' || :NEW.SPARE5 || ', ' || '{col}=' || :NEW.SPARE6;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_IND_GG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_ind_gg_audit_update
    AFTER UPDATE ON LOGMNRC_IND_GG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.COMMIT_SCN || ' -> ' || :NEW.COMMIT_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ' -> ' || :NEW.DROP_SCN || ', ' || '{col}=' || :OLD.BASEOBJ# || ' -> ' || :NEW.BASEOBJ# || ', ' || '{col}=' || :OLD.BASEOBJV# || ' -> ' || :NEW.BASEOBJV# || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.OWNER# || ' -> ' || :NEW.OWNER# || ', ' || '{col}=' || :OLD.OWNERNAME || ' -> ' || :NEW.OWNERNAME || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ' -> ' || :NEW.SPARE4 || ', ' || '{col}=' || :OLD.SPARE5 || ' -> ' || :NEW.SPARE5 || ', ' || '{col}=' || :OLD.SPARE6 || ' -> ' || :NEW.SPARE6;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_IND_GG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_ind_gg_audit_delete
    AFTER DELETE ON LOGMNRC_IND_GG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.COMMIT_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ', ' || '{col}=' || :OLD.BASEOBJ# || ', ' || '{col}=' || :OLD.BASEOBJV# || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.OWNER# || ', ' || '{col}=' || :OLD.OWNERNAME || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ', ' || '{col}=' || :OLD.SPARE5 || ', ' || '{col}=' || :OLD.SPARE6;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_IND_GG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_indcol_gg_audit_insert
    AFTER INSERT ON LOGMNRC_INDCOL_GG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.COMMIT_SCN || ', ' || '{col}=' || :NEW.INTCOL# || ', ' || '{col}=' || :NEW.POS# || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_INDCOL_GG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_indcol_gg_audit_update
    AFTER UPDATE ON LOGMNRC_INDCOL_GG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.COMMIT_SCN || ' -> ' || :NEW.COMMIT_SCN || ', ' || '{col}=' || :OLD.INTCOL# || ' -> ' || :NEW.INTCOL# || ', ' || '{col}=' || :OLD.POS# || ' -> ' || :NEW.POS# || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_INDCOL_GG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_indcol_gg_audit_delete
    AFTER DELETE ON LOGMNRC_INDCOL_GG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.COMMIT_SCN || ', ' || '{col}=' || :OLD.INTCOL# || ', ' || '{col}=' || :OLD.POS# || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_INDCOL_GG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_shard_ts_audit_insert
    AFTER INSERT ON LOGMNRC_SHARD_TS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.TABLESPACE_NAME || ', ' || '{col}=' || :NEW.CHUNK_NUMBER || ', ' || '{col}=' || :NEW.START_SCN || ', ' || '{col}=' || :NEW.DROP_SCN || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_SHARD_TS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_shard_ts_audit_update
    AFTER UPDATE ON LOGMNRC_SHARD_TS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.TABLESPACE_NAME || ' -> ' || :NEW.TABLESPACE_NAME || ', ' || '{col}=' || :OLD.CHUNK_NUMBER || ' -> ' || :NEW.CHUNK_NUMBER || ', ' || '{col}=' || :OLD.START_SCN || ' -> ' || :NEW.START_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ' -> ' || :NEW.DROP_SCN || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_SHARD_TS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_shard_ts_audit_delete
    AFTER DELETE ON LOGMNRC_SHARD_TS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.TABLESPACE_NAME || ', ' || '{col}=' || :OLD.CHUNK_NUMBER || ', ' || '{col}=' || :OLD.START_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_SHARD_TS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_tspart_audit_insert
    AFTER INSERT ON LOGMNRC_TSPART
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.TS# || ', ' || '{col}=' || :NEW.START_SCN || ', ' || '{col}=' || :NEW.DROP_SCN || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_TSPART',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_tspart_audit_update
    AFTER UPDATE ON LOGMNRC_TSPART
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.TS# || ' -> ' || :NEW.TS# || ', ' || '{col}=' || :OLD.START_SCN || ' -> ' || :NEW.START_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ' -> ' || :NEW.DROP_SCN || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_TSPART',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_tspart_audit_delete
    AFTER DELETE ON LOGMNRC_TSPART
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.TS# || ', ' || '{col}=' || :OLD.START_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_TSPART',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_ts_audit_insert
    AFTER INSERT ON LOGMNRC_TS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.TS# || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.START_SCN || ', ' || '{col}=' || :NEW.DROP_SCN || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_TS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_ts_audit_update
    AFTER UPDATE ON LOGMNRC_TS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.TS# || ' -> ' || :NEW.TS# || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.START_SCN || ' -> ' || :NEW.START_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ' -> ' || :NEW.DROP_SCN || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_TS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_ts_audit_delete
    AFTER DELETE ON LOGMNRC_TS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.TS# || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.START_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_TS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_gsii_audit_insert
    AFTER INSERT ON LOGMNRC_GSII
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.BO# || ', ' || '{col}=' || :NEW.INDTYPE# || ', ' || '{col}=' || :NEW.DROP_SCN || ', ' || '{col}=' || :NEW.LOGMNR_SPARE1 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE2 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE3 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE4;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_GSII',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_gsii_audit_update
    AFTER UPDATE ON LOGMNRC_GSII
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.BO# || ' -> ' || :NEW.BO# || ', ' || '{col}=' || :OLD.INDTYPE# || ' -> ' || :NEW.INDTYPE# || ', ' || '{col}=' || :OLD.DROP_SCN || ' -> ' || :NEW.DROP_SCN || ', ' || '{col}=' || :OLD.LOGMNR_SPARE1 || ' -> ' || :NEW.LOGMNR_SPARE1 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE2 || ' -> ' || :NEW.LOGMNR_SPARE2 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE3 || ' -> ' || :NEW.LOGMNR_SPARE3 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE4 || ' -> ' || :NEW.LOGMNR_SPARE4;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_GSII',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_gsii_audit_delete
    AFTER DELETE ON LOGMNRC_GSII
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.BO# || ', ' || '{col}=' || :OLD.INDTYPE# || ', ' || '{col}=' || :OLD.DROP_SCN || ', ' || '{col}=' || :OLD.LOGMNR_SPARE1 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE2 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE3 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE4;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_GSII',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_gsba_audit_insert
    AFTER INSERT ON LOGMNRC_GSBA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.AS_OF_SCN || ', ' || '{col}=' || :NEW.FDO_LENGTH || ', ' || '{col}=' || :NEW.FDO_VALUE || ', ' || '{col}=' || :NEW.CHARSETID || ', ' || '{col}=' || :NEW.NCHARSETID || ', ' || '{col}=' || :NEW.DBTIMEZONE_LEN || ', ' || '{col}=' || :NEW.DBTIMEZONE_VALUE || ', ' || '{col}=' || :NEW.LOGMNR_SPARE1 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE2 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE3 || ', ' || '{col}=' || :NEW.LOGMNR_SPARE4 || ', ' || '{col}=' || :NEW.DB_GLOBAL_NAME;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_GSBA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_gsba_audit_update
    AFTER UPDATE ON LOGMNRC_GSBA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.AS_OF_SCN || ' -> ' || :NEW.AS_OF_SCN || ', ' || '{col}=' || :OLD.FDO_LENGTH || ' -> ' || :NEW.FDO_LENGTH || ', ' || '{col}=' || :OLD.FDO_VALUE || ' -> ' || :NEW.FDO_VALUE || ', ' || '{col}=' || :OLD.CHARSETID || ' -> ' || :NEW.CHARSETID || ', ' || '{col}=' || :OLD.NCHARSETID || ' -> ' || :NEW.NCHARSETID || ', ' || '{col}=' || :OLD.DBTIMEZONE_LEN || ' -> ' || :NEW.DBTIMEZONE_LEN || ', ' || '{col}=' || :OLD.DBTIMEZONE_VALUE || ' -> ' || :NEW.DBTIMEZONE_VALUE || ', ' || '{col}=' || :OLD.LOGMNR_SPARE1 || ' -> ' || :NEW.LOGMNR_SPARE1 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE2 || ' -> ' || :NEW.LOGMNR_SPARE2 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE3 || ' -> ' || :NEW.LOGMNR_SPARE3 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE4 || ' -> ' || :NEW.LOGMNR_SPARE4 || ', ' || '{col}=' || :OLD.DB_GLOBAL_NAME || ' -> ' || :NEW.DB_GLOBAL_NAME;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_GSBA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_gsba_audit_delete
    AFTER DELETE ON LOGMNRC_GSBA
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.AS_OF_SCN || ', ' || '{col}=' || :OLD.FDO_LENGTH || ', ' || '{col}=' || :OLD.FDO_VALUE || ', ' || '{col}=' || :OLD.CHARSETID || ', ' || '{col}=' || :OLD.NCHARSETID || ', ' || '{col}=' || :OLD.DBTIMEZONE_LEN || ', ' || '{col}=' || :OLD.DBTIMEZONE_VALUE || ', ' || '{col}=' || :OLD.LOGMNR_SPARE1 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE2 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE3 || ', ' || '{col}=' || :OLD.LOGMNR_SPARE4 || ', ' || '{col}=' || :OLD.DB_GLOBAL_NAME;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_GSBA',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_user_audit_insert
    AFTER INSERT ON LOGMNRC_USER
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.USER# || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.START_SCN || ', ' || '{col}=' || :NEW.DROP_SCN || ', ' || '{col}=' || :NEW.SPARE1_C || ', ' || '{col}=' || :NEW.SPARE2_C || ', ' || '{col}=' || :NEW.SPARE3_C;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_USER',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_user_audit_update
    AFTER UPDATE ON LOGMNRC_USER
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.USER# || ' -> ' || :NEW.USER# || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.START_SCN || ' -> ' || :NEW.START_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ' -> ' || :NEW.DROP_SCN || ', ' || '{col}=' || :OLD.SPARE1_C || ' -> ' || :NEW.SPARE1_C || ', ' || '{col}=' || :OLD.SPARE2_C || ' -> ' || :NEW.SPARE2_C || ', ' || '{col}=' || :OLD.SPARE3_C || ' -> ' || :NEW.SPARE3_C;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_USER',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_user_audit_delete
    AFTER DELETE ON LOGMNRC_USER
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.USER# || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.START_SCN || ', ' || '{col}=' || :OLD.DROP_SCN || ', ' || '{col}=' || :OLD.SPARE1_C || ', ' || '{col}=' || :OLD.SPARE2_C || ', ' || '{col}=' || :OLD.SPARE3_C;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_USER',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_seed$_audit_insert
    AFTER INSERT ON LOGMNR_SEED$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.SEED_VERSION || ', ' || '{col}=' || :NEW.GATHER_VERSION || ', ' || '{col}=' || :NEW.SCHEMANAME || ', ' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.OBJV# || ', ' || '{col}=' || :NEW.TABLE_NAME || ', ' || '{col}=' || :NEW.COL_NAME || ', ' || '{col}=' || :NEW.COL# || ', ' || '{col}=' || :NEW.INTCOL# || ', ' || '{col}=' || :NEW.SEGCOL# || ', ' || '{col}=' || :NEW.TYPE# || ', ' || '{col}=' || :NEW.LENGTH || ', ' || '{col}=' || :NEW.PRECISION# || ', ' || '{col}=' || :NEW.SCALE || ', ' || '{col}=' || :NEW.NULL$ || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SEED$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_seed$_audit_update
    AFTER UPDATE ON LOGMNR_SEED$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.SEED_VERSION || ' -> ' || :NEW.SEED_VERSION || ', ' || '{col}=' || :OLD.GATHER_VERSION || ' -> ' || :NEW.GATHER_VERSION || ', ' || '{col}=' || :OLD.SCHEMANAME || ' -> ' || :NEW.SCHEMANAME || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.OBJV# || ' -> ' || :NEW.OBJV# || ', ' || '{col}=' || :OLD.TABLE_NAME || ' -> ' || :NEW.TABLE_NAME || ', ' || '{col}=' || :OLD.COL_NAME || ' -> ' || :NEW.COL_NAME || ', ' || '{col}=' || :OLD.COL# || ' -> ' || :NEW.COL# || ', ' || '{col}=' || :OLD.INTCOL# || ' -> ' || :NEW.INTCOL# || ', ' || '{col}=' || :OLD.SEGCOL# || ' -> ' || :NEW.SEGCOL# || ', ' || '{col}=' || :OLD.TYPE# || ' -> ' || :NEW.TYPE# || ', ' || '{col}=' || :OLD.LENGTH || ' -> ' || :NEW.LENGTH || ', ' || '{col}=' || :OLD.PRECISION# || ' -> ' || :NEW.PRECISION# || ', ' || '{col}=' || :OLD.SCALE || ' -> ' || :NEW.SCALE || ', ' || '{col}=' || :OLD.NULL$ || ' -> ' || :NEW.NULL$ || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SEED$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_seed$_audit_delete
    AFTER DELETE ON LOGMNR_SEED$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.SEED_VERSION || ', ' || '{col}=' || :OLD.GATHER_VERSION || ', ' || '{col}=' || :OLD.SCHEMANAME || ', ' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.OBJV# || ', ' || '{col}=' || :OLD.TABLE_NAME || ', ' || '{col}=' || :OLD.COL_NAME || ', ' || '{col}=' || :OLD.COL# || ', ' || '{col}=' || :OLD.INTCOL# || ', ' || '{col}=' || :OLD.SEGCOL# || ', ' || '{col}=' || :OLD.TYPE# || ', ' || '{col}=' || :OLD.LENGTH || ', ' || '{col}=' || :OLD.PRECISION# || ', ' || '{col}=' || :OLD.SCALE || ', ' || '{col}=' || :OLD.NULL$ || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SEED$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_dictionary$_audit_insert
    AFTER INSERT ON LOGMNR_DICTIONARY$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.DB_NAME || ', ' || '{col}=' || :NEW.DB_ID || ', ' || '{col}=' || :NEW.DB_CREATED || ', ' || '{col}=' || :NEW.DB_DICT_CREATED || ', ' || '{col}=' || :NEW.DB_DICT_SCN || ', ' || '{col}=' || :NEW.DB_THREAD_MAP || ', ' || '{col}=' || :NEW.DB_TXN_SCNBAS || ', ' || '{col}=' || :NEW.DB_TXN_SCNWRP || ', ' || '{col}=' || :NEW.DB_RESETLOGS_CHANGE# || ', ' || '{col}=' || :NEW.DB_RESETLOGS_TIME || ', ' || '{col}=' || :NEW.DB_VERSION_TIME || ', ' || '{col}=' || :NEW.DB_REDO_TYPE_ID || ', ' || '{col}=' || :NEW.DB_REDO_RELEASE || ', ' || '{col}=' || :NEW.DB_CHARACTER_SET || ', ' || '{col}=' || :NEW.DB_VERSION || ', ' || '{col}=' || :NEW.DB_STATUS || ', ' || '{col}=' || :NEW.DB_GLOBAL_NAME || ', ' || '{col}=' || :NEW.DB_DICT_MAXOBJECTS || ', ' || '{col}=' || :NEW.DB_DICT_OBJECTCOUNT || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :NEW.PDB_NAME || ', ' || '{col}=' || :NEW.PDB_ID || ', ' || '{col}=' || :NEW.PDB_UID || ', ' || '{col}=' || :NEW.PDB_DBID || ', ' || '{col}=' || :NEW.PDB_GUID || ', ' || '{col}=' || :NEW.PDB_CREATE_SCN || ', ' || '{col}=' || :NEW.PDB_COUNT || ', ' || '{col}=' || :NEW.PDB_GLOBAL_NAME || ', ' || '{col}=' || :NEW.FED_ROOT_CON_ID#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_DICTIONARY$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_dictionary$_audit_update
    AFTER UPDATE ON LOGMNR_DICTIONARY$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.DB_NAME || ' -> ' || :NEW.DB_NAME || ', ' || '{col}=' || :OLD.DB_ID || ' -> ' || :NEW.DB_ID || ', ' || '{col}=' || :OLD.DB_CREATED || ' -> ' || :NEW.DB_CREATED || ', ' || '{col}=' || :OLD.DB_DICT_CREATED || ' -> ' || :NEW.DB_DICT_CREATED || ', ' || '{col}=' || :OLD.DB_DICT_SCN || ' -> ' || :NEW.DB_DICT_SCN || ', ' || '{col}=' || :OLD.DB_THREAD_MAP || ' -> ' || :NEW.DB_THREAD_MAP || ', ' || '{col}=' || :OLD.DB_TXN_SCNBAS || ' -> ' || :NEW.DB_TXN_SCNBAS || ', ' || '{col}=' || :OLD.DB_TXN_SCNWRP || ' -> ' || :NEW.DB_TXN_SCNWRP || ', ' || '{col}=' || :OLD.DB_RESETLOGS_CHANGE# || ' -> ' || :NEW.DB_RESETLOGS_CHANGE# || ', ' || '{col}=' || :OLD.DB_RESETLOGS_TIME || ' -> ' || :NEW.DB_RESETLOGS_TIME || ', ' || '{col}=' || :OLD.DB_VERSION_TIME || ' -> ' || :NEW.DB_VERSION_TIME || ', ' || '{col}=' || :OLD.DB_REDO_TYPE_ID || ' -> ' || :NEW.DB_REDO_TYPE_ID || ', ' || '{col}=' || :OLD.DB_REDO_RELEASE || ' -> ' || :NEW.DB_REDO_RELEASE || ', ' || '{col}=' || :OLD.DB_CHARACTER_SET || ' -> ' || :NEW.DB_CHARACTER_SET || ', ' || '{col}=' || :OLD.DB_VERSION || ' -> ' || :NEW.DB_VERSION || ', ' || '{col}=' || :OLD.DB_STATUS || ' -> ' || :NEW.DB_STATUS || ', ' || '{col}=' || :OLD.DB_GLOBAL_NAME || ' -> ' || :NEW.DB_GLOBAL_NAME || ', ' || '{col}=' || :OLD.DB_DICT_MAXOBJECTS || ' -> ' || :NEW.DB_DICT_MAXOBJECTS || ', ' || '{col}=' || :OLD.DB_DICT_OBJECTCOUNT || ' -> ' || :NEW.DB_DICT_OBJECTCOUNT || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.PDB_NAME || ' -> ' || :NEW.PDB_NAME || ', ' || '{col}=' || :OLD.PDB_ID || ' -> ' || :NEW.PDB_ID || ', ' || '{col}=' || :OLD.PDB_UID || ' -> ' || :NEW.PDB_UID || ', ' || '{col}=' || :OLD.PDB_DBID || ' -> ' || :NEW.PDB_DBID || ', ' || '{col}=' || :OLD.PDB_GUID || ' -> ' || :NEW.PDB_GUID || ', ' || '{col}=' || :OLD.PDB_CREATE_SCN || ' -> ' || :NEW.PDB_CREATE_SCN || ', ' || '{col}=' || :OLD.PDB_COUNT || ' -> ' || :NEW.PDB_COUNT || ', ' || '{col}=' || :OLD.PDB_GLOBAL_NAME || ' -> ' || :NEW.PDB_GLOBAL_NAME || ', ' || '{col}=' || :OLD.FED_ROOT_CON_ID# || ' -> ' || :NEW.FED_ROOT_CON_ID#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_DICTIONARY$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_dictionary$_audit_delete
    AFTER DELETE ON LOGMNR_DICTIONARY$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.DB_NAME || ', ' || '{col}=' || :OLD.DB_ID || ', ' || '{col}=' || :OLD.DB_CREATED || ', ' || '{col}=' || :OLD.DB_DICT_CREATED || ', ' || '{col}=' || :OLD.DB_DICT_SCN || ', ' || '{col}=' || :OLD.DB_THREAD_MAP || ', ' || '{col}=' || :OLD.DB_TXN_SCNBAS || ', ' || '{col}=' || :OLD.DB_TXN_SCNWRP || ', ' || '{col}=' || :OLD.DB_RESETLOGS_CHANGE# || ', ' || '{col}=' || :OLD.DB_RESETLOGS_TIME || ', ' || '{col}=' || :OLD.DB_VERSION_TIME || ', ' || '{col}=' || :OLD.DB_REDO_TYPE_ID || ', ' || '{col}=' || :OLD.DB_REDO_RELEASE || ', ' || '{col}=' || :OLD.DB_CHARACTER_SET || ', ' || '{col}=' || :OLD.DB_VERSION || ', ' || '{col}=' || :OLD.DB_STATUS || ', ' || '{col}=' || :OLD.DB_GLOBAL_NAME || ', ' || '{col}=' || :OLD.DB_DICT_MAXOBJECTS || ', ' || '{col}=' || :OLD.DB_DICT_OBJECTCOUNT || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.PDB_NAME || ', ' || '{col}=' || :OLD.PDB_ID || ', ' || '{col}=' || :OLD.PDB_UID || ', ' || '{col}=' || :OLD.PDB_DBID || ', ' || '{col}=' || :OLD.PDB_GUID || ', ' || '{col}=' || :OLD.PDB_CREATE_SCN || ', ' || '{col}=' || :OLD.PDB_COUNT || ', ' || '{col}=' || :OLD.PDB_GLOBAL_NAME || ', ' || '{col}=' || :OLD.FED_ROOT_CON_ID#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_DICTIONARY$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_obj$_audit_insert
    AFTER INSERT ON LOGMNR_OBJ$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OBJV# || ', ' || '{col}=' || :NEW.OWNER# || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.NAMESPACE || ', ' || '{col}=' || :NEW.SUBNAME || ', ' || '{col}=' || :NEW.TYPE# || ', ' || '{col}=' || :NEW.OID$ || ', ' || '{col}=' || :NEW.REMOTEOWNER || ', ' || '{col}=' || :NEW.LINKNAME || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.SPARE3 || ', ' || '{col}=' || :NEW.STIME || ', ' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :NEW.START_SCNBAS || ', ' || '{col}=' || :NEW.START_SCNWRP;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_OBJ$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_obj$_audit_update
    AFTER UPDATE ON LOGMNR_OBJ$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJV# || ' -> ' || :NEW.OBJV# || ', ' || '{col}=' || :OLD.OWNER# || ' -> ' || :NEW.OWNER# || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.NAMESPACE || ' -> ' || :NEW.NAMESPACE || ', ' || '{col}=' || :OLD.SUBNAME || ' -> ' || :NEW.SUBNAME || ', ' || '{col}=' || :OLD.TYPE# || ' -> ' || :NEW.TYPE# || ', ' || '{col}=' || :OLD.OID$ || ' -> ' || :NEW.OID$ || ', ' || '{col}=' || :OLD.REMOTEOWNER || ' -> ' || :NEW.REMOTEOWNER || ', ' || '{col}=' || :OLD.LINKNAME || ' -> ' || :NEW.LINKNAME || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3 || ', ' || '{col}=' || :OLD.STIME || ' -> ' || :NEW.STIME || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.START_SCNBAS || ' -> ' || :NEW.START_SCNBAS || ', ' || '{col}=' || :OLD.START_SCNWRP || ' -> ' || :NEW.START_SCNWRP;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_OBJ$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_obj$_audit_delete
    AFTER DELETE ON LOGMNR_OBJ$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJV# || ', ' || '{col}=' || :OLD.OWNER# || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.NAMESPACE || ', ' || '{col}=' || :OLD.SUBNAME || ', ' || '{col}=' || :OLD.TYPE# || ', ' || '{col}=' || :OLD.OID$ || ', ' || '{col}=' || :OLD.REMOTEOWNER || ', ' || '{col}=' || :OLD.LINKNAME || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.SPARE3 || ', ' || '{col}=' || :OLD.STIME || ', ' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.START_SCNBAS || ', ' || '{col}=' || :OLD.START_SCNWRP;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_OBJ$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_tab$_audit_insert
    AFTER INSERT ON LOGMNR_TAB$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.TS# || ', ' || '{col}=' || :NEW.COLS || ', ' || '{col}=' || :NEW.PROPERTY || ', ' || '{col}=' || :NEW.INTCOLS || ', ' || '{col}=' || :NEW.KERNELCOLS || ', ' || '{col}=' || :NEW.BOBJ# || ', ' || '{col}=' || :NEW.TRIGFLAG || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :NEW.ACDRFLAGS || ', ' || '{col}=' || :NEW.ACDRTSOBJ# || ', ' || '{col}=' || :NEW.ACDRROWTSINTCOL#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TAB$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_tab$_audit_update
    AFTER UPDATE ON LOGMNR_TAB$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.TS# || ' -> ' || :NEW.TS# || ', ' || '{col}=' || :OLD.COLS || ' -> ' || :NEW.COLS || ', ' || '{col}=' || :OLD.PROPERTY || ' -> ' || :NEW.PROPERTY || ', ' || '{col}=' || :OLD.INTCOLS || ' -> ' || :NEW.INTCOLS || ', ' || '{col}=' || :OLD.KERNELCOLS || ' -> ' || :NEW.KERNELCOLS || ', ' || '{col}=' || :OLD.BOBJ# || ' -> ' || :NEW.BOBJ# || ', ' || '{col}=' || :OLD.TRIGFLAG || ' -> ' || :NEW.TRIGFLAG || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.ACDRFLAGS || ' -> ' || :NEW.ACDRFLAGS || ', ' || '{col}=' || :OLD.ACDRTSOBJ# || ' -> ' || :NEW.ACDRTSOBJ# || ', ' || '{col}=' || :OLD.ACDRROWTSINTCOL# || ' -> ' || :NEW.ACDRROWTSINTCOL#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TAB$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_tab$_audit_delete
    AFTER DELETE ON LOGMNR_TAB$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.TS# || ', ' || '{col}=' || :OLD.COLS || ', ' || '{col}=' || :OLD.PROPERTY || ', ' || '{col}=' || :OLD.INTCOLS || ', ' || '{col}=' || :OLD.KERNELCOLS || ', ' || '{col}=' || :OLD.BOBJ# || ', ' || '{col}=' || :OLD.TRIGFLAG || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.ACDRFLAGS || ', ' || '{col}=' || :OLD.ACDRTSOBJ# || ', ' || '{col}=' || :OLD.ACDRROWTSINTCOL#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TAB$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_col$_audit_insert
    AFTER INSERT ON LOGMNR_COL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :NEW.COLLID || ', ' || '{col}=' || :NEW.COLLINTCOL# || ', ' || '{col}=' || :NEW.ACDRRESCOL# || ', ' || '{col}=' || :NEW.COL# || ', ' || '{col}=' || :NEW.SEGCOL# || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.TYPE# || ', ' || '{col}=' || :NEW.LENGTH || ', ' || '{col}=' || :NEW.PRECISION# || ', ' || '{col}=' || :NEW.SCALE || ', ' || '{col}=' || :NEW.NULL$ || ', ' || '{col}=' || :NEW.INTCOL# || ', ' || '{col}=' || :NEW.PROPERTY || ', ' || '{col}=' || :NEW.CHARSETID || ', ' || '{col}=' || :NEW.CHARSETFORM || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.OBJ#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_COL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_col$_audit_update
    AFTER UPDATE ON LOGMNR_COL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.COLLID || ' -> ' || :NEW.COLLID || ', ' || '{col}=' || :OLD.COLLINTCOL# || ' -> ' || :NEW.COLLINTCOL# || ', ' || '{col}=' || :OLD.ACDRRESCOL# || ' -> ' || :NEW.ACDRRESCOL# || ', ' || '{col}=' || :OLD.COL# || ' -> ' || :NEW.COL# || ', ' || '{col}=' || :OLD.SEGCOL# || ' -> ' || :NEW.SEGCOL# || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.TYPE# || ' -> ' || :NEW.TYPE# || ', ' || '{col}=' || :OLD.LENGTH || ' -> ' || :NEW.LENGTH || ', ' || '{col}=' || :OLD.PRECISION# || ' -> ' || :NEW.PRECISION# || ', ' || '{col}=' || :OLD.SCALE || ' -> ' || :NEW.SCALE || ', ' || '{col}=' || :OLD.NULL$ || ' -> ' || :NEW.NULL$ || ', ' || '{col}=' || :OLD.INTCOL# || ' -> ' || :NEW.INTCOL# || ', ' || '{col}=' || :OLD.PROPERTY || ' -> ' || :NEW.PROPERTY || ', ' || '{col}=' || :OLD.CHARSETID || ' -> ' || :NEW.CHARSETID || ', ' || '{col}=' || :OLD.CHARSETFORM || ' -> ' || :NEW.CHARSETFORM || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_COL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_col$_audit_delete
    AFTER DELETE ON LOGMNR_COL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.COLLID || ', ' || '{col}=' || :OLD.COLLINTCOL# || ', ' || '{col}=' || :OLD.ACDRRESCOL# || ', ' || '{col}=' || :OLD.COL# || ', ' || '{col}=' || :OLD.SEGCOL# || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.TYPE# || ', ' || '{col}=' || :OLD.LENGTH || ', ' || '{col}=' || :OLD.PRECISION# || ', ' || '{col}=' || :OLD.SCALE || ', ' || '{col}=' || :OLD.NULL$ || ', ' || '{col}=' || :OLD.INTCOL# || ', ' || '{col}=' || :OLD.PROPERTY || ', ' || '{col}=' || :OLD.CHARSETID || ', ' || '{col}=' || :OLD.CHARSETFORM || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.OBJ#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_COL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_attrcol$_audit_insert
    AFTER INSERT ON LOGMNR_ATTRCOL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.INTCOL# || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_ATTRCOL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_attrcol$_audit_update
    AFTER UPDATE ON LOGMNR_ATTRCOL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.INTCOL# || ' -> ' || :NEW.INTCOL# || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_ATTRCOL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_attrcol$_audit_delete
    AFTER DELETE ON LOGMNR_ATTRCOL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.INTCOL# || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_ATTRCOL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_ts$_audit_insert
    AFTER INSERT ON LOGMNR_TS$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.TS# || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.OWNER# || ', ' || '{col}=' || :NEW.BLOCKSIZE || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :NEW.START_SCNBAS || ', ' || '{col}=' || :NEW.START_SCNWRP;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TS$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_ts$_audit_update
    AFTER UPDATE ON LOGMNR_TS$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.TS# || ' -> ' || :NEW.TS# || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.OWNER# || ' -> ' || :NEW.OWNER# || ', ' || '{col}=' || :OLD.BLOCKSIZE || ' -> ' || :NEW.BLOCKSIZE || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.START_SCNBAS || ' -> ' || :NEW.START_SCNBAS || ', ' || '{col}=' || :OLD.START_SCNWRP || ' -> ' || :NEW.START_SCNWRP;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TS$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_ts$_audit_delete
    AFTER DELETE ON LOGMNR_TS$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.TS# || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.OWNER# || ', ' || '{col}=' || :OLD.BLOCKSIZE || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.START_SCNBAS || ', ' || '{col}=' || :OLD.START_SCNWRP;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TS$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_ind$_audit_insert
    AFTER INSERT ON LOGMNR_IND$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.BO# || ', ' || '{col}=' || :NEW.COLS || ', ' || '{col}=' || :NEW.TYPE# || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.PROPERTY || ', ' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_IND$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_ind$_audit_update
    AFTER UPDATE ON LOGMNR_IND$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.BO# || ' -> ' || :NEW.BO# || ', ' || '{col}=' || :OLD.COLS || ' -> ' || :NEW.COLS || ', ' || '{col}=' || :OLD.TYPE# || ' -> ' || :NEW.TYPE# || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.PROPERTY || ' -> ' || :NEW.PROPERTY || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_IND$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_ind$_audit_delete
    AFTER DELETE ON LOGMNR_IND$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.BO# || ', ' || '{col}=' || :OLD.COLS || ', ' || '{col}=' || :OLD.TYPE# || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.PROPERTY || ', ' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_IND$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_user$_audit_insert
    AFTER INSERT ON LOGMNR_USER$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.USER# || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :NEW.SPARE1;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_USER$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_user$_audit_update
    AFTER UPDATE ON LOGMNR_USER$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.USER# || ' -> ' || :NEW.USER# || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_USER$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_user$_audit_delete
    AFTER DELETE ON LOGMNR_USER$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.USER# || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.SPARE1;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_USER$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_tabpart$_audit_insert
    AFTER INSERT ON LOGMNR_TABPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.TS# || ', ' || '{col}=' || :NEW.PART# || ', ' || '{col}=' || :NEW.BO# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TABPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_tabpart$_audit_update
    AFTER UPDATE ON LOGMNR_TABPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.TS# || ' -> ' || :NEW.TS# || ', ' || '{col}=' || :OLD.PART# || ' -> ' || :NEW.PART# || ', ' || '{col}=' || :OLD.BO# || ' -> ' || :NEW.BO# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TABPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_tabpart$_audit_delete
    AFTER DELETE ON LOGMNR_TABPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.TS# || ', ' || '{col}=' || :OLD.PART# || ', ' || '{col}=' || :OLD.BO# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TABPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_tabsubpart$_audit_insert
    AFTER INSERT ON LOGMNR_TABSUBPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.DATAOBJ# || ', ' || '{col}=' || :NEW.POBJ# || ', ' || '{col}=' || :NEW.SUBPART# || ', ' || '{col}=' || :NEW.TS# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TABSUBPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_tabsubpart$_audit_update
    AFTER UPDATE ON LOGMNR_TABSUBPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.DATAOBJ# || ' -> ' || :NEW.DATAOBJ# || ', ' || '{col}=' || :OLD.POBJ# || ' -> ' || :NEW.POBJ# || ', ' || '{col}=' || :OLD.SUBPART# || ' -> ' || :NEW.SUBPART# || ', ' || '{col}=' || :OLD.TS# || ' -> ' || :NEW.TS# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TABSUBPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_tabsubpart$_audit_delete
    AFTER DELETE ON LOGMNR_TABSUBPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.DATAOBJ# || ', ' || '{col}=' || :OLD.POBJ# || ', ' || '{col}=' || :OLD.SUBPART# || ', ' || '{col}=' || :OLD.TS# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TABSUBPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_tabcompart$_audit_insert
    AFTER INSERT ON LOGMNR_TABCOMPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.BO# || ', ' || '{col}=' || :NEW.PART# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TABCOMPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_tabcompart$_audit_update
    AFTER UPDATE ON LOGMNR_TABCOMPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.BO# || ' -> ' || :NEW.BO# || ', ' || '{col}=' || :OLD.PART# || ' -> ' || :NEW.PART# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TABCOMPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_tabcompart$_audit_delete
    AFTER DELETE ON LOGMNR_TABCOMPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.BO# || ', ' || '{col}=' || :OLD.PART# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TABCOMPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_type$_audit_insert
    AFTER INSERT ON LOGMNR_TYPE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.HIDDENMETHODS || ', ' || '{col}=' || :NEW.SUPERTYPES || ', ' || '{col}=' || :NEW.SUBTYPES || ', ' || '{col}=' || :NEW.EXTERNTYPE || ', ' || '{col}=' || :NEW.EXTERNNAME || ', ' || '{col}=' || :NEW.HELPERCLASSNAME || ', ' || '{col}=' || :NEW.LOCAL_ATTRS || ', ' || '{col}=' || :NEW.LOCAL_METHODS || ', ' || '{col}=' || :NEW.TYPEID || ', ' || '{col}=' || :NEW.ROOTTOID || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3 || ', ' || '{col}=' || :NEW.SUPERTOID || ', ' || '{col}=' || :NEW.HASHCODE || ', ' || '{col}=' || :NEW.TOID || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :NEW.VERSION# || ', ' || '{col}=' || :NEW.VERSION || ', ' || '{col}=' || :NEW.TVOID || ', ' || '{col}=' || :NEW.TYPECODE || ', ' || '{col}=' || :NEW.PROPERTIES || ', ' || '{col}=' || :NEW.ATTRIBUTES || ', ' || '{col}=' || :NEW.METHODS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TYPE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_type$_audit_update
    AFTER UPDATE ON LOGMNR_TYPE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.HIDDENMETHODS || ' -> ' || :NEW.HIDDENMETHODS || ', ' || '{col}=' || :OLD.SUPERTYPES || ' -> ' || :NEW.SUPERTYPES || ', ' || '{col}=' || :OLD.SUBTYPES || ' -> ' || :NEW.SUBTYPES || ', ' || '{col}=' || :OLD.EXTERNTYPE || ' -> ' || :NEW.EXTERNTYPE || ', ' || '{col}=' || :OLD.EXTERNNAME || ' -> ' || :NEW.EXTERNNAME || ', ' || '{col}=' || :OLD.HELPERCLASSNAME || ' -> ' || :NEW.HELPERCLASSNAME || ', ' || '{col}=' || :OLD.LOCAL_ATTRS || ' -> ' || :NEW.LOCAL_ATTRS || ', ' || '{col}=' || :OLD.LOCAL_METHODS || ' -> ' || :NEW.LOCAL_METHODS || ', ' || '{col}=' || :OLD.TYPEID || ' -> ' || :NEW.TYPEID || ', ' || '{col}=' || :OLD.ROOTTOID || ' -> ' || :NEW.ROOTTOID || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3 || ', ' || '{col}=' || :OLD.SUPERTOID || ' -> ' || :NEW.SUPERTOID || ', ' || '{col}=' || :OLD.HASHCODE || ' -> ' || :NEW.HASHCODE || ', ' || '{col}=' || :OLD.TOID || ' -> ' || :NEW.TOID || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.VERSION# || ' -> ' || :NEW.VERSION# || ', ' || '{col}=' || :OLD.VERSION || ' -> ' || :NEW.VERSION || ', ' || '{col}=' || :OLD.TVOID || ' -> ' || :NEW.TVOID || ', ' || '{col}=' || :OLD.TYPECODE || ' -> ' || :NEW.TYPECODE || ', ' || '{col}=' || :OLD.PROPERTIES || ' -> ' || :NEW.PROPERTIES || ', ' || '{col}=' || :OLD.ATTRIBUTES || ' -> ' || :NEW.ATTRIBUTES || ', ' || '{col}=' || :OLD.METHODS || ' -> ' || :NEW.METHODS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TYPE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_type$_audit_delete
    AFTER DELETE ON LOGMNR_TYPE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.HIDDENMETHODS || ', ' || '{col}=' || :OLD.SUPERTYPES || ', ' || '{col}=' || :OLD.SUBTYPES || ', ' || '{col}=' || :OLD.EXTERNTYPE || ', ' || '{col}=' || :OLD.EXTERNNAME || ', ' || '{col}=' || :OLD.HELPERCLASSNAME || ', ' || '{col}=' || :OLD.LOCAL_ATTRS || ', ' || '{col}=' || :OLD.LOCAL_METHODS || ', ' || '{col}=' || :OLD.TYPEID || ', ' || '{col}=' || :OLD.ROOTTOID || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ', ' || '{col}=' || :OLD.SUPERTOID || ', ' || '{col}=' || :OLD.HASHCODE || ', ' || '{col}=' || :OLD.TOID || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.VERSION# || ', ' || '{col}=' || :OLD.VERSION || ', ' || '{col}=' || :OLD.TVOID || ', ' || '{col}=' || :OLD.TYPECODE || ', ' || '{col}=' || :OLD.PROPERTIES || ', ' || '{col}=' || :OLD.ATTRIBUTES || ', ' || '{col}=' || :OLD.METHODS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_TYPE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_coltype$_audit_insert
    AFTER INSERT ON LOGMNR_COLTYPE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.COL# || ', ' || '{col}=' || :NEW.INTCOL# || ', ' || '{col}=' || :NEW.TOID || ', ' || '{col}=' || :NEW.VERSION# || ', ' || '{col}=' || :NEW.PACKED || ', ' || '{col}=' || :NEW.INTCOLS || ', ' || '{col}=' || :NEW.INTCOL#S || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.TYPIDCOL# || ', ' || '{col}=' || :NEW.SYNOBJ# || ', ' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_COLTYPE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_coltype$_audit_update
    AFTER UPDATE ON LOGMNR_COLTYPE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.COL# || ' -> ' || :NEW.COL# || ', ' || '{col}=' || :OLD.INTCOL# || ' -> ' || :NEW.INTCOL# || ', ' || '{col}=' || :OLD.TOID || ' -> ' || :NEW.TOID || ', ' || '{col}=' || :OLD.VERSION# || ' -> ' || :NEW.VERSION# || ', ' || '{col}=' || :OLD.PACKED || ' -> ' || :NEW.PACKED || ', ' || '{col}=' || :OLD.INTCOLS || ' -> ' || :NEW.INTCOLS || ', ' || '{col}=' || :OLD.INTCOL#S || ' -> ' || :NEW.INTCOL#S || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.TYPIDCOL# || ' -> ' || :NEW.TYPIDCOL# || ', ' || '{col}=' || :OLD.SYNOBJ# || ' -> ' || :NEW.SYNOBJ# || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_COLTYPE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_coltype$_audit_delete
    AFTER DELETE ON LOGMNR_COLTYPE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.COL# || ', ' || '{col}=' || :OLD.INTCOL# || ', ' || '{col}=' || :OLD.TOID || ', ' || '{col}=' || :OLD.VERSION# || ', ' || '{col}=' || :OLD.PACKED || ', ' || '{col}=' || :OLD.INTCOLS || ', ' || '{col}=' || :OLD.INTCOL#S || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.TYPIDCOL# || ', ' || '{col}=' || :OLD.SYNOBJ# || ', ' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_COLTYPE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_attribute$_audit_insert
    AFTER INSERT ON LOGMNR_ATTRIBUTE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.VERSION# || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.ATTRIBUTE# || ', ' || '{col}=' || :NEW.ATTR_TOID || ', ' || '{col}=' || :NEW.ATTR_VERSION# || ', ' || '{col}=' || :NEW.SYNOBJ# || ', ' || '{col}=' || :NEW.PROPERTIES || ', ' || '{col}=' || :NEW.CHARSETID || ', ' || '{col}=' || :NEW.CHARSETFORM || ', ' || '{col}=' || :NEW.LENGTH || ', ' || '{col}=' || :NEW.PRECISION# || ', ' || '{col}=' || :NEW.SCALE || ', ' || '{col}=' || :NEW.EXTERNNAME || ', ' || '{col}=' || :NEW.XFLAGS || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3 || ', ' || '{col}=' || :NEW.SPARE4 || ', ' || '{col}=' || :NEW.SPARE5 || ', ' || '{col}=' || :NEW.SETTER || ', ' || '{col}=' || :NEW.GETTER || ', ' || '{col}=' || :NEW.TOID || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_ATTRIBUTE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_attribute$_audit_update
    AFTER UPDATE ON LOGMNR_ATTRIBUTE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.VERSION# || ' -> ' || :NEW.VERSION# || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.ATTRIBUTE# || ' -> ' || :NEW.ATTRIBUTE# || ', ' || '{col}=' || :OLD.ATTR_TOID || ' -> ' || :NEW.ATTR_TOID || ', ' || '{col}=' || :OLD.ATTR_VERSION# || ' -> ' || :NEW.ATTR_VERSION# || ', ' || '{col}=' || :OLD.SYNOBJ# || ' -> ' || :NEW.SYNOBJ# || ', ' || '{col}=' || :OLD.PROPERTIES || ' -> ' || :NEW.PROPERTIES || ', ' || '{col}=' || :OLD.CHARSETID || ' -> ' || :NEW.CHARSETID || ', ' || '{col}=' || :OLD.CHARSETFORM || ' -> ' || :NEW.CHARSETFORM || ', ' || '{col}=' || :OLD.LENGTH || ' -> ' || :NEW.LENGTH || ', ' || '{col}=' || :OLD.PRECISION# || ' -> ' || :NEW.PRECISION# || ', ' || '{col}=' || :OLD.SCALE || ' -> ' || :NEW.SCALE || ', ' || '{col}=' || :OLD.EXTERNNAME || ' -> ' || :NEW.EXTERNNAME || ', ' || '{col}=' || :OLD.XFLAGS || ' -> ' || :NEW.XFLAGS || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ' -> ' || :NEW.SPARE4 || ', ' || '{col}=' || :OLD.SPARE5 || ' -> ' || :NEW.SPARE5 || ', ' || '{col}=' || :OLD.SETTER || ' -> ' || :NEW.SETTER || ', ' || '{col}=' || :OLD.GETTER || ' -> ' || :NEW.GETTER || ', ' || '{col}=' || :OLD.TOID || ' -> ' || :NEW.TOID || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_ATTRIBUTE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_attribute$_audit_delete
    AFTER DELETE ON LOGMNR_ATTRIBUTE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.VERSION# || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.ATTRIBUTE# || ', ' || '{col}=' || :OLD.ATTR_TOID || ', ' || '{col}=' || :OLD.ATTR_VERSION# || ', ' || '{col}=' || :OLD.SYNOBJ# || ', ' || '{col}=' || :OLD.PROPERTIES || ', ' || '{col}=' || :OLD.CHARSETID || ', ' || '{col}=' || :OLD.CHARSETFORM || ', ' || '{col}=' || :OLD.LENGTH || ', ' || '{col}=' || :OLD.PRECISION# || ', ' || '{col}=' || :OLD.SCALE || ', ' || '{col}=' || :OLD.EXTERNNAME || ', ' || '{col}=' || :OLD.XFLAGS || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ', ' || '{col}=' || :OLD.SPARE5 || ', ' || '{col}=' || :OLD.SETTER || ', ' || '{col}=' || :OLD.GETTER || ', ' || '{col}=' || :OLD.TOID || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_ATTRIBUTE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_lob$_audit_insert
    AFTER INSERT ON LOGMNR_LOB$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.INTCOL# || ', ' || '{col}=' || :NEW.COL# || ', ' || '{col}=' || :NEW.LOBJ# || ', ' || '{col}=' || :NEW.CHUNK || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_LOB$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_lob$_audit_update
    AFTER UPDATE ON LOGMNR_LOB$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.INTCOL# || ' -> ' || :NEW.INTCOL# || ', ' || '{col}=' || :OLD.COL# || ' -> ' || :NEW.COL# || ', ' || '{col}=' || :OLD.LOBJ# || ' -> ' || :NEW.LOBJ# || ', ' || '{col}=' || :OLD.CHUNK || ' -> ' || :NEW.CHUNK || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_LOB$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_lob$_audit_delete
    AFTER DELETE ON LOGMNR_LOB$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.INTCOL# || ', ' || '{col}=' || :OLD.COL# || ', ' || '{col}=' || :OLD.LOBJ# || ', ' || '{col}=' || :OLD.CHUNK || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_LOB$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_con$_audit_insert
    AFTER INSERT ON LOGMNR_CON$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OWNER# || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.CON# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :NEW.START_SCNBAS || ', ' || '{col}=' || :NEW.START_SCNWRP;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_CON$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_con$_audit_update
    AFTER UPDATE ON LOGMNR_CON$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OWNER# || ' -> ' || :NEW.OWNER# || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.CON# || ' -> ' || :NEW.CON# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.START_SCNBAS || ' -> ' || :NEW.START_SCNBAS || ', ' || '{col}=' || :OLD.START_SCNWRP || ' -> ' || :NEW.START_SCNWRP;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_CON$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_con$_audit_delete
    AFTER DELETE ON LOGMNR_CON$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OWNER# || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.CON# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.START_SCNBAS || ', ' || '{col}=' || :OLD.START_SCNWRP;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_CON$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_container$_audit_insert
    AFTER INSERT ON LOGMNR_CONTAINER$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.CON_ID# || ', ' || '{col}=' || :NEW.DBID || ', ' || '{col}=' || :NEW.CON_UID || ', ' || '{col}=' || :NEW.CREATE_SCNWRP || ', ' || '{col}=' || :NEW.CREATE_SCNBAS || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.STATUS || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :NEW.VSN || ', ' || '{col}=' || :NEW.FED_ROOT_CON_ID#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_CONTAINER$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_container$_audit_update
    AFTER UPDATE ON LOGMNR_CONTAINER$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.CON_ID# || ' -> ' || :NEW.CON_ID# || ', ' || '{col}=' || :OLD.DBID || ' -> ' || :NEW.DBID || ', ' || '{col}=' || :OLD.CON_UID || ' -> ' || :NEW.CON_UID || ', ' || '{col}=' || :OLD.CREATE_SCNWRP || ' -> ' || :NEW.CREATE_SCNWRP || ', ' || '{col}=' || :OLD.CREATE_SCNBAS || ' -> ' || :NEW.CREATE_SCNBAS || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.STATUS || ' -> ' || :NEW.STATUS || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.VSN || ' -> ' || :NEW.VSN || ', ' || '{col}=' || :OLD.FED_ROOT_CON_ID# || ' -> ' || :NEW.FED_ROOT_CON_ID#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_CONTAINER$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_container$_audit_delete
    AFTER DELETE ON LOGMNR_CONTAINER$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.CON_ID# || ', ' || '{col}=' || :OLD.DBID || ', ' || '{col}=' || :OLD.CON_UID || ', ' || '{col}=' || :OLD.CREATE_SCNWRP || ', ' || '{col}=' || :OLD.CREATE_SCNBAS || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.STATUS || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.VSN || ', ' || '{col}=' || :OLD.FED_ROOT_CON_ID#;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_CONTAINER$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_cdef$_audit_insert
    AFTER INSERT ON LOGMNR_CDEF$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.CON# || ', ' || '{col}=' || :NEW.COLS || ', ' || '{col}=' || :NEW.TYPE# || ', ' || '{col}=' || :NEW.ROBJ# || ', ' || '{col}=' || :NEW.RCON# || ', ' || '{col}=' || :NEW.ENABLED || ', ' || '{col}=' || :NEW.DEFER || ', ' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_CDEF$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_cdef$_audit_update
    AFTER UPDATE ON LOGMNR_CDEF$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.CON# || ' -> ' || :NEW.CON# || ', ' || '{col}=' || :OLD.COLS || ' -> ' || :NEW.COLS || ', ' || '{col}=' || :OLD.TYPE# || ' -> ' || :NEW.TYPE# || ', ' || '{col}=' || :OLD.ROBJ# || ' -> ' || :NEW.ROBJ# || ', ' || '{col}=' || :OLD.RCON# || ' -> ' || :NEW.RCON# || ', ' || '{col}=' || :OLD.ENABLED || ' -> ' || :NEW.ENABLED || ', ' || '{col}=' || :OLD.DEFER || ' -> ' || :NEW.DEFER || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_CDEF$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_cdef$_audit_delete
    AFTER DELETE ON LOGMNR_CDEF$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.CON# || ', ' || '{col}=' || :OLD.COLS || ', ' || '{col}=' || :OLD.TYPE# || ', ' || '{col}=' || :OLD.ROBJ# || ', ' || '{col}=' || :OLD.RCON# || ', ' || '{col}=' || :OLD.ENABLED || ', ' || '{col}=' || :OLD.DEFER || ', ' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_CDEF$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_ccol$_audit_insert
    AFTER INSERT ON LOGMNR_CCOL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.CON# || ', ' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.COL# || ', ' || '{col}=' || :NEW.POS# || ', ' || '{col}=' || :NEW.INTCOL# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_CCOL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_ccol$_audit_update
    AFTER UPDATE ON LOGMNR_CCOL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.CON# || ' -> ' || :NEW.CON# || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.COL# || ' -> ' || :NEW.COL# || ', ' || '{col}=' || :OLD.POS# || ' -> ' || :NEW.POS# || ', ' || '{col}=' || :OLD.INTCOL# || ' -> ' || :NEW.INTCOL# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_CCOL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_ccol$_audit_delete
    AFTER DELETE ON LOGMNR_CCOL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.CON# || ', ' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.COL# || ', ' || '{col}=' || :OLD.POS# || ', ' || '{col}=' || :OLD.INTCOL# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_CCOL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_icol$_audit_insert
    AFTER INSERT ON LOGMNR_ICOL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.BO# || ', ' || '{col}=' || :NEW.COL# || ', ' || '{col}=' || :NEW.POS# || ', ' || '{col}=' || :NEW.SEGCOL# || ', ' || '{col}=' || :NEW.INTCOL# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_ICOL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_icol$_audit_update
    AFTER UPDATE ON LOGMNR_ICOL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.BO# || ' -> ' || :NEW.BO# || ', ' || '{col}=' || :OLD.COL# || ' -> ' || :NEW.COL# || ', ' || '{col}=' || :OLD.POS# || ' -> ' || :NEW.POS# || ', ' || '{col}=' || :OLD.SEGCOL# || ' -> ' || :NEW.SEGCOL# || ', ' || '{col}=' || :OLD.INTCOL# || ' -> ' || :NEW.INTCOL# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_ICOL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_icol$_audit_delete
    AFTER DELETE ON LOGMNR_ICOL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.BO# || ', ' || '{col}=' || :OLD.COL# || ', ' || '{col}=' || :OLD.POS# || ', ' || '{col}=' || :OLD.SEGCOL# || ', ' || '{col}=' || :OLD.INTCOL# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_ICOL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_lobfrag$_audit_insert
    AFTER INSERT ON LOGMNR_LOBFRAG$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.FRAGOBJ# || ', ' || '{col}=' || :NEW.PARENTOBJ# || ', ' || '{col}=' || :NEW.TABFRAGOBJ# || ', ' || '{col}=' || :NEW.INDFRAGOBJ# || ', ' || '{col}=' || :NEW.FRAG# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_LOBFRAG$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_lobfrag$_audit_update
    AFTER UPDATE ON LOGMNR_LOBFRAG$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.FRAGOBJ# || ' -> ' || :NEW.FRAGOBJ# || ', ' || '{col}=' || :OLD.PARENTOBJ# || ' -> ' || :NEW.PARENTOBJ# || ', ' || '{col}=' || :OLD.TABFRAGOBJ# || ' -> ' || :NEW.TABFRAGOBJ# || ', ' || '{col}=' || :OLD.INDFRAGOBJ# || ' -> ' || :NEW.INDFRAGOBJ# || ', ' || '{col}=' || :OLD.FRAG# || ' -> ' || :NEW.FRAG# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_LOBFRAG$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_lobfrag$_audit_delete
    AFTER DELETE ON LOGMNR_LOBFRAG$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.FRAGOBJ# || ', ' || '{col}=' || :OLD.PARENTOBJ# || ', ' || '{col}=' || :OLD.TABFRAGOBJ# || ', ' || '{col}=' || :OLD.INDFRAGOBJ# || ', ' || '{col}=' || :OLD.FRAG# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_LOBFRAG$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_indpart$_audit_insert
    AFTER INSERT ON LOGMNR_INDPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.BO# || ', ' || '{col}=' || :NEW.PART# || ', ' || '{col}=' || :NEW.TS# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_INDPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_indpart$_audit_update
    AFTER UPDATE ON LOGMNR_INDPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.BO# || ' -> ' || :NEW.BO# || ', ' || '{col}=' || :OLD.PART# || ' -> ' || :NEW.PART# || ', ' || '{col}=' || :OLD.TS# || ' -> ' || :NEW.TS# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_INDPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_indpart$_audit_delete
    AFTER DELETE ON LOGMNR_INDPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.BO# || ', ' || '{col}=' || :OLD.PART# || ', ' || '{col}=' || :OLD.TS# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_INDPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_indsubpart$_audit_insert
    AFTER INSERT ON LOGMNR_INDSUBPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.DATAOBJ# || ', ' || '{col}=' || :NEW.POBJ# || ', ' || '{col}=' || :NEW.SUBPART# || ', ' || '{col}=' || :NEW.TS# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_INDSUBPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_indsubpart$_audit_update
    AFTER UPDATE ON LOGMNR_INDSUBPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.DATAOBJ# || ' -> ' || :NEW.DATAOBJ# || ', ' || '{col}=' || :OLD.POBJ# || ' -> ' || :NEW.POBJ# || ', ' || '{col}=' || :OLD.SUBPART# || ' -> ' || :NEW.SUBPART# || ', ' || '{col}=' || :OLD.TS# || ' -> ' || :NEW.TS# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_INDSUBPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_indsubpart$_audit_delete
    AFTER DELETE ON LOGMNR_INDSUBPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.DATAOBJ# || ', ' || '{col}=' || :OLD.POBJ# || ', ' || '{col}=' || :OLD.SUBPART# || ', ' || '{col}=' || :OLD.TS# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_INDSUBPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_indcompart$_audit_insert
    AFTER INSERT ON LOGMNR_INDCOMPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.DATAOBJ# || ', ' || '{col}=' || :NEW.BO# || ', ' || '{col}=' || :NEW.PART# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_INDCOMPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_indcompart$_audit_update
    AFTER UPDATE ON LOGMNR_INDCOMPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.DATAOBJ# || ' -> ' || :NEW.DATAOBJ# || ', ' || '{col}=' || :OLD.BO# || ' -> ' || :NEW.BO# || ', ' || '{col}=' || :OLD.PART# || ' -> ' || :NEW.PART# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_INDCOMPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_indcompart$_audit_delete
    AFTER DELETE ON LOGMNR_INDCOMPART$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.DATAOBJ# || ', ' || '{col}=' || :OLD.BO# || ', ' || '{col}=' || :OLD.PART# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_INDCOMPART$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_logmnr_buildlog_audit_insert
    AFTER INSERT ON LOGMNR_LOGMNR_BUILDLOG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.BUILD_DATE || ', ' || '{col}=' || :NEW.DB_TXN_SCNBAS || ', ' || '{col}=' || :NEW.DB_TXN_SCNWRP || ', ' || '{col}=' || :NEW.CURRENT_BUILD_STATE || ', ' || '{col}=' || :NEW.COMPLETION_STATUS || ', ' || '{col}=' || :NEW.MARKED_LOG_FILE_LOW_SCN || ', ' || '{col}=' || :NEW.INITIAL_XID || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :NEW.CDB_XID || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_LOGMNR_BUILDLOG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_logmnr_buildlog_audit_update
    AFTER UPDATE ON LOGMNR_LOGMNR_BUILDLOG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.BUILD_DATE || ' -> ' || :NEW.BUILD_DATE || ', ' || '{col}=' || :OLD.DB_TXN_SCNBAS || ' -> ' || :NEW.DB_TXN_SCNBAS || ', ' || '{col}=' || :OLD.DB_TXN_SCNWRP || ' -> ' || :NEW.DB_TXN_SCNWRP || ', ' || '{col}=' || :OLD.CURRENT_BUILD_STATE || ' -> ' || :NEW.CURRENT_BUILD_STATE || ', ' || '{col}=' || :OLD.COMPLETION_STATUS || ' -> ' || :NEW.COMPLETION_STATUS || ', ' || '{col}=' || :OLD.MARKED_LOG_FILE_LOW_SCN || ' -> ' || :NEW.MARKED_LOG_FILE_LOW_SCN || ', ' || '{col}=' || :OLD.INITIAL_XID || ' -> ' || :NEW.INITIAL_XID || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.CDB_XID || ' -> ' || :NEW.CDB_XID || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_LOGMNR_BUILDLOG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_logmnr_buildlog_audit_delete
    AFTER DELETE ON LOGMNR_LOGMNR_BUILDLOG
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.BUILD_DATE || ', ' || '{col}=' || :OLD.DB_TXN_SCNBAS || ', ' || '{col}=' || :OLD.DB_TXN_SCNWRP || ', ' || '{col}=' || :OLD.CURRENT_BUILD_STATE || ', ' || '{col}=' || :OLD.COMPLETION_STATUS || ', ' || '{col}=' || :OLD.MARKED_LOG_FILE_LOW_SCN || ', ' || '{col}=' || :OLD.INITIAL_XID || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.CDB_XID || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_LOGMNR_BUILDLOG',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_ntab$_audit_insert
    AFTER INSERT ON LOGMNR_NTAB$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.COL# || ', ' || '{col}=' || :NEW.INTCOL# || ', ' || '{col}=' || :NEW.NTAB# || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_NTAB$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_ntab$_audit_update
    AFTER UPDATE ON LOGMNR_NTAB$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.COL# || ' -> ' || :NEW.COL# || ', ' || '{col}=' || :OLD.INTCOL# || ' -> ' || :NEW.INTCOL# || ', ' || '{col}=' || :OLD.NTAB# || ' -> ' || :NEW.NTAB# || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_NTAB$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_ntab$_audit_delete
    AFTER DELETE ON LOGMNR_NTAB$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.COL# || ', ' || '{col}=' || :OLD.INTCOL# || ', ' || '{col}=' || :OLD.NTAB# || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_NTAB$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_opqtype$_audit_insert
    AFTER INSERT ON LOGMNR_OPQTYPE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.INTCOL# || ', ' || '{col}=' || :NEW.TYPE || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.LOBCOL || ', ' || '{col}=' || :NEW.OBJCOL || ', ' || '{col}=' || :NEW.EXTRACOL || ', ' || '{col}=' || :NEW.SCHEMAOID || ', ' || '{col}=' || :NEW.ELEMNUM || ', ' || '{col}=' || :NEW.SCHEMAURL || ', ' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_OPQTYPE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_opqtype$_audit_update
    AFTER UPDATE ON LOGMNR_OPQTYPE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.INTCOL# || ' -> ' || :NEW.INTCOL# || ', ' || '{col}=' || :OLD.TYPE || ' -> ' || :NEW.TYPE || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.LOBCOL || ' -> ' || :NEW.LOBCOL || ', ' || '{col}=' || :OLD.OBJCOL || ' -> ' || :NEW.OBJCOL || ', ' || '{col}=' || :OLD.EXTRACOL || ' -> ' || :NEW.EXTRACOL || ', ' || '{col}=' || :OLD.SCHEMAOID || ' -> ' || :NEW.SCHEMAOID || ', ' || '{col}=' || :OLD.ELEMNUM || ' -> ' || :NEW.ELEMNUM || ', ' || '{col}=' || :OLD.SCHEMAURL || ' -> ' || :NEW.SCHEMAURL || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_OPQTYPE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_opqtype$_audit_delete
    AFTER DELETE ON LOGMNR_OPQTYPE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.INTCOL# || ', ' || '{col}=' || :OLD.TYPE || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.LOBCOL || ', ' || '{col}=' || :OLD.OBJCOL || ', ' || '{col}=' || :OLD.EXTRACOL || ', ' || '{col}=' || :OLD.SCHEMAOID || ', ' || '{col}=' || :OLD.ELEMNUM || ', ' || '{col}=' || :OLD.SCHEMAURL || ', ' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_OPQTYPE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_subcoltype$_audit_insert
    AFTER INSERT ON LOGMNR_SUBCOLTYPE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.INTCOL# || ', ' || '{col}=' || :NEW.TOID || ', ' || '{col}=' || :NEW.VERSION# || ', ' || '{col}=' || :NEW.INTCOLS || ', ' || '{col}=' || :NEW.INTCOL#S || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.SYNOBJ# || ', ' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SUBCOLTYPE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_subcoltype$_audit_update
    AFTER UPDATE ON LOGMNR_SUBCOLTYPE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.INTCOL# || ' -> ' || :NEW.INTCOL# || ', ' || '{col}=' || :OLD.TOID || ' -> ' || :NEW.TOID || ', ' || '{col}=' || :OLD.VERSION# || ' -> ' || :NEW.VERSION# || ', ' || '{col}=' || :OLD.INTCOLS || ' -> ' || :NEW.INTCOLS || ', ' || '{col}=' || :OLD.INTCOL#S || ' -> ' || :NEW.INTCOL#S || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.SYNOBJ# || ' -> ' || :NEW.SYNOBJ# || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SUBCOLTYPE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_subcoltype$_audit_delete
    AFTER DELETE ON LOGMNR_SUBCOLTYPE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.INTCOL# || ', ' || '{col}=' || :OLD.TOID || ', ' || '{col}=' || :OLD.VERSION# || ', ' || '{col}=' || :OLD.INTCOLS || ', ' || '{col}=' || :OLD.INTCOL#S || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.SYNOBJ# || ', ' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SUBCOLTYPE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_kopm$_audit_insert
    AFTER INSERT ON LOGMNR_KOPM$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.LENGTH || ', ' || '{col}=' || :NEW.METADATA || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_KOPM$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_kopm$_audit_update
    AFTER UPDATE ON LOGMNR_KOPM$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.LENGTH || ' -> ' || :NEW.LENGTH || ', ' || '{col}=' || :OLD.METADATA || ' -> ' || :NEW.METADATA || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_KOPM$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_kopm$_audit_delete
    AFTER DELETE ON LOGMNR_KOPM$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.LENGTH || ', ' || '{col}=' || :OLD.METADATA || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_KOPM$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_props$_audit_insert
    AFTER INSERT ON LOGMNR_PROPS$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.VALUE$ || ', ' || '{col}=' || :NEW.COMMENT$ || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PROPS$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_props$_audit_update
    AFTER UPDATE ON LOGMNR_PROPS$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.VALUE$ || ' -> ' || :NEW.VALUE$ || ', ' || '{col}=' || :OLD.COMMENT$ || ' -> ' || :NEW.COMMENT$ || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PROPS$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_props$_audit_delete
    AFTER DELETE ON LOGMNR_PROPS$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.VALUE$ || ', ' || '{col}=' || :OLD.COMMENT$ || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PROPS$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_enc$_audit_insert
    AFTER INSERT ON LOGMNR_ENC$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.OWNER# || ', ' || '{col}=' || :NEW.ENCALG || ', ' || '{col}=' || :NEW.INTALG || ', ' || '{col}=' || :NEW.COLKLC || ', ' || '{col}=' || :NEW.KLCLEN || ', ' || '{col}=' || :NEW.FLAG || ', ' || '{col}=' || :NEW.MKEYID || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_ENC$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_enc$_audit_update
    AFTER UPDATE ON LOGMNR_ENC$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.OWNER# || ' -> ' || :NEW.OWNER# || ', ' || '{col}=' || :OLD.ENCALG || ' -> ' || :NEW.ENCALG || ', ' || '{col}=' || :OLD.INTALG || ' -> ' || :NEW.INTALG || ', ' || '{col}=' || :OLD.COLKLC || ' -> ' || :NEW.COLKLC || ', ' || '{col}=' || :OLD.KLCLEN || ' -> ' || :NEW.KLCLEN || ', ' || '{col}=' || :OLD.FLAG || ' -> ' || :NEW.FLAG || ', ' || '{col}=' || :OLD.MKEYID || ' -> ' || :NEW.MKEYID || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_ENC$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_enc$_audit_delete
    AFTER DELETE ON LOGMNR_ENC$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.OWNER# || ', ' || '{col}=' || :OLD.ENCALG || ', ' || '{col}=' || :OLD.INTALG || ', ' || '{col}=' || :OLD.COLKLC || ', ' || '{col}=' || :OLD.KLCLEN || ', ' || '{col}=' || :OLD.FLAG || ', ' || '{col}=' || :OLD.MKEYID || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_ENC$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_refcon$_audit_insert
    AFTER INSERT ON LOGMNR_REFCON$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.COL# || ', ' || '{col}=' || :NEW.INTCOL# || ', ' || '{col}=' || :NEW.REFTYP || ', ' || '{col}=' || :NEW.STABID || ', ' || '{col}=' || :NEW.EXPCTOID || ', ' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_REFCON$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_refcon$_audit_update
    AFTER UPDATE ON LOGMNR_REFCON$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.COL# || ' -> ' || :NEW.COL# || ', ' || '{col}=' || :OLD.INTCOL# || ' -> ' || :NEW.INTCOL# || ', ' || '{col}=' || :OLD.REFTYP || ' -> ' || :NEW.REFTYP || ', ' || '{col}=' || :OLD.STABID || ' -> ' || :NEW.STABID || ', ' || '{col}=' || :OLD.EXPCTOID || ' -> ' || :NEW.EXPCTOID || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_REFCON$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_refcon$_audit_delete
    AFTER DELETE ON LOGMNR_REFCON$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.COL# || ', ' || '{col}=' || :OLD.INTCOL# || ', ' || '{col}=' || :OLD.REFTYP || ', ' || '{col}=' || :OLD.STABID || ', ' || '{col}=' || :OLD.EXPCTOID || ', ' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_REFCON$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_idnseq$_audit_insert
    AFTER INSERT ON LOGMNR_IDNSEQ$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.INTCOL# || ', ' || '{col}=' || :NEW.SEQOBJ# || ', ' || '{col}=' || :NEW.STARTWITH || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_IDNSEQ$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_idnseq$_audit_update
    AFTER UPDATE ON LOGMNR_IDNSEQ$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.INTCOL# || ' -> ' || :NEW.INTCOL# || ', ' || '{col}=' || :OLD.SEQOBJ# || ' -> ' || :NEW.SEQOBJ# || ', ' || '{col}=' || :OLD.STARTWITH || ' -> ' || :NEW.STARTWITH || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_IDNSEQ$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_idnseq$_audit_delete
    AFTER DELETE ON LOGMNR_IDNSEQ$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.INTCOL# || ', ' || '{col}=' || :OLD.SEQOBJ# || ', ' || '{col}=' || :OLD.STARTWITH || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_IDNSEQ$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_partobj$_audit_insert
    AFTER INSERT ON LOGMNR_PARTOBJ$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.PARTKEYCOLS || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.DEFTS# || ', ' || '{col}=' || :NEW.DEFPCTFREE || ', ' || '{col}=' || :NEW.DEFPCTUSED || ', ' || '{col}=' || :NEW.DEFPCTTHRES || ', ' || '{col}=' || :NEW.DEFINITRANS || ', ' || '{col}=' || :NEW.DEFMAXTRANS || ', ' || '{col}=' || :NEW.DEFTINIEXTS || ', ' || '{col}=' || :NEW.DEFEXTSIZE || ', ' || '{col}=' || :NEW.DEFMINEXTS || ', ' || '{col}=' || :NEW.DEFMAXEXTS || ', ' || '{col}=' || :NEW.DEFEXTPCT || ', ' || '{col}=' || :NEW.DEFLISTS || ', ' || '{col}=' || :NEW.DEFGROUPS || ', ' || '{col}=' || :NEW.DEFLOGGING || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3 || ', ' || '{col}=' || :NEW.DEFINCLCOL || ', ' || '{col}=' || :NEW.PARAMETERS || ', ' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :NEW.PARTTYPE || ', ' || '{col}=' || :NEW.PARTCNT;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PARTOBJ$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_partobj$_audit_update
    AFTER UPDATE ON LOGMNR_PARTOBJ$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.PARTKEYCOLS || ' -> ' || :NEW.PARTKEYCOLS || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.DEFTS# || ' -> ' || :NEW.DEFTS# || ', ' || '{col}=' || :OLD.DEFPCTFREE || ' -> ' || :NEW.DEFPCTFREE || ', ' || '{col}=' || :OLD.DEFPCTUSED || ' -> ' || :NEW.DEFPCTUSED || ', ' || '{col}=' || :OLD.DEFPCTTHRES || ' -> ' || :NEW.DEFPCTTHRES || ', ' || '{col}=' || :OLD.DEFINITRANS || ' -> ' || :NEW.DEFINITRANS || ', ' || '{col}=' || :OLD.DEFMAXTRANS || ' -> ' || :NEW.DEFMAXTRANS || ', ' || '{col}=' || :OLD.DEFTINIEXTS || ' -> ' || :NEW.DEFTINIEXTS || ', ' || '{col}=' || :OLD.DEFEXTSIZE || ' -> ' || :NEW.DEFEXTSIZE || ', ' || '{col}=' || :OLD.DEFMINEXTS || ' -> ' || :NEW.DEFMINEXTS || ', ' || '{col}=' || :OLD.DEFMAXEXTS || ' -> ' || :NEW.DEFMAXEXTS || ', ' || '{col}=' || :OLD.DEFEXTPCT || ' -> ' || :NEW.DEFEXTPCT || ', ' || '{col}=' || :OLD.DEFLISTS || ' -> ' || :NEW.DEFLISTS || ', ' || '{col}=' || :OLD.DEFGROUPS || ' -> ' || :NEW.DEFGROUPS || ', ' || '{col}=' || :OLD.DEFLOGGING || ' -> ' || :NEW.DEFLOGGING || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3 || ', ' || '{col}=' || :OLD.DEFINCLCOL || ' -> ' || :NEW.DEFINCLCOL || ', ' || '{col}=' || :OLD.PARAMETERS || ' -> ' || :NEW.PARAMETERS || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ' -> ' || :NEW.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.PARTTYPE || ' -> ' || :NEW.PARTTYPE || ', ' || '{col}=' || :OLD.PARTCNT || ' -> ' || :NEW.PARTCNT;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PARTOBJ$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_partobj$_audit_delete
    AFTER DELETE ON LOGMNR_PARTOBJ$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.PARTKEYCOLS || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.DEFTS# || ', ' || '{col}=' || :OLD.DEFPCTFREE || ', ' || '{col}=' || :OLD.DEFPCTUSED || ', ' || '{col}=' || :OLD.DEFPCTTHRES || ', ' || '{col}=' || :OLD.DEFINITRANS || ', ' || '{col}=' || :OLD.DEFMAXTRANS || ', ' || '{col}=' || :OLD.DEFTINIEXTS || ', ' || '{col}=' || :OLD.DEFEXTSIZE || ', ' || '{col}=' || :OLD.DEFMINEXTS || ', ' || '{col}=' || :OLD.DEFMAXEXTS || ', ' || '{col}=' || :OLD.DEFEXTPCT || ', ' || '{col}=' || :OLD.DEFLISTS || ', ' || '{col}=' || :OLD.DEFGROUPS || ', ' || '{col}=' || :OLD.DEFLOGGING || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ', ' || '{col}=' || :OLD.DEFINCLCOL || ', ' || '{col}=' || :OLD.PARAMETERS || ', ' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.LOGMNR_FLAGS || ', ' || '{col}=' || :OLD.PARTTYPE || ', ' || '{col}=' || :OLD.PARTCNT;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PARTOBJ$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrp_ctas_part_map_audit_insert
    AFTER INSERT ON LOGMNRP_CTAS_PART_MAP
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.BASEOBJ# || ', ' || '{col}=' || :NEW.BASEOBJV# || ', ' || '{col}=' || :NEW.KEYOBJ# || ', ' || '{col}=' || :NEW.PART# || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRP_CTAS_PART_MAP',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrp_ctas_part_map_audit_update
    AFTER UPDATE ON LOGMNRP_CTAS_PART_MAP
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.BASEOBJ# || ' -> ' || :NEW.BASEOBJ# || ', ' || '{col}=' || :OLD.BASEOBJV# || ' -> ' || :NEW.BASEOBJV# || ', ' || '{col}=' || :OLD.KEYOBJ# || ' -> ' || :NEW.KEYOBJ# || ', ' || '{col}=' || :OLD.PART# || ' -> ' || :NEW.PART# || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRP_CTAS_PART_MAP',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrp_ctas_part_map_audit_delete
    AFTER DELETE ON LOGMNRP_CTAS_PART_MAP
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.BASEOBJ# || ', ' || '{col}=' || :OLD.BASEOBJV# || ', ' || '{col}=' || :OLD.KEYOBJ# || ', ' || '{col}=' || :OLD.PART# || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRP_CTAS_PART_MAP',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_shard_ts_audit_insert
    AFTER INSERT ON LOGMNR_SHARD_TS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.TABLESPACE_NAME || ', ' || '{col}=' || :NEW.CHUNK_NUMBER || ', ' || '{col}=' || :NEW.START_SCNBAS || ', ' || '{col}=' || :NEW.START_SCNWRP;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SHARD_TS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_shard_ts_audit_update
    AFTER UPDATE ON LOGMNR_SHARD_TS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.TABLESPACE_NAME || ' -> ' || :NEW.TABLESPACE_NAME || ', ' || '{col}=' || :OLD.CHUNK_NUMBER || ' -> ' || :NEW.CHUNK_NUMBER || ', ' || '{col}=' || :OLD.START_SCNBAS || ' -> ' || :NEW.START_SCNBAS || ', ' || '{col}=' || :OLD.START_SCNWRP || ' -> ' || :NEW.START_SCNWRP;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SHARD_TS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_shard_ts_audit_delete
    AFTER DELETE ON LOGMNR_SHARD_TS
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.TABLESPACE_NAME || ', ' || '{col}=' || :OLD.CHUNK_NUMBER || ', ' || '{col}=' || :OLD.START_SCNBAS || ', ' || '{col}=' || :OLD.START_SCNWRP;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SHARD_TS',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_session_evolve$_audit_insert
    AFTER INSERT ON LOGMNR_SESSION_EVOLVE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.SESSION# || ', Datos=' || '{col}=' || :NEW.BRANCH_LEVEL || ', ' || '{col}=' || :NEW.DB_ID || ', ' || '{col}=' || :NEW.RESET_SCN || ', ' || '{col}=' || :NEW.RESET_TIMESTAMP || ', ' || '{col}=' || :NEW.PREV_RESET_SCN || ', ' || '{col}=' || :NEW.PREV_RESET_TIMESTAMP || ', ' || '{col}=' || :NEW.STATUS || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3 || ', ' || '{col}=' || :NEW.SPARE4;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SESSION_EVOLVE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_session_evolve$_audit_update
    AFTER UPDATE ON LOGMNR_SESSION_EVOLVE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.SESSION# || ' -> ' || :NEW.SESSION# || ', Datos=' || '{col}=' || :OLD.BRANCH_LEVEL || ' -> ' || :NEW.BRANCH_LEVEL || ', ' || '{col}=' || :OLD.DB_ID || ' -> ' || :NEW.DB_ID || ', ' || '{col}=' || :OLD.RESET_SCN || ' -> ' || :NEW.RESET_SCN || ', ' || '{col}=' || :OLD.RESET_TIMESTAMP || ' -> ' || :NEW.RESET_TIMESTAMP || ', ' || '{col}=' || :OLD.PREV_RESET_SCN || ' -> ' || :NEW.PREV_RESET_SCN || ', ' || '{col}=' || :OLD.PREV_RESET_TIMESTAMP || ' -> ' || :NEW.PREV_RESET_TIMESTAMP || ', ' || '{col}=' || :OLD.STATUS || ' -> ' || :NEW.STATUS || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ' -> ' || :NEW.SPARE4;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SESSION_EVOLVE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_session_evolve$_audit_delete
    AFTER DELETE ON LOGMNR_SESSION_EVOLVE$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.SESSION# || ', Datos=' || '{col}=' || :OLD.BRANCH_LEVEL || ', ' || '{col}=' || :OLD.DB_ID || ', ' || '{col}=' || :OLD.RESET_SCN || ', ' || '{col}=' || :OLD.RESET_TIMESTAMP || ', ' || '{col}=' || :OLD.PREV_RESET_SCN || ', ' || '{col}=' || :OLD.PREV_RESET_TIMESTAMP || ', ' || '{col}=' || :OLD.STATUS || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SESSION_EVOLVE$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_pdb_info$_audit_insert
    AFTER INSERT ON LOGMNR_PDB_INFO$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_DID || ', Datos=' || '{col}=' || :NEW.SPARE3 || ', ' || '{col}=' || :NEW.SPARE4 || ', ' || '{col}=' || :NEW.PDB_GLOBAL_NAME || ', ' || '{col}=' || :NEW.LOGMNR_MDH || ', ' || '{col}=' || :NEW.PDB_NAME || ', ' || '{col}=' || :NEW.PDB_ID || ', ' || '{col}=' || :NEW.PDB_UID || ', ' || '{col}=' || :NEW.PLUGIN_SCN || ', ' || '{col}=' || :NEW.UNPLUG_SCN || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PDB_INFO$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_pdb_info$_audit_update
    AFTER UPDATE ON LOGMNR_PDB_INFO$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_DID || ' -> ' || :NEW.LOGMNR_DID || ', Datos=' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ' -> ' || :NEW.SPARE4 || ', ' || '{col}=' || :OLD.PDB_GLOBAL_NAME || ' -> ' || :NEW.PDB_GLOBAL_NAME || ', ' || '{col}=' || :OLD.LOGMNR_MDH || ' -> ' || :NEW.LOGMNR_MDH || ', ' || '{col}=' || :OLD.PDB_NAME || ' -> ' || :NEW.PDB_NAME || ', ' || '{col}=' || :OLD.PDB_ID || ' -> ' || :NEW.PDB_ID || ', ' || '{col}=' || :OLD.PDB_UID || ' -> ' || :NEW.PDB_UID || ', ' || '{col}=' || :OLD.PLUGIN_SCN || ' -> ' || :NEW.PLUGIN_SCN || ', ' || '{col}=' || :OLD.UNPLUG_SCN || ' -> ' || :NEW.UNPLUG_SCN || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PDB_INFO$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_pdb_info$_audit_delete
    AFTER DELETE ON LOGMNR_PDB_INFO$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_DID || ', Datos=' || '{col}=' || :OLD.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ', ' || '{col}=' || :OLD.PDB_GLOBAL_NAME || ', ' || '{col}=' || :OLD.LOGMNR_MDH || ', ' || '{col}=' || :OLD.PDB_NAME || ', ' || '{col}=' || :OLD.PDB_ID || ', ' || '{col}=' || :OLD.PDB_UID || ', ' || '{col}=' || :OLD.PLUGIN_SCN || ', ' || '{col}=' || :OLD.UNPLUG_SCN || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PDB_INFO$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_did$_audit_insert
    AFTER INSERT ON LOGMNR_DID$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.SESSION# || ', Datos=' || '{col}=' || :NEW.LOGMNR_DID || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3 || ', ' || '{col}=' || :NEW.SPARE4;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_DID$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_did$_audit_update
    AFTER UPDATE ON LOGMNR_DID$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.SESSION# || ' -> ' || :NEW.SESSION# || ', Datos=' || '{col}=' || :OLD.LOGMNR_DID || ' -> ' || :NEW.LOGMNR_DID || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ' -> ' || :NEW.SPARE4;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_DID$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_did$_audit_delete
    AFTER DELETE ON LOGMNR_DID$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.SESSION# || ', Datos=' || '{col}=' || :OLD.LOGMNR_DID || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_DID$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_uid$_audit_insert
    AFTER INSERT ON LOGMNR_UID$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :NEW.LOGMNR_DID || ', ' || '{col}=' || :NEW.LOGMNR_MDH || ', ' || '{col}=' || :NEW.PDB_NAME || ', ' || '{col}=' || :NEW.PDB_ID || ', ' || '{col}=' || :NEW.PDB_UID || ', ' || '{col}=' || :NEW.START_SCN || ', ' || '{col}=' || :NEW.END_SCN || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3 || ', ' || '{col}=' || :NEW.SPARE4;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_UID$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_uid$_audit_update
    AFTER UPDATE ON LOGMNR_UID$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.LOGMNR_DID || ' -> ' || :NEW.LOGMNR_DID || ', ' || '{col}=' || :OLD.LOGMNR_MDH || ' -> ' || :NEW.LOGMNR_MDH || ', ' || '{col}=' || :OLD.PDB_NAME || ' -> ' || :NEW.PDB_NAME || ', ' || '{col}=' || :OLD.PDB_ID || ' -> ' || :NEW.PDB_ID || ', ' || '{col}=' || :OLD.PDB_UID || ' -> ' || :NEW.PDB_UID || ', ' || '{col}=' || :OLD.START_SCN || ' -> ' || :NEW.START_SCN || ', ' || '{col}=' || :OLD.END_SCN || ' -> ' || :NEW.END_SCN || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ' -> ' || :NEW.SPARE4;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_UID$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_uid$_audit_delete
    AFTER DELETE ON LOGMNR_UID$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNR_UID || ', Datos=' || '{col}=' || :OLD.LOGMNR_DID || ', ' || '{col}=' || :OLD.LOGMNR_MDH || ', ' || '{col}=' || :OLD.PDB_NAME || ', ' || '{col}=' || :OLD.PDB_ID || ', ' || '{col}=' || :OLD.PDB_UID || ', ' || '{col}=' || :OLD.START_SCN || ', ' || '{col}=' || :OLD.END_SCN || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_UID$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_dbname_uid_map_audit_insert
    AFTER INSERT ON LOGMNRC_DBNAME_UID_MAP
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.GLOBAL_NAME || ', Datos=' || '{col}=' || :NEW.LOGMNR_UID || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.PDB_NAME || ', ' || '{col}=' || :NEW.LOGMNR_MDH;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_DBNAME_UID_MAP',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_dbname_uid_map_audit_update
    AFTER UPDATE ON LOGMNRC_DBNAME_UID_MAP
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.GLOBAL_NAME || ' -> ' || :NEW.GLOBAL_NAME || ', Datos=' || '{col}=' || :OLD.LOGMNR_UID || ' -> ' || :NEW.LOGMNR_UID || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.PDB_NAME || ' -> ' || :NEW.PDB_NAME || ', ' || '{col}=' || :OLD.LOGMNR_MDH || ' -> ' || :NEW.LOGMNR_MDH;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_DBNAME_UID_MAP',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnrc_dbname_uid_map_audit_delete
    AFTER DELETE ON LOGMNRC_DBNAME_UID_MAP
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.GLOBAL_NAME || ', Datos=' || '{col}=' || :OLD.LOGMNR_UID || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.PDB_NAME || ', ' || '{col}=' || :OLD.LOGMNR_MDH;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNRC_DBNAME_UID_MAP',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_log$_audit_insert
    AFTER INSERT ON LOGMNR_LOG$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.SESSION# || ', Datos=' || '{col}=' || :NEW.DB_ID || ', ' || '{col}=' || :NEW.RESETLOGS_CHANGE# || ', ' || '{col}=' || :NEW.RESET_TIMESTAMP || ', ' || '{col}=' || :NEW.PREV_RESETLOGS_CHANGE# || ', ' || '{col}=' || :NEW.PREV_RESET_TIMESTAMP || ', ' || '{col}=' || :NEW.BLOCKS || ', ' || '{col}=' || :NEW.BLOCK_SIZE || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.CONTENTS || ', ' || '{col}=' || :NEW.RECID || ', ' || '{col}=' || :NEW.RECSTAMP || ', ' || '{col}=' || :NEW.MARK_DELETE_TIMESTAMP || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3 || ', ' || '{col}=' || :NEW.SPARE4 || ', ' || '{col}=' || :NEW.SPARE5 || ', ' || '{col}=' || :NEW.THREAD# || ', ' || '{col}=' || :NEW.SEQUENCE# || ', ' || '{col}=' || :NEW.FIRST_CHANGE# || ', ' || '{col}=' || :NEW.NEXT_CHANGE# || ', ' || '{col}=' || :NEW.FIRST_TIME || ', ' || '{col}=' || :NEW.NEXT_TIME || ', ' || '{col}=' || :NEW.FILE_NAME || ', ' || '{col}=' || :NEW.STATUS || ', ' || '{col}=' || :NEW.INFO || ', ' || '{col}=' || :NEW.TIMESTAMP || ', ' || '{col}=' || :NEW.DICT_BEGIN || ', ' || '{col}=' || :NEW.DICT_END || ', ' || '{col}=' || :NEW.STATUS_INFO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_LOG$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_log$_audit_update
    AFTER UPDATE ON LOGMNR_LOG$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.SESSION# || ' -> ' || :NEW.SESSION# || ', Datos=' || '{col}=' || :OLD.DB_ID || ' -> ' || :NEW.DB_ID || ', ' || '{col}=' || :OLD.RESETLOGS_CHANGE# || ' -> ' || :NEW.RESETLOGS_CHANGE# || ', ' || '{col}=' || :OLD.RESET_TIMESTAMP || ' -> ' || :NEW.RESET_TIMESTAMP || ', ' || '{col}=' || :OLD.PREV_RESETLOGS_CHANGE# || ' -> ' || :NEW.PREV_RESETLOGS_CHANGE# || ', ' || '{col}=' || :OLD.PREV_RESET_TIMESTAMP || ' -> ' || :NEW.PREV_RESET_TIMESTAMP || ', ' || '{col}=' || :OLD.BLOCKS || ' -> ' || :NEW.BLOCKS || ', ' || '{col}=' || :OLD.BLOCK_SIZE || ' -> ' || :NEW.BLOCK_SIZE || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.CONTENTS || ' -> ' || :NEW.CONTENTS || ', ' || '{col}=' || :OLD.RECID || ' -> ' || :NEW.RECID || ', ' || '{col}=' || :OLD.RECSTAMP || ' -> ' || :NEW.RECSTAMP || ', ' || '{col}=' || :OLD.MARK_DELETE_TIMESTAMP || ' -> ' || :NEW.MARK_DELETE_TIMESTAMP || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ' -> ' || :NEW.SPARE4 || ', ' || '{col}=' || :OLD.SPARE5 || ' -> ' || :NEW.SPARE5 || ', ' || '{col}=' || :OLD.THREAD# || ' -> ' || :NEW.THREAD# || ', ' || '{col}=' || :OLD.SEQUENCE# || ' -> ' || :NEW.SEQUENCE# || ', ' || '{col}=' || :OLD.FIRST_CHANGE# || ' -> ' || :NEW.FIRST_CHANGE# || ', ' || '{col}=' || :OLD.NEXT_CHANGE# || ' -> ' || :NEW.NEXT_CHANGE# || ', ' || '{col}=' || :OLD.FIRST_TIME || ' -> ' || :NEW.FIRST_TIME || ', ' || '{col}=' || :OLD.NEXT_TIME || ' -> ' || :NEW.NEXT_TIME || ', ' || '{col}=' || :OLD.FILE_NAME || ' -> ' || :NEW.FILE_NAME || ', ' || '{col}=' || :OLD.STATUS || ' -> ' || :NEW.STATUS || ', ' || '{col}=' || :OLD.INFO || ' -> ' || :NEW.INFO || ', ' || '{col}=' || :OLD.TIMESTAMP || ' -> ' || :NEW.TIMESTAMP || ', ' || '{col}=' || :OLD.DICT_BEGIN || ' -> ' || :NEW.DICT_BEGIN || ', ' || '{col}=' || :OLD.DICT_END || ' -> ' || :NEW.DICT_END || ', ' || '{col}=' || :OLD.STATUS_INFO || ' -> ' || :NEW.STATUS_INFO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_LOG$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_log$_audit_delete
    AFTER DELETE ON LOGMNR_LOG$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.SESSION# || ', Datos=' || '{col}=' || :OLD.DB_ID || ', ' || '{col}=' || :OLD.RESETLOGS_CHANGE# || ', ' || '{col}=' || :OLD.RESET_TIMESTAMP || ', ' || '{col}=' || :OLD.PREV_RESETLOGS_CHANGE# || ', ' || '{col}=' || :OLD.PREV_RESET_TIMESTAMP || ', ' || '{col}=' || :OLD.BLOCKS || ', ' || '{col}=' || :OLD.BLOCK_SIZE || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.CONTENTS || ', ' || '{col}=' || :OLD.RECID || ', ' || '{col}=' || :OLD.RECSTAMP || ', ' || '{col}=' || :OLD.MARK_DELETE_TIMESTAMP || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ', ' || '{col}=' || :OLD.SPARE5 || ', ' || '{col}=' || :OLD.THREAD# || ', ' || '{col}=' || :OLD.SEQUENCE# || ', ' || '{col}=' || :OLD.FIRST_CHANGE# || ', ' || '{col}=' || :OLD.NEXT_CHANGE# || ', ' || '{col}=' || :OLD.FIRST_TIME || ', ' || '{col}=' || :OLD.NEXT_TIME || ', ' || '{col}=' || :OLD.FILE_NAME || ', ' || '{col}=' || :OLD.STATUS || ', ' || '{col}=' || :OLD.INFO || ', ' || '{col}=' || :OLD.TIMESTAMP || ', ' || '{col}=' || :OLD.DICT_BEGIN || ', ' || '{col}=' || :OLD.DICT_END || ', ' || '{col}=' || :OLD.STATUS_INFO;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_LOG$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_processed_log$_audit_insert
    AFTER INSERT ON LOGMNR_PROCESSED_LOG$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.SESSION# || ', Datos=' || '{col}=' || :NEW.THREAD# || ', ' || '{col}=' || :NEW.SEQUENCE# || ', ' || '{col}=' || :NEW.FIRST_CHANGE# || ', ' || '{col}=' || :NEW.NEXT_CHANGE# || ', ' || '{col}=' || :NEW.FIRST_TIME || ', ' || '{col}=' || :NEW.NEXT_TIME || ', ' || '{col}=' || :NEW.FILE_NAME || ', ' || '{col}=' || :NEW.STATUS || ', ' || '{col}=' || :NEW.INFO || ', ' || '{col}=' || :NEW.TIMESTAMP;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PROCESSED_LOG$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_processed_log$_audit_update
    AFTER UPDATE ON LOGMNR_PROCESSED_LOG$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.SESSION# || ' -> ' || :NEW.SESSION# || ', Datos=' || '{col}=' || :OLD.THREAD# || ' -> ' || :NEW.THREAD# || ', ' || '{col}=' || :OLD.SEQUENCE# || ' -> ' || :NEW.SEQUENCE# || ', ' || '{col}=' || :OLD.FIRST_CHANGE# || ' -> ' || :NEW.FIRST_CHANGE# || ', ' || '{col}=' || :OLD.NEXT_CHANGE# || ' -> ' || :NEW.NEXT_CHANGE# || ', ' || '{col}=' || :OLD.FIRST_TIME || ' -> ' || :NEW.FIRST_TIME || ', ' || '{col}=' || :OLD.NEXT_TIME || ' -> ' || :NEW.NEXT_TIME || ', ' || '{col}=' || :OLD.FILE_NAME || ' -> ' || :NEW.FILE_NAME || ', ' || '{col}=' || :OLD.STATUS || ' -> ' || :NEW.STATUS || ', ' || '{col}=' || :OLD.INFO || ' -> ' || :NEW.INFO || ', ' || '{col}=' || :OLD.TIMESTAMP || ' -> ' || :NEW.TIMESTAMP;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PROCESSED_LOG$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_processed_log$_audit_delete
    AFTER DELETE ON LOGMNR_PROCESSED_LOG$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.SESSION# || ', Datos=' || '{col}=' || :OLD.THREAD# || ', ' || '{col}=' || :OLD.SEQUENCE# || ', ' || '{col}=' || :OLD.FIRST_CHANGE# || ', ' || '{col}=' || :OLD.NEXT_CHANGE# || ', ' || '{col}=' || :OLD.FIRST_TIME || ', ' || '{col}=' || :OLD.NEXT_TIME || ', ' || '{col}=' || :OLD.FILE_NAME || ', ' || '{col}=' || :OLD.STATUS || ', ' || '{col}=' || :OLD.INFO || ', ' || '{col}=' || :OLD.TIMESTAMP;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PROCESSED_LOG$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_spill$_audit_insert
    AFTER INSERT ON LOGMNR_SPILL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.SESSION# || ', Datos=' || '{col}=' || :NEW.XIDUSN || ', ' || '{col}=' || :NEW.XIDSLT || ', ' || '{col}=' || :NEW.XIDSQN || ', ' || '{col}=' || :NEW.CHUNK || ', ' || '{col}=' || :NEW.STARTIDX || ', ' || '{col}=' || :NEW.ENDIDX || ', ' || '{col}=' || :NEW.FLAG || ', ' || '{col}=' || :NEW.SEQUENCE# || ', ' || '{col}=' || :NEW.SPILL_DATA || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.PDBID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SPILL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_spill$_audit_update
    AFTER UPDATE ON LOGMNR_SPILL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.SESSION# || ' -> ' || :NEW.SESSION# || ', Datos=' || '{col}=' || :OLD.XIDUSN || ' -> ' || :NEW.XIDUSN || ', ' || '{col}=' || :OLD.XIDSLT || ' -> ' || :NEW.XIDSLT || ', ' || '{col}=' || :OLD.XIDSQN || ' -> ' || :NEW.XIDSQN || ', ' || '{col}=' || :OLD.CHUNK || ' -> ' || :NEW.CHUNK || ', ' || '{col}=' || :OLD.STARTIDX || ' -> ' || :NEW.STARTIDX || ', ' || '{col}=' || :OLD.ENDIDX || ' -> ' || :NEW.ENDIDX || ', ' || '{col}=' || :OLD.FLAG || ' -> ' || :NEW.FLAG || ', ' || '{col}=' || :OLD.SEQUENCE# || ' -> ' || :NEW.SEQUENCE# || ', ' || '{col}=' || :OLD.SPILL_DATA || ' -> ' || :NEW.SPILL_DATA || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.PDBID || ' -> ' || :NEW.PDBID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SPILL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_spill$_audit_delete
    AFTER DELETE ON LOGMNR_SPILL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.SESSION# || ', Datos=' || '{col}=' || :OLD.XIDUSN || ', ' || '{col}=' || :OLD.XIDSLT || ', ' || '{col}=' || :OLD.XIDSQN || ', ' || '{col}=' || :OLD.CHUNK || ', ' || '{col}=' || :OLD.STARTIDX || ', ' || '{col}=' || :OLD.ENDIDX || ', ' || '{col}=' || :OLD.FLAG || ', ' || '{col}=' || :OLD.SEQUENCE# || ', ' || '{col}=' || :OLD.SPILL_DATA || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.PDBID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SPILL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_age_spill$_audit_insert
    AFTER INSERT ON LOGMNR_AGE_SPILL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.SESSION# || ', Datos=' || '{col}=' || :NEW.XIDUSN || ', ' || '{col}=' || :NEW.XIDSLT || ', ' || '{col}=' || :NEW.XIDSQN || ', ' || '{col}=' || :NEW.CHUNK || ', ' || '{col}=' || :NEW.SEQUENCE# || ', ' || '{col}=' || :NEW.OFFSET || ', ' || '{col}=' || :NEW.SPILL_DATA || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.PDBID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_AGE_SPILL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_age_spill$_audit_update
    AFTER UPDATE ON LOGMNR_AGE_SPILL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.SESSION# || ' -> ' || :NEW.SESSION# || ', Datos=' || '{col}=' || :OLD.XIDUSN || ' -> ' || :NEW.XIDUSN || ', ' || '{col}=' || :OLD.XIDSLT || ' -> ' || :NEW.XIDSLT || ', ' || '{col}=' || :OLD.XIDSQN || ' -> ' || :NEW.XIDSQN || ', ' || '{col}=' || :OLD.CHUNK || ' -> ' || :NEW.CHUNK || ', ' || '{col}=' || :OLD.SEQUENCE# || ' -> ' || :NEW.SEQUENCE# || ', ' || '{col}=' || :OLD.OFFSET || ' -> ' || :NEW.OFFSET || ', ' || '{col}=' || :OLD.SPILL_DATA || ' -> ' || :NEW.SPILL_DATA || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.PDBID || ' -> ' || :NEW.PDBID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_AGE_SPILL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_age_spill$_audit_delete
    AFTER DELETE ON LOGMNR_AGE_SPILL$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.SESSION# || ', Datos=' || '{col}=' || :OLD.XIDUSN || ', ' || '{col}=' || :OLD.XIDSLT || ', ' || '{col}=' || :OLD.XIDSQN || ', ' || '{col}=' || :OLD.CHUNK || ', ' || '{col}=' || :OLD.SEQUENCE# || ', ' || '{col}=' || :OLD.OFFSET || ', ' || '{col}=' || :OLD.SPILL_DATA || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.PDBID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_AGE_SPILL$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_restart_ckpt_txinfo$_audit_insert
    AFTER INSERT ON LOGMNR_RESTART_CKPT_TXINFO$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.SESSION# || ', Datos=' || '{col}=' || :NEW.XIDUSN || ', ' || '{col}=' || :NEW.XIDSLT || ', ' || '{col}=' || :NEW.XIDSQN || ', ' || '{col}=' || :NEW.SESSION_NUM || ', ' || '{col}=' || :NEW.SERIAL_NUM || ', ' || '{col}=' || :NEW.FLAG || ', ' || '{col}=' || :NEW.START_SCN || ', ' || '{col}=' || :NEW.EFFECTIVE_SCN || ', ' || '{col}=' || :NEW.OFFSET || ', ' || '{col}=' || :NEW.TX_DATA;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_RESTART_CKPT_TXINFO$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_restart_ckpt_txinfo$_audit_update
    AFTER UPDATE ON LOGMNR_RESTART_CKPT_TXINFO$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.SESSION# || ' -> ' || :NEW.SESSION# || ', Datos=' || '{col}=' || :OLD.XIDUSN || ' -> ' || :NEW.XIDUSN || ', ' || '{col}=' || :OLD.XIDSLT || ' -> ' || :NEW.XIDSLT || ', ' || '{col}=' || :OLD.XIDSQN || ' -> ' || :NEW.XIDSQN || ', ' || '{col}=' || :OLD.SESSION_NUM || ' -> ' || :NEW.SESSION_NUM || ', ' || '{col}=' || :OLD.SERIAL_NUM || ' -> ' || :NEW.SERIAL_NUM || ', ' || '{col}=' || :OLD.FLAG || ' -> ' || :NEW.FLAG || ', ' || '{col}=' || :OLD.START_SCN || ' -> ' || :NEW.START_SCN || ', ' || '{col}=' || :OLD.EFFECTIVE_SCN || ' -> ' || :NEW.EFFECTIVE_SCN || ', ' || '{col}=' || :OLD.OFFSET || ' -> ' || :NEW.OFFSET || ', ' || '{col}=' || :OLD.TX_DATA || ' -> ' || :NEW.TX_DATA;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_RESTART_CKPT_TXINFO$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_restart_ckpt_txinfo$_audit_delete
    AFTER DELETE ON LOGMNR_RESTART_CKPT_TXINFO$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.SESSION# || ', Datos=' || '{col}=' || :OLD.XIDUSN || ', ' || '{col}=' || :OLD.XIDSLT || ', ' || '{col}=' || :OLD.XIDSQN || ', ' || '{col}=' || :OLD.SESSION_NUM || ', ' || '{col}=' || :OLD.SERIAL_NUM || ', ' || '{col}=' || :OLD.FLAG || ', ' || '{col}=' || :OLD.START_SCN || ', ' || '{col}=' || :OLD.EFFECTIVE_SCN || ', ' || '{col}=' || :OLD.OFFSET || ', ' || '{col}=' || :OLD.TX_DATA;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_RESTART_CKPT_TXINFO$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_restart_ckpt$_audit_insert
    AFTER INSERT ON LOGMNR_RESTART_CKPT$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.SESSION# || ', Datos=' || '{col}=' || :NEW.VALID || ', ' || '{col}=' || :NEW.CKPT_SCN || ', ' || '{col}=' || :NEW.XIDUSN || ', ' || '{col}=' || :NEW.XIDSLT || ', ' || '{col}=' || :NEW.XIDSQN || ', ' || '{col}=' || :NEW.SESSION_NUM || ', ' || '{col}=' || :NEW.SERIAL_NUM || ', ' || '{col}=' || :NEW.CKPT_INFO || ', ' || '{col}=' || :NEW.FLAG || ', ' || '{col}=' || :NEW.OFFSET || ', ' || '{col}=' || :NEW.CLIENT_DATA || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.PDBID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_RESTART_CKPT$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_restart_ckpt$_audit_update
    AFTER UPDATE ON LOGMNR_RESTART_CKPT$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.SESSION# || ' -> ' || :NEW.SESSION# || ', Datos=' || '{col}=' || :OLD.VALID || ' -> ' || :NEW.VALID || ', ' || '{col}=' || :OLD.CKPT_SCN || ' -> ' || :NEW.CKPT_SCN || ', ' || '{col}=' || :OLD.XIDUSN || ' -> ' || :NEW.XIDUSN || ', ' || '{col}=' || :OLD.XIDSLT || ' -> ' || :NEW.XIDSLT || ', ' || '{col}=' || :OLD.XIDSQN || ' -> ' || :NEW.XIDSQN || ', ' || '{col}=' || :OLD.SESSION_NUM || ' -> ' || :NEW.SESSION_NUM || ', ' || '{col}=' || :OLD.SERIAL_NUM || ' -> ' || :NEW.SERIAL_NUM || ', ' || '{col}=' || :OLD.CKPT_INFO || ' -> ' || :NEW.CKPT_INFO || ', ' || '{col}=' || :OLD.FLAG || ' -> ' || :NEW.FLAG || ', ' || '{col}=' || :OLD.OFFSET || ' -> ' || :NEW.OFFSET || ', ' || '{col}=' || :OLD.CLIENT_DATA || ' -> ' || :NEW.CLIENT_DATA || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.PDBID || ' -> ' || :NEW.PDBID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_RESTART_CKPT$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_restart_ckpt$_audit_delete
    AFTER DELETE ON LOGMNR_RESTART_CKPT$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.SESSION# || ', Datos=' || '{col}=' || :OLD.VALID || ', ' || '{col}=' || :OLD.CKPT_SCN || ', ' || '{col}=' || :OLD.XIDUSN || ', ' || '{col}=' || :OLD.XIDSLT || ', ' || '{col}=' || :OLD.XIDSQN || ', ' || '{col}=' || :OLD.SESSION_NUM || ', ' || '{col}=' || :OLD.SERIAL_NUM || ', ' || '{col}=' || :OLD.CKPT_INFO || ', ' || '{col}=' || :OLD.FLAG || ', ' || '{col}=' || :OLD.OFFSET || ', ' || '{col}=' || :OLD.CLIENT_DATA || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.PDBID;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_RESTART_CKPT$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_session_actions$_audit_insert
    AFTER INSERT ON LOGMNR_SESSION_ACTIONS$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.LOGMNRSESSION# || ', Datos=' || '{col}=' || :NEW.FLAGSRUNTIME || ', ' || '{col}=' || :NEW.DROPSCN || ', ' || '{col}=' || :NEW.MODIFYTIME || ', ' || '{col}=' || :NEW.DISPATCHTIME || ', ' || '{col}=' || :NEW.DROPTIME || ', ' || '{col}=' || :NEW.LCRCOUNT || ', ' || '{col}=' || :NEW.ACTIONNAME || ', ' || '{col}=' || :NEW.PROCESSROLE# || ', ' || '{col}=' || :NEW.ACTIONTYPE# || ', ' || '{col}=' || :NEW.FLAGSDEFINETIME || ', ' || '{col}=' || :NEW.CREATETIME || ', ' || '{col}=' || :NEW.XIDUSN || ', ' || '{col}=' || :NEW.XIDSLT || ', ' || '{col}=' || :NEW.XIDSQN || ', ' || '{col}=' || :NEW.THREAD# || ', ' || '{col}=' || :NEW.STARTSCN || ', ' || '{col}=' || :NEW.STARTSUBSCN || ', ' || '{col}=' || :NEW.ENDSCN || ', ' || '{col}=' || :NEW.ENDSUBSCN || ', ' || '{col}=' || :NEW.RBASQN || ', ' || '{col}=' || :NEW.RBABLK || ', ' || '{col}=' || :NEW.RBABYTE || ', ' || '{col}=' || :NEW.SESSION# || ', ' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.ATTR1 || ', ' || '{col}=' || :NEW.ATTR2 || ', ' || '{col}=' || :NEW.ATTR3 || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3 || ', ' || '{col}=' || :NEW.SPARE4 || ', ' || '{col}=' || :NEW.PDBID || ', ' || '{col}=' || :NEW.PDB_NAME;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SESSION_ACTIONS$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_session_actions$_audit_update
    AFTER UPDATE ON LOGMNR_SESSION_ACTIONS$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.LOGMNRSESSION# || ' -> ' || :NEW.LOGMNRSESSION# || ', Datos=' || '{col}=' || :OLD.FLAGSRUNTIME || ' -> ' || :NEW.FLAGSRUNTIME || ', ' || '{col}=' || :OLD.DROPSCN || ' -> ' || :NEW.DROPSCN || ', ' || '{col}=' || :OLD.MODIFYTIME || ' -> ' || :NEW.MODIFYTIME || ', ' || '{col}=' || :OLD.DISPATCHTIME || ' -> ' || :NEW.DISPATCHTIME || ', ' || '{col}=' || :OLD.DROPTIME || ' -> ' || :NEW.DROPTIME || ', ' || '{col}=' || :OLD.LCRCOUNT || ' -> ' || :NEW.LCRCOUNT || ', ' || '{col}=' || :OLD.ACTIONNAME || ' -> ' || :NEW.ACTIONNAME || ', ' || '{col}=' || :OLD.PROCESSROLE# || ' -> ' || :NEW.PROCESSROLE# || ', ' || '{col}=' || :OLD.ACTIONTYPE# || ' -> ' || :NEW.ACTIONTYPE# || ', ' || '{col}=' || :OLD.FLAGSDEFINETIME || ' -> ' || :NEW.FLAGSDEFINETIME || ', ' || '{col}=' || :OLD.CREATETIME || ' -> ' || :NEW.CREATETIME || ', ' || '{col}=' || :OLD.XIDUSN || ' -> ' || :NEW.XIDUSN || ', ' || '{col}=' || :OLD.XIDSLT || ' -> ' || :NEW.XIDSLT || ', ' || '{col}=' || :OLD.XIDSQN || ' -> ' || :NEW.XIDSQN || ', ' || '{col}=' || :OLD.THREAD# || ' -> ' || :NEW.THREAD# || ', ' || '{col}=' || :OLD.STARTSCN || ' -> ' || :NEW.STARTSCN || ', ' || '{col}=' || :OLD.STARTSUBSCN || ' -> ' || :NEW.STARTSUBSCN || ', ' || '{col}=' || :OLD.ENDSCN || ' -> ' || :NEW.ENDSCN || ', ' || '{col}=' || :OLD.ENDSUBSCN || ' -> ' || :NEW.ENDSUBSCN || ', ' || '{col}=' || :OLD.RBASQN || ' -> ' || :NEW.RBASQN || ', ' || '{col}=' || :OLD.RBABLK || ' -> ' || :NEW.RBABLK || ', ' || '{col}=' || :OLD.RBABYTE || ' -> ' || :NEW.RBABYTE || ', ' || '{col}=' || :OLD.SESSION# || ' -> ' || :NEW.SESSION# || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.ATTR1 || ' -> ' || :NEW.ATTR1 || ', ' || '{col}=' || :OLD.ATTR2 || ' -> ' || :NEW.ATTR2 || ', ' || '{col}=' || :OLD.ATTR3 || ' -> ' || :NEW.ATTR3 || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ' -> ' || :NEW.SPARE4 || ', ' || '{col}=' || :OLD.PDBID || ' -> ' || :NEW.PDBID || ', ' || '{col}=' || :OLD.PDB_NAME || ' -> ' || :NEW.PDB_NAME;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SESSION_ACTIONS$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_session_actions$_audit_delete
    AFTER DELETE ON LOGMNR_SESSION_ACTIONS$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.LOGMNRSESSION# || ', Datos=' || '{col}=' || :OLD.FLAGSRUNTIME || ', ' || '{col}=' || :OLD.DROPSCN || ', ' || '{col}=' || :OLD.MODIFYTIME || ', ' || '{col}=' || :OLD.DISPATCHTIME || ', ' || '{col}=' || :OLD.DROPTIME || ', ' || '{col}=' || :OLD.LCRCOUNT || ', ' || '{col}=' || :OLD.ACTIONNAME || ', ' || '{col}=' || :OLD.PROCESSROLE# || ', ' || '{col}=' || :OLD.ACTIONTYPE# || ', ' || '{col}=' || :OLD.FLAGSDEFINETIME || ', ' || '{col}=' || :OLD.CREATETIME || ', ' || '{col}=' || :OLD.XIDUSN || ', ' || '{col}=' || :OLD.XIDSLT || ', ' || '{col}=' || :OLD.XIDSQN || ', ' || '{col}=' || :OLD.THREAD# || ', ' || '{col}=' || :OLD.STARTSCN || ', ' || '{col}=' || :OLD.STARTSUBSCN || ', ' || '{col}=' || :OLD.ENDSCN || ', ' || '{col}=' || :OLD.ENDSUBSCN || ', ' || '{col}=' || :OLD.RBASQN || ', ' || '{col}=' || :OLD.RBABLK || ', ' || '{col}=' || :OLD.RBABYTE || ', ' || '{col}=' || :OLD.SESSION# || ', ' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.ATTR1 || ', ' || '{col}=' || :OLD.ATTR2 || ', ' || '{col}=' || :OLD.ATTR3 || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ', ' || '{col}=' || :OLD.PDBID || ', ' || '{col}=' || :OLD.PDB_NAME;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_SESSION_ACTIONS$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_profile_table_stats$_audit_insert
    AFTER INSERT ON LOGMNR_PROFILE_TABLE_STATS$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.OBJID || ', Datos=' || '{col}=' || :NEW.OWNER || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.OPNUM || ', ' || '{col}=' || :NEW.TLSBYUNSUPPOPNUM || ', ' || '{col}=' || :NEW.OGGUNSUPPOPNUM || ', ' || '{col}=' || :NEW.OGGFETCHOPNUM || ', ' || '{col}=' || :NEW.OGGPLSQLOPNUM || ', ' || '{col}=' || :NEW.PARTNUM || ', ' || '{col}=' || :NEW.INSERTNUM || ', ' || '{col}=' || :NEW.UPDATENUM || ', ' || '{col}=' || :NEW.DELETENUM || ', ' || '{col}=' || :NEW.DDLNUM || ', ' || '{col}=' || :NEW.PROPERTY1 || ', ' || '{col}=' || :NEW.PROPERTY2 || ', ' || '{col}=' || :NEW.PARTITIONATTR || ', ' || '{col}=' || :NEW.REDOSIZE || ', ' || '{col}=' || :NEW.MAXLOBSIZE || ', ' || '{col}=' || :NEW.REDORATE || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3 || ', ' || '{col}=' || :NEW.SPARE4 || ', ' || '{col}=' || :NEW.SPARE5 || ', ' || '{col}=' || :NEW.SPARE6;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PROFILE_TABLE_STATS$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_profile_table_stats$_audit_update
    AFTER UPDATE ON LOGMNR_PROFILE_TABLE_STATS$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.OBJID || ' -> ' || :NEW.OBJID || ', Datos=' || '{col}=' || :OLD.OWNER || ' -> ' || :NEW.OWNER || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.OPNUM || ' -> ' || :NEW.OPNUM || ', ' || '{col}=' || :OLD.TLSBYUNSUPPOPNUM || ' -> ' || :NEW.TLSBYUNSUPPOPNUM || ', ' || '{col}=' || :OLD.OGGUNSUPPOPNUM || ' -> ' || :NEW.OGGUNSUPPOPNUM || ', ' || '{col}=' || :OLD.OGGFETCHOPNUM || ' -> ' || :NEW.OGGFETCHOPNUM || ', ' || '{col}=' || :OLD.OGGPLSQLOPNUM || ' -> ' || :NEW.OGGPLSQLOPNUM || ', ' || '{col}=' || :OLD.PARTNUM || ' -> ' || :NEW.PARTNUM || ', ' || '{col}=' || :OLD.INSERTNUM || ' -> ' || :NEW.INSERTNUM || ', ' || '{col}=' || :OLD.UPDATENUM || ' -> ' || :NEW.UPDATENUM || ', ' || '{col}=' || :OLD.DELETENUM || ' -> ' || :NEW.DELETENUM || ', ' || '{col}=' || :OLD.DDLNUM || ' -> ' || :NEW.DDLNUM || ', ' || '{col}=' || :OLD.PROPERTY1 || ' -> ' || :NEW.PROPERTY1 || ', ' || '{col}=' || :OLD.PROPERTY2 || ' -> ' || :NEW.PROPERTY2 || ', ' || '{col}=' || :OLD.PARTITIONATTR || ' -> ' || :NEW.PARTITIONATTR || ', ' || '{col}=' || :OLD.REDOSIZE || ' -> ' || :NEW.REDOSIZE || ', ' || '{col}=' || :OLD.MAXLOBSIZE || ' -> ' || :NEW.MAXLOBSIZE || ', ' || '{col}=' || :OLD.REDORATE || ' -> ' || :NEW.REDORATE || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ' -> ' || :NEW.SPARE4 || ', ' || '{col}=' || :OLD.SPARE5 || ' -> ' || :NEW.SPARE5 || ', ' || '{col}=' || :OLD.SPARE6 || ' -> ' || :NEW.SPARE6;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PROFILE_TABLE_STATS$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_profile_table_stats$_audit_delete
    AFTER DELETE ON LOGMNR_PROFILE_TABLE_STATS$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.OBJID || ', Datos=' || '{col}=' || :OLD.OWNER || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.OPNUM || ', ' || '{col}=' || :OLD.TLSBYUNSUPPOPNUM || ', ' || '{col}=' || :OLD.OGGUNSUPPOPNUM || ', ' || '{col}=' || :OLD.OGGFETCHOPNUM || ', ' || '{col}=' || :OLD.OGGPLSQLOPNUM || ', ' || '{col}=' || :OLD.PARTNUM || ', ' || '{col}=' || :OLD.INSERTNUM || ', ' || '{col}=' || :OLD.UPDATENUM || ', ' || '{col}=' || :OLD.DELETENUM || ', ' || '{col}=' || :OLD.DDLNUM || ', ' || '{col}=' || :OLD.PROPERTY1 || ', ' || '{col}=' || :OLD.PROPERTY2 || ', ' || '{col}=' || :OLD.PARTITIONATTR || ', ' || '{col}=' || :OLD.REDOSIZE || ', ' || '{col}=' || :OLD.MAXLOBSIZE || ', ' || '{col}=' || :OLD.REDORATE || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ', ' || '{col}=' || :OLD.SPARE5 || ', ' || '{col}=' || :OLD.SPARE6;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PROFILE_TABLE_STATS$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_profile_plsql_stats$_audit_insert
    AFTER INSERT ON LOGMNR_PROFILE_PLSQL_STATS$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.PKGOWNER || ', Datos=' || '{col}=' || :NEW.PKGNAME || ', ' || '{col}=' || :NEW.NAME || ', ' || '{col}=' || :NEW.PRAGMAOP || ', ' || '{col}=' || :NEW.OPNUM || ', ' || '{col}=' || :NEW.TLSBYUNSUPPOPNUM || ', ' || '{col}=' || :NEW.OGGUNSUPPOPNUM || ', ' || '{col}=' || :NEW.REDOSIZE || ', ' || '{col}=' || :NEW.REDORATE || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3 || ', ' || '{col}=' || :NEW.SPARE4 || ', ' || '{col}=' || :NEW.SPARE5 || ', ' || '{col}=' || :NEW.SPARE6;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PROFILE_PLSQL_STATS$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_profile_plsql_stats$_audit_update
    AFTER UPDATE ON LOGMNR_PROFILE_PLSQL_STATS$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.PKGOWNER || ' -> ' || :NEW.PKGOWNER || ', Datos=' || '{col}=' || :OLD.PKGNAME || ' -> ' || :NEW.PKGNAME || ', ' || '{col}=' || :OLD.NAME || ' -> ' || :NEW.NAME || ', ' || '{col}=' || :OLD.PRAGMAOP || ' -> ' || :NEW.PRAGMAOP || ', ' || '{col}=' || :OLD.OPNUM || ' -> ' || :NEW.OPNUM || ', ' || '{col}=' || :OLD.TLSBYUNSUPPOPNUM || ' -> ' || :NEW.TLSBYUNSUPPOPNUM || ', ' || '{col}=' || :OLD.OGGUNSUPPOPNUM || ' -> ' || :NEW.OGGUNSUPPOPNUM || ', ' || '{col}=' || :OLD.REDOSIZE || ' -> ' || :NEW.REDOSIZE || ', ' || '{col}=' || :OLD.REDORATE || ' -> ' || :NEW.REDORATE || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ' -> ' || :NEW.SPARE4 || ', ' || '{col}=' || :OLD.SPARE5 || ' -> ' || :NEW.SPARE5 || ', ' || '{col}=' || :OLD.SPARE6 || ' -> ' || :NEW.SPARE6;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PROFILE_PLSQL_STATS$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logmnr_profile_plsql_stats$_audit_delete
    AFTER DELETE ON LOGMNR_PROFILE_PLSQL_STATS$
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.PKGOWNER || ', Datos=' || '{col}=' || :OLD.PKGNAME || ', ' || '{col}=' || :OLD.NAME || ', ' || '{col}=' || :OLD.PRAGMAOP || ', ' || '{col}=' || :OLD.OPNUM || ', ' || '{col}=' || :OLD.TLSBYUNSUPPOPNUM || ', ' || '{col}=' || :OLD.OGGUNSUPPOPNUM || ', ' || '{col}=' || :OLD.REDOSIZE || ', ' || '{col}=' || :OLD.REDORATE || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ', ' || '{col}=' || :OLD.SPARE4 || ', ' || '{col}=' || :OLD.SPARE5 || ', ' || '{col}=' || :OLD.SPARE6;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGMNR_PROFILE_PLSQL_STATS$',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logstdby$flashback_scn_audit_insert
    AFTER INSERT ON LOGSTDBY$FLASHBACK_SCN
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.PRIMARY_SCN || ', Datos=' || '{col}=' || :NEW.PRIMARY_TIME || ', ' || '{col}=' || :NEW.STANDBY_SCN || ', ' || '{col}=' || :NEW.STANDBY_TIME || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGSTDBY$FLASHBACK_SCN',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logstdby$flashback_scn_audit_update
    AFTER UPDATE ON LOGSTDBY$FLASHBACK_SCN
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.PRIMARY_SCN || ' -> ' || :NEW.PRIMARY_SCN || ', Datos=' || '{col}=' || :OLD.PRIMARY_TIME || ' -> ' || :NEW.PRIMARY_TIME || ', ' || '{col}=' || :OLD.STANDBY_SCN || ' -> ' || :NEW.STANDBY_SCN || ', ' || '{col}=' || :OLD.STANDBY_TIME || ' -> ' || :NEW.STANDBY_TIME || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGSTDBY$FLASHBACK_SCN',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logstdby$flashback_scn_audit_delete
    AFTER DELETE ON LOGSTDBY$FLASHBACK_SCN
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.PRIMARY_SCN || ', Datos=' || '{col}=' || :OLD.PRIMARY_TIME || ', ' || '{col}=' || :OLD.STANDBY_SCN || ', ' || '{col}=' || :OLD.STANDBY_TIME || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGSTDBY$FLASHBACK_SCN',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logstdby$eds_tables_audit_insert
    AFTER INSERT ON LOGSTDBY$EDS_TABLES
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Insert: ID=' || :NEW.OWNER || ', Datos=' || '{col}=' || :NEW.TABLE_NAME || ', ' || '{col}=' || :NEW.SHADOW_TABLE_NAME || ', ' || '{col}=' || :NEW.BASE_TRIGGER_NAME || ', ' || '{col}=' || :NEW.SHADOW_TRIGGER_NAME || ', ' || '{col}=' || :NEW.DBLINK || ', ' || '{col}=' || :NEW.FLAGS || ', ' || '{col}=' || :NEW.STATE || ', ' || '{col}=' || :NEW.OBJV || ', ' || '{col}=' || :NEW.OBJ# || ', ' || '{col}=' || :NEW.SOBJ# || ', ' || '{col}=' || :NEW.CTIME || ', ' || '{col}=' || :NEW.SPARE1 || ', ' || '{col}=' || :NEW.SPARE2 || ', ' || '{col}=' || :NEW.SPARE3 || ', ' || '{col}=' || :NEW.MVIEW_NAME || ', ' || '{col}=' || :NEW.MVIEW_LOG_NAME || ', ' || '{col}=' || :NEW.MVIEW_TRIGGER_NAME;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGSTDBY$EDS_TABLES',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logstdby$eds_tables_audit_update
    AFTER UPDATE ON LOGSTDBY$EDS_TABLES
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Update: ID=' || :OLD.OWNER || ' -> ' || :NEW.OWNER || ', Datos=' || '{col}=' || :OLD.TABLE_NAME || ' -> ' || :NEW.TABLE_NAME || ', ' || '{col}=' || :OLD.SHADOW_TABLE_NAME || ' -> ' || :NEW.SHADOW_TABLE_NAME || ', ' || '{col}=' || :OLD.BASE_TRIGGER_NAME || ' -> ' || :NEW.BASE_TRIGGER_NAME || ', ' || '{col}=' || :OLD.SHADOW_TRIGGER_NAME || ' -> ' || :NEW.SHADOW_TRIGGER_NAME || ', ' || '{col}=' || :OLD.DBLINK || ' -> ' || :NEW.DBLINK || ', ' || '{col}=' || :OLD.FLAGS || ' -> ' || :NEW.FLAGS || ', ' || '{col}=' || :OLD.STATE || ' -> ' || :NEW.STATE || ', ' || '{col}=' || :OLD.OBJV || ' -> ' || :NEW.OBJV || ', ' || '{col}=' || :OLD.OBJ# || ' -> ' || :NEW.OBJ# || ', ' || '{col}=' || :OLD.SOBJ# || ' -> ' || :NEW.SOBJ# || ', ' || '{col}=' || :OLD.CTIME || ' -> ' || :NEW.CTIME || ', ' || '{col}=' || :OLD.SPARE1 || ' -> ' || :NEW.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ' -> ' || :NEW.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ' -> ' || :NEW.SPARE3 || ', ' || '{col}=' || :OLD.MVIEW_NAME || ' -> ' || :NEW.MVIEW_NAME || ', ' || '{col}=' || :OLD.MVIEW_LOG_NAME || ' -> ' || :NEW.MVIEW_LOG_NAME || ', ' || '{col}=' || :OLD.MVIEW_TRIGGER_NAME || ' -> ' || :NEW.MVIEW_TRIGGER_NAME;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGSTDBY$EDS_TABLES',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    

    CREATE OR REPLACE TRIGGER logstdby$eds_tables_audit_delete
    AFTER DELETE ON LOGSTDBY$EDS_TABLES
    FOR EACH ROW
    DECLARE
        v_detalle_accion VARCHAR2(4000);
    BEGIN
        v_detalle_accion := 'Delete: ID=' || :OLD.OWNER || ', Datos=' || '{col}=' || :OLD.TABLE_NAME || ', ' || '{col}=' || :OLD.SHADOW_TABLE_NAME || ', ' || '{col}=' || :OLD.BASE_TRIGGER_NAME || ', ' || '{col}=' || :OLD.SHADOW_TRIGGER_NAME || ', ' || '{col}=' || :OLD.DBLINK || ', ' || '{col}=' || :OLD.FLAGS || ', ' || '{col}=' || :OLD.STATE || ', ' || '{col}=' || :OLD.OBJV || ', ' || '{col}=' || :OLD.OBJ# || ', ' || '{col}=' || :OLD.SOBJ# || ', ' || '{col}=' || :OLD.CTIME || ', ' || '{col}=' || :OLD.SPARE1 || ', ' || '{col}=' || :OLD.SPARE2 || ', ' || '{col}=' || :OLD.SPARE3 || ', ' || '{col}=' || :OLD.MVIEW_NAME || ', ' || '{col}=' || :OLD.MVIEW_LOG_NAME || ', ' || '{col}=' || :OLD.MVIEW_TRIGGER_NAME;
        IF LENGTH(v_detalle_accion) > 4000 THEN
            v_detalle_accion := SUBSTR(v_detalle_accion, 1, 4000);
        END IF;
        INSERT INTO Auditoria (NombreTabla, FechaHora, UsuarioActual, DetalleAccion)
        VALUES (
            'LOGSTDBY$EDS_TABLES',
            SYSTIMESTAMP,
            USER,
            v_detalle_accion
        );
    END;
    
