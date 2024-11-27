# Flutter Timer Countdown Eficiente con Cálculos de Fechas

En este proyecto se implementa una funcionalidad de cuenta regresiva(countdown) en Flutter que calcula fechas relativas como el tiempo hasta el próximo lunes, el tiempo hasta el siguiente día a medianoche, y verifica si han pasado ciertos días desde una fecha dada. Utiliza el formato UTC para asegurar la consistencia de los cálculos en todas las zonas horarias. 

Este Timer es eficiente y para usos no exhaustivos, es útil para cuando se necesite usar timer para desencadenar acciones o mostrar tiempos de la forma más eficiente sin necesidad de tener corriendo algo en background. Usar siempre métodos como DateTime.utc() o DateTime.now().toUtc() para usar horarios globales.

![Screen Timer](/assets/Captura.PNG)

## Temas clave
- Cálculo de días hasta el próximo lunes.
- Verificación de si dos fechas están en la misma semana o el mismo día.
- Cálculo del tiempo restante hasta el próximo día a las 00:00 UTC.
- Cálculo de los días restantes hasta que hayan pasado 14 días desde una fecha dada.
- Uso de UTC para garantizar precisión en todas las zonas horarias.

## Configuracion
```yaml
dependencies:
  flutter:
    sdk: flutter
```
## Estructura del Proyecto
La aplicación está organizada en una estructura sencilla con clases separadas para la interfaz de usuario (UI) y la lógica de los cálculos.


```plaintext
├── lib
│   ├── countdown_screen.dart
│   ├── main.dart
│   ├── my_app.dart
│   └── time_countdown.dart
├── pubspec.yaml
├── pubspec.lock
```


## Instalación
Sigue estos pasos para instalar y ejecutar el proyecto en tu máquina local:


1. Clona el repositorio:


   ```bash
   git clone https://github.com/DevmenteSac/flutter_timer
    ```


2. Navega al directorio:


    ```bash
    cd flutter_timer
    ```


3. Instala las dependencias:


    ```bash
    flutter pub get
    ```


4. Ejecuta la aplicación:


    ```bash
    flutter run
    ```


## Contacto
Devmente Sac - [devmentesacontacto@gmail.com](mailto:devmentesacontacto@gmail.com)  
GitHub: [DevmenteSac](https://github.com/DevmenteSac)