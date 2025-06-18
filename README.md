Introducción
El objetivo de esta tercera tarea es construir sobre su aplicación Rails existente implementando interacciones completas basadas en formularios para todos los modelos clave. Esto incluye desarrollar todos los formularios de creación y edición (interfaces CRUD), agregar validaciones del lado del cliente y del servidor, y asegurar que la aplicación ofrezca una experiencia fluida, usable y accesible para los usuarios.
También deberán refinar la interfaz de usuario para apoyar de manera efectiva la entrada de datos del usuario, mejorar los mecanismos de retroalimentación para errores de validación y reforzar las buenas prácticas de usabilidad e integridad de datos.

Qué entregar

Implementación de formularios
● Implementar funcionalidad CRUD completa (crear, leer, actualizar, eliminar) para los modelos principales de su aplicación.
● Desarrollar todos los formularios necesarios en Rails utilizando form helpers y estilos con Bootstrap.
● Los formularios deben ser accesibles mediante rutas claras desde la interfaz principal.

Validación
● Agregar validaciones de Active Record en los modelos para asegurar la integridad de los datos (por ejemplo: presencia, unicidad, formato).
● Agregar mensajes de error amigables para el usuario, que se muestren dentro de las vistas de formularios cuando las validaciones fallen.
● Asegurar validación del lado del cliente utilizando atributos de validación HTML5 o JavaScript cuando sea apropiado.

Usabilidad
● Todos los formularios deben incluir etiquetas adecuadas, placeholders y controles de formulario apropiados (campos de texto, menús desplegables, casillas de verificación, etc.).
● Asegurarse de que los formularios ofrezcan una buena experiencia de usuario al manejar casos límite (por ejemplo: campos requeridos, mensajes de error, tipos de datos incorrectos).
● Usar componentes de Bootstrap para mejorar la interfaz y mantener la consistencia en todas las vistas.





Tarea 4 – Autenticación y Autorización
Fecha de entrega: Miércoles 18 de junio, 20:00 hrs

Introducción
El objetivo de esta cuarta tarea es mejorar tu aplicación Rails existente añadiendo funcionalidades de autenticación y autorización seguras y fáciles de usar.
Utilizarás Devise para gestionar las sesiones de usuario y CanCanCan para controlar el acceso a los recursos según los roles de usuario.
Debes asegurarte de que esta nueva funcionalidad se integre sin problemas con tu trabajo anterior y que la experiencia del usuario se mantenga consistente, usable y accesible en toda la aplicación.

Qué entregar
Autenticación (Devise)
Instalar y configurar Devise para la autenticación de usuarios.

Ofrecer soporte completo para:
Registro de usuario
Inicio de sesión
Cierre de sesión
Recuperación de contraseña
Edición de cuenta
Restringir el acceso a secciones clave de la app solo a usuarios autenticados.

Autorización (CanCanCan)
Instalar y configurar CanCanCan.
Definir al menos dos roles diferentes (ej. Admin, Usuario Regular) y especificar sus permisos usando la clase Ability.
Proteger los controladores para que los usuarios solo puedan ejecutar las acciones que están autorizados a realizar.
Mostrar mensajes de retroalimentación adecuados cuando un usuario intente hacer algo no autorizado.
Experiencia de Usuario e Interfaz
Mantener una interfaz consistente y profesional usando Bootstrap.
Asegurar que los formularios de login, registro y mensajes de error sean amigables y accesibles.
Incluir indicadores visuales y mensajes que orienten al usuario durante el login o frente a errores de permisos.

Criterios de Evaluación
[30%] Funcionalidad de la Tarea 3 preservada y completamente operativa.
[20%] Autenticación correctamente implementada con Devise.
[30%] Usabilidad de formularios, estilo y retroalimentación al usuario.
[20%] Lógica de autorización y control de acceso basado en roles.

Fecha: 3 de junio de 2025
Facultad de Ingeniería y Ciencias Aplicadas – Universidad de los Andes
Entrega y Evaluación
Las entregas deben realizarse a través del mismo repositorio de GitHub utilizado en las Tareas 1–3.
Solo se considerarán los commits realizados antes de la fecha límite.
El repositorio debe incluir:
El código actualizado de Rails con Devise y CanCanCan integrados.
Documentación actualizada en README.md con:
Credenciales de prueba (ej. admin@example.com / password)
Descripción de los roles y sus permisos.
