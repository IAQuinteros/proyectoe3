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
Credenciales de prueba (ej. admin@example.com / password) (admin@example.com / password123)
Descripción de los roles y sus permisos.
