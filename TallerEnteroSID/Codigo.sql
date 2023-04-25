CREATE TABLE Usuario (
    id_usuario NUMBER(10) PRIMARY KEY,
    nombre VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL,
    fecha_registro DATE NOT NULL
);

CREATE TABLE Artista (
    id_artista NUMBER(10) PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    pais VARCHAR2(50) NOT NULL
);

CREATE TABLE Album (
    id_album NUMBER(10) PRIMARY KEY,
    titulo VARCHAR2(100) NOT NULL,
    fecha_lanzamiento DATE NOT NULL,
    id_artista NUMBER(10) NOT NULL,
    CONSTRAINT fk_artista FOREIGN KEY (id_artista) REFERENCES Artista(id_artista)
);

CREATE TABLE Cancion (
    id_cancion NUMBER(10) PRIMARY KEY,
    titulo VARCHAR2(100) NOT NULL,
    duracion NUMBER(5,2) NOT NULL,
    id_album NUMBER(10) NOT NULL,
    CONSTRAINT fk_album FOREIGN KEY (id_album) REFERENCES Album(id_album)
);

CREATE TABLE ListaReproduccion (
    id_lista NUMBER(10) PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    id_usuario NUMBER(10) NOT NULL,
    CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE DetalleListaReproduccion (
    id_detalle NUMBER(10) PRIMARY KEY,
    id_lista NUMBER(10) NOT NULL,
    id_cancion NUMBER(10) NOT NULL,
    CONSTRAINT fk_lista FOREIGN KEY (id_lista) REFERENCES ListaReproduccion(id_lista),
    CONSTRAINT fk_cancion FOREIGN KEY (id_cancion) REFERENCES Cancion(id_cancion)
);

CREATE TABLE Historial (
    id_historial NUMBER(10) PRIMARY KEY,
    id_usuario NUMBER(10) NOT NULL,
    id_cancion NUMBER(10) NOT NULL,
    fecha_reproduccion DATE NOT NULL,
    CONSTRAINT fk_usuario2 FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
    CONSTRAINT fk_cancion2 FOREIGN KEY (id_cancion) REFERENCES Cancion(id_cancion)
);

CREATE TABLE Comentario (
    id_comentario NUMBER(10) PRIMARY KEY,
    comentario VARCHAR2(500) NOT NULL,
    id_cancion NUMBER(10) NOT NULL,
    id_usuario NUMBER(10) NOT NULL,
    fecha_comentario DATE NOT NULL,
    CONSTRAINT fk_cancion3 FOREIGN KEY (id_cancion) REFERENCES Cancion(id_cancion),
    CONSTRAINT fk_usuario3 FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);
