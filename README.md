CONTENEDOR DOCKER CON LA BASE DE DATOS MYSQL

    Requisitos:
        -Tener docker desktop instalado y abierto.
        -Link de descarga: https://www.docker.com/products/docker-desktop/ .
        -Tutorial para la instalación: https://docs.docker.com/desktop/install/windows-install/ .
        -Que el puerto 3306 esté disponible.
    Pasos:
        1: Abrir un cmd y desplazarse a donde se tenga la carpeta de docker.
        2: Levantar el contenedor por primera vez: docker compose up.
        3: Para pararlo debería ser suficiente con Ctrl + C la primera vez.
        4: Para arrancar el contenendor cuando ya lo tienes creado el comando ese el siguiente:
            -docker start autorecambios-mysql.
        5: Para  para el contenedor el comando es el siguiente:
            -docker stop autorecambios-mysql.
        6: Si se tiene la aplicación de docker desktop se puede arrancar y parar desde allí.
