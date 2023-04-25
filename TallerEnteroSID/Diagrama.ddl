-- Generado por Oracle SQL Developer Data Modeler 22.2.0.165.1149
--   en:        2023-04-24 23:20:03 COT
--   sitio:      Oracle Database 21c
--   tipo:      Oracle Database 21c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE album (
    id_album          NUMBER(10) NOT NULL,
    titulo            VARCHAR2(100) NOT NULL,
    fecha_lanzamiento DATE NOT NULL,
    id_artista        NUMBER(10) NOT NULL
);

ALTER TABLE album ADD CONSTRAINT album_pk PRIMARY KEY ( id_album );

CREATE TABLE artista (
    id_artista NUMBER(10) NOT NULL,
    nombre     VARCHAR2(100) NOT NULL,
    pais       VARCHAR2(50) NOT NULL
);

ALTER TABLE artista ADD CONSTRAINT artista_pk PRIMARY KEY ( id_artista );

CREATE TABLE cancion (
    id_cancion NUMBER(10) NOT NULL,
    titulo     VARCHAR2(100) NOT NULL,
    duracion   NUMBER(5, 2) NOT NULL,
    id_album   NUMBER(10) NOT NULL
);

ALTER TABLE cancion ADD CONSTRAINT cancion_pk PRIMARY KEY ( id_cancion );

CREATE TABLE comentario (
    id_comentario    NUMBER(10) NOT NULL,
    comentario       VARCHAR2(500) NOT NULL,
    id_cancion       NUMBER(10) NOT NULL,
    id_usuario       NUMBER(10) NOT NULL,
    fecha_comentario DATE NOT NULL
);

ALTER TABLE comentario ADD CONSTRAINT comentario_pk PRIMARY KEY ( id_comentario );

CREATE TABLE detallelistareproduccion (
    id_detalle NUMBER(10) NOT NULL,
    id_lista   NUMBER(10) NOT NULL,
    id_cancion NUMBER(10) NOT NULL
);

ALTER TABLE detallelistareproduccion ADD CONSTRAINT detallelistareproduccion_pk PRIMARY KEY ( id_detalle );

CREATE TABLE historial (
    id_historial       NUMBER(10) NOT NULL,
    id_usuario         NUMBER(10) NOT NULL,
    id_cancion         NUMBER(10) NOT NULL,
    fecha_reproduccion DATE NOT NULL
);

ALTER TABLE historial ADD CONSTRAINT historial_pk PRIMARY KEY ( id_historial );

CREATE TABLE listareproduccion (
    id_lista   NUMBER(10) NOT NULL,
    nombre     VARCHAR2(100) NOT NULL,
    id_usuario NUMBER(10) NOT NULL
);

ALTER TABLE listareproduccion ADD CONSTRAINT listareproduccion_pk PRIMARY KEY ( id_lista );

CREATE TABLE usuario (
    id_usuario     NUMBER(10) NOT NULL,
    nombre         VARCHAR2(50) NOT NULL,
    email          VARCHAR2(100) NOT NULL,
    fecha_registro DATE NOT NULL
);

ALTER TABLE usuario ADD CONSTRAINT usuario_pk PRIMARY KEY ( id_usuario );

ALTER TABLE usuario ADD CONSTRAINT index_1 UNIQUE ( email );

ALTER TABLE cancion
    ADD CONSTRAINT fk_album FOREIGN KEY ( id_album )
        REFERENCES album ( id_album );

ALTER TABLE album
    ADD CONSTRAINT fk_artista FOREIGN KEY ( id_artista )
        REFERENCES artista ( id_artista );

ALTER TABLE detallelistareproduccion
    ADD CONSTRAINT fk_cancion FOREIGN KEY ( id_cancion )
        REFERENCES cancion ( id_cancion );

ALTER TABLE historial
    ADD CONSTRAINT fk_cancion2 FOREIGN KEY ( id_cancion )
        REFERENCES cancion ( id_cancion );

ALTER TABLE comentario
    ADD CONSTRAINT fk_cancion3 FOREIGN KEY ( id_cancion )
        REFERENCES cancion ( id_cancion );

ALTER TABLE detallelistareproduccion
    ADD CONSTRAINT fk_lista FOREIGN KEY ( id_lista )
        REFERENCES listareproduccion ( id_lista );

ALTER TABLE listareproduccion
    ADD CONSTRAINT fk_usuario FOREIGN KEY ( id_usuario )
        REFERENCES usuario ( id_usuario );

ALTER TABLE historial
    ADD CONSTRAINT fk_usuario2 FOREIGN KEY ( id_usuario )
        REFERENCES usuario ( id_usuario );

ALTER TABLE comentario
    ADD CONSTRAINT fk_usuario3 FOREIGN KEY ( id_usuario )
        REFERENCES usuario ( id_usuario );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             0
-- ALTER TABLE                             18
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
