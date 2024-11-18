Horario de Clases (app_horario) - Flutter App

Descripción del proyecto:

Esta aplicación móvil es desarrollada con Flutter y permite a los usuarios gestionar su horario de clases. Hasta el momento la aplicación contiene un calendario interactivo para visualizar las fechas, también tiene un menú desplegable que se encuentra en la pantalla principal y en con el cual se puede acceder a las secciones de Docentes, Materias y Agregar clase, por el momento en la opción de Docentes se abre otra pantalla que contiene una tabla con la lista de docentes registrados con su información relevante  y en la opción de materias se encuentra una tabla con la lista de materias registradas con sus detalles importantes como su duración y docente asignado.


Instalación:

Para ejecutar este proyecto, se necesita tener instalado Flutter. Para eso hay que asegurarse de tener los siguientes elementos instalados que se pueden encontrar en la pagina oficial de Flutter (flutter.dev) y configurarlos adecuadamente en el sistema:

1.SDK de Flutter.
2.Android Studio para que funcione como emulador para probar la aplicación.
4.VS Code para la edición del código.

Para la configuración de Flutter: 
-En Visual Studio Code se debe instalar las extenciones de Flutter y Dart desde el marketplace de VS Code.
-En Android Studio se debe elegir el emulador de preferencia e instalar su API. 
-Para evitar problemas con las rutas se debe agregar la ruta de flutter/bin a las variables de entorno. 
-Por ultimo se abre una terminal en VS Code y ejecuta: flutter doctor, para instalar componentes adicionales y verificará la configuración.


Abrir el proyecto:

-Si el archivo esta guardado, se puede abrir en el editor de código Visual Studio Code desde File.
-Se debe conectar VS Code a un dispositivo Android o inicie un emulador.
-Se debe instalar las dependencias, abriendo una terminal y ejecutando el siguiente comando: flutter pub get.
-Con todo lo demás adecuadamente realizado se puede ejecutar el código desde el archivo main.


Estructura del Proyecto:

El proyecto se organiza en varios archivos para manejar diferentes funcionalidades:

main.dart: Archivo principal que inicializa la aplicación.
horario_screen.dart: Contiene la pantalla principal con un calendario y un menú desplegable para acceder a otras secciones.
materias_screen.dart: Gestiona y presenta la información sobre las materias en una tabla.
docentes_screen.dart: Muestra los detalles de los docentes en una tabla interactiva.
pubspec.yaml: Se encuentra las dependencias.
