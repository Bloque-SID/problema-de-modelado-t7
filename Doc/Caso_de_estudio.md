# Plataforma de streaming de música:

Una plataforma de streaming de música que desea almacenar información sobre su catálogo de música, los artistas que producen la música y los usuarios que acceden a la plataforma.
Con esta información, la plataforma podrá ofrecer recomendaciones personalizadas a sus usuarios y mejorar su experiencia en general.
Además, la plataforma desea almacenar información sobre las listas de reproducción creadas por los usuarios y las canciones que contienen.
Todo esto se almacenará en una base de datos para que pueda ser accedida y utilizada por la plataforma de manera eficiente.

----

* Entidad principal: Usuarios

* Atributos: ID de usuario, nombre de usuario, contraseña, correo electrónico, fecha de registro, tipo de suscripción (Gratuita, Premium, Premium +), fecha de caducidad de la suscripción.

---- 

* Entidad principal: Canciones

* Atributos: ID de canción, título de la canción, artista, género, fecha de lanzamiento, duración, popularidad, ID del álbum, ID del artista.

----

* Entidad principal: Álbumes

* Atributos: ID del álbum, título del álbum, artista, género, fecha de lanzamiento, popularidad, número de canciones, duración total del álbum.

----

* Entidad principal: Artistas

* Atributos: ID del artista, nombre del artista, género, fecha de nacimiento, lugar de nacimiento, popularidad.

----

* Entidad secundaria: Listas de reproducción

* Atributos: ID de la lista de reproducción, nombre de la lista de reproducción, descripción, fecha de creación, popularidad.

----

* Entidad secundaria: Seguimiento de reproducciones

* Atributos: ID del seguimiento, ID de usuario, ID de canción, fecha de reproducción.

----

* Entidad débil: Comentarios

* Atributos: ID del comentario, ID de usuario, ID de canción, texto del comentario, fecha de publicación.

