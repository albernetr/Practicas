
# Azure PowerShell Console – Automatización tipo Aplicación de Consola

Este proyecto forma parte de un entrenamiento personal enfocado en la automatización de tareas en Azure utilizando PowerShell y Azure CLI.  
Fue desarrollado como una aplicación de consola retro-profesional, con un menú estructurado y scripts reutilizables.

> 📌 Este entrenamiento fue realizado con apoyo de inteligencia artificial generativa como copiloto técnico.

## 🎯 Funcionalidades incluidas

- 🔐 Inicio de sesión en Azure (`01_Login_azure.ps1`): Este script permite autenticarte en tu cuenta de Azure utilizando tus credenciales, estableciendo una sesión segura para ejecutar comandos posteriores.
- 📋 Selección dinámica de suscripciones (`02_Seleccionar_Suscripcion_Azure.ps1`): Este script facilita la selección de la suscripción de Azure que deseas utilizar, permitiendo cambiar entre diferentes suscripciones de manera dinámica.
- 📂 Selección y configuración de grupos de recursos (`03_Seleccionar_GrupoRecursos_Azure.ps1`): Con este script, puedes seleccionar y configurar el grupo de recursos en el que deseas trabajar, asegurando que los recursos se gestionen en el contexto adecuado.
- 📊 Resumen del entorno actual y recursos asociados (`04_Resumen_Actual_Entorno_Azure.ps1`): Este script genera un resumen detallado del entorno actual, incluyendo información sobre los recursos asociados, lo que te permite tener una visión clara del estado de tus recursos en Azure.
- 📜 Menú principal integrado (`00_inicio.ps1`): Este script actúa como el punto de entrada principal de la aplicación, presentando un menú estructurado que permite acceder a las diferentes funcionalidades de manera sencilla y organizada.


## 📁 Estructura del proyecto

```
Scripts/
└── Comunes/
    ├── 00_inicio.ps1
    ├── 01_Login_azure.ps1
    ├── 02_Seleccionar_Suscripcion_Azure.ps1
    ├── 03_Seleccionar_GrupoRecursos_Azure.ps1
    └── 04_Resumen_Actual_Entorno_Azure.ps1
```

## 🚀 Cómo usarlo

1. Clona el repositorio:
```bash
git clone https://github.com/albernetr/Practicas.git
```

2. Navega a la carpeta:
```bash
cd Practicas/PowerShell/Scripts/azure-powershell-console
```

3. Ejecuta el menú principal:
```powershell
./00_inicio.ps1
```

> Asegúrate de tener permisos de ejecución habilitados:
```powershell
Set-ExecutionPolicy RemoteSigned
```

## 🧠 Propósito

Este proyecto no busca ser una solución productiva definitiva, sino un entorno de estudio donde pueda practicar, aprender y consolidar buenas prácticas mientras automatizo tareas reales.

📬 ¡Agradezco sugerencias, ideas y recomendaciones!

## 📣 Créditos

Desarrollado por [@albernetr](https://github.com/albernetr) como parte de su repositorio personal de aprendizaje:
[Repositorio en GitHub](https://github.com/albernetr/Practicas/tree/master/PowerShell/Scripts/azure-powershell-console)

---

## ⚠️ Descargo de Responsabilidad / Disclaimer

### Español

Este repositorio tiene fines exclusivamente educativos y de práctica personal.  
El código, scripts y configuraciones aquí incluidos se proporcionan **"tal cual"**, sin ninguna garantía expresa o implícita.  
El autor **no se hace responsable** por errores, daños, pérdidas de información, interrupciones de servicio ni cualquier otro inconveniente que pueda surgir como resultado del uso total o parcial del contenido de este repositorio.

El uso de estos recursos queda **bajo la completa responsabilidad del usuario**. Se recomienda realizar pruebas en entornos aislados antes de aplicar cualquier script o configuración en ambientes reales o productivos.

### English

This repository is intended for educational and personal practice purposes only.  
The code, scripts, and configurations provided herein are offered **"as is"**, with **no warranties or guarantees of any kind**, express or implied.  
The author **shall not be held liable** for any errors, data loss, service disruption, or damages resulting from the use of this content, either in part or in whole.

The use of these resources is **entirely at the user's own risk**. It is strongly recommended to test everything in isolated environments before applying any script or configuration in production systems.
