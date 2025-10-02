echo "# Reto Karate   
Este proyecto contiene la automatización de la API de usuarios de [Serverest](https://serverest.dev) utilizando *Karate
DSL*.

## 📌 Estructura del Proyecto

- *src/test/java/examples/users/* → Archivos .feature de cada endpoint
- *karate-config.js* → Configuración global y utilidades
- *runnerKarate.java* → Clase runner para ejecutar los features

## 🚀 Endpoints Automatizados

- GET /usuarios → Listar usuarios
- POST /usuarios → Registrar usuario
- GET /usuarios/{_id} → Buscar usuario por ID
- PUT /usuarios/{_id} → Actualizar usuario
- DELETE /usuarios/{_id} → Eliminar usuario

## 🔧 Requisitos

- Java 11+
- Maven
- Git

## ▶️ Ejecución

Para ejecutar los features realizarlo desde el archivo runnerKarate
ruta: src/test/java/runners/runnerKarate.java

*Se debe cambiar los valores de las tablas de Ejemplos en cada ejecucion

## 👨‍💻 Autor

Walter Philippe Lopez Ramirez
