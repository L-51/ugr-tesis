# Guía de Contribución
## 📂 Estructura del Repositorio

- **Núcleo de la plantilla (`styles/`)**:
  - `ugrthesis.sty`: El archivo principal que gestiona las opciones y dependencias.
  - `*.def`: Archivos que encapsulan macros privadas, el diseño visual de la portada y la declaración.
- **Archivos de usuario (`chapters/`, `main.tex`)**: Ejemplos prácticos de cómo el estudiante debe estructurar su TFG. Destaca `metadata.tex`, que actúa como la API pública.
- **Scripts de compilación**: `Makefile` (Unix) y `make.bat` (Windows).
- **Integración Continua (`.github/workflows/`)**: Archivos YAML que validan que la plantilla compila en Linux, Windows y macOS.

## Cómo contribuir

### Buscar ayuda o proponer ideas
Si tienes dudas sobre cómo usar la plantilla o quieres proponer una nueva funcionalidad, por favor abre un hilo en la pestaña de **[Discussions](https://github.com/L-51/ugr-tesis/discussions)**. 

### Reportar un Error
Si al compilar la plantilla encuentras un error o el diseño se rompe:
1. Ve a la pestaña **[Issues](https://github.com/L-51/ugr-tesis/issues)** y crea uno nuevo.
2. Explica qué motor estás usando (`XeLaTeX`, `LuaLaTeX` o `pdfLaTeX`) y tu sistema operativo.
3. **Imprescindible:** Adjunta el archivo `main.log` o pega el mensaje de error exacto que te devuelve la terminal.

### Enviar un Pull Request
Si has arreglado un error o programado una mejora y quieres añadirla al proyecto oficial:

1. Haz un **Fork** de este repositorio.
2. Clona tu Fork localmente y crea una nueva rama: `git checkout -b fix/nombre-de-la-rama`.
3. Realiza los cambios. Asegúrate de no romper la compatibilidad con las variables de `metadata.tex`.
4. Sube los cambios a tu repositorio: `git push origin fix/nombre-de-la-rama`.
5. Abre un **Pull Request** hacia la rama `main` de este repositorio.
6. **Importante:** Al abrir el PR, GitHub Actions ejecutará una compilación automática en 3 sistemas operativos. Revisa que todas las pruebas pasen en verde ✅ antes de solicitar revisión.

## Historia del Proyecto

| Fecha | Contribuidor | Contenido de la Contribución |
| :---: | :--- | :--- |
| Ago 2026 | [L-51](https://github.com/L-51) | Creación original del proyecto. Arquitectura modular, soporte multiplataforma, inyección de metadatos PDF, soporte `XeLaTeX`/`LuaLaTeX`/`pdfLaTeX` y pipeline de GitHub Actions. |

Agradecemos enormemente el esfuerzo y las contribuciones de todos los colaboradores mencionados anteriormente. Si consideran que este proyecto les ha sido de ayuda para su trabajo de fin de grado o su tesis, agradeceríamos que lo mencionaran en la sección de agradecimientos.

---
<p align="center"><small>Si esta plantilla te ha ahorrado horas de formato en tu Trabajo Fin de Grado, el mayor agradecimiento que puedes hacernos es darle una ⭐ al repositorio y mencionarlo a tus compañeros.</small></p>
