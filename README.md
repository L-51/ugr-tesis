<div align="center">  
  <h2>
  </h2>    
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/user-attachments/assets/b5f3644b-f95c-4c83-86a3-05d6e6681790">
    <source media="(prefers-color-scheme: light)" srcset="https://github.com/user-attachments/assets/e57df350-5019-4675-91a8-aeecd0b5c756">
    <img alt="UGR Tesis Banner" src="https://github.com/user-attachments/assets/b5f3644b-f95c-4c83-86a3-05d6e6681790">
  </picture>
  
  <h2>    
  </h2>
</div>
<p align="center"><strong> Plantilla LaTeX para TFG/TFM de la Universidad de Granada, basada en documentación y requisitos institucionales. </strong></p>

> [!IMPORTANT]
> Los requisitos específicos de cada titulación deben comprobarse en su normativa correspondiente.

<div>
  <h2>
  </h2>
  
  <a href="https://github.com/L-51/ugr-tesis/releases"><img src="https://img.shields.io/github/v/release/L-51/ugr-tesis?label=Release&style=for-the-badge" alt="Release"></a>
  <a href="https://www.overleaf.com/docs?snip_uri=https://github.com/L-51/ugr-tesis/archive/refs/heads/main.zip">
    <img src="https://img.shields.io/badge/Open%20in-Overleaf-47A141?style=for-the-badge&logo=overleaf" alt="Open in Overleaf">
  </a>
  <a href="https://www.ugr.es/"><img src="https://img.shields.io/badge/UGR-Tesis-000000?style=for-the-badge&labelColor=CE0037" alt="ugr-tesis-logo"></a>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" alt="License MIT"></a>
  <img src="https://img.shields.io/badge/Engine-XeLaTeX%20%7C%20LuaLaTeX%20%7C%20pdfLaTex-47A141?style=for-the-badge" alt="Engines">
  <a href="https://github.com/L-51/ugr-tesis/stargazers"><img src="https://img.shields.io/github/stars/L-51/ugr-tesis?style=for-the-badge" alt="Stars"></a>
  <hr>
</div>

# Vista previa

<table>
  <tr>
    <td>
      <img src="https://github.com/user-attachments/assets/ce01728e-b2b1-4a8a-b434-92a372406584" alt="ugr-cover">
    </td>
    <td>
      <img src="https://github.com/user-attachments/assets/c863aea7-aae6-4c36-92d8-21eb43340f9e" alt="ugr-statement">
    </td>
  </tr>
</table>
<table>
  <tr>
    <td>
      <img src="https://github.com/user-attachments/assets/b86dbf2f-2f7b-4ec7-959d-e208baac6de2" alt="titulo y subtitulo">
    </td>
    <td>
      <img src="https://github.com/user-attachments/assets/0c7304b9-c539-460d-8c91-27743e986803" alt="bibliografia">
    </td>
  </tr>
</table>

## Índice
- [🚀 Quick Start](#-quick-start)
- [🍃 Overleaf](#-overleaf)
- [💻 Local](#-local)
- [⚙️ Configuración](#️-configuración)
- [❔ FAQ](#-faq)
  
## 🚀 Quick Start
| Modo | Explicación |
| --- | --- |
| **Overleaf** | [Abrir en Overleaf](https://www.overleaf.com/docs?snip_uri=https://github.com/L-51/ugr-tesis/archive/refs/heads/main.zip) y... ¡Ya puedes comenzar con tu proyecto! |
| **Local** | Instalar TeX Live, clona el repositorio y ejecuta `make` |
| **GitHub Codespaces** | Próximamente|

## 🍃 Overleaf
[Abrir en Overleaf](https://www.overleaf.com/docs?snip_uri=https://github.com/L-51/ugr-tesis/archive/refs/heads/main.zip) para comenzar a trabajar directamente o [Descargar zip](https://github.com/L-51/ugr-tesis/archive/refs/heads/main.zip) y crear un nuevo proyecto en Overleaf importándolo.

> [!TIP]
> Una vez estando en el proyecto:
> File -> Settings -> Spelling and language, y en Spellcheck seleccionar **Spanish**.
> File -> Settings -> Compiler, y en Main document seleccionar **main.tex**, Compiler seleccionar pdfLaTeX, XeLaTeX o LuaLaTeX.

## 💻 Local
[Instalar **MiKTeX**](https://miktex.org/download)(Recomendable en Windows si tiene problema de espacio con la opción **Install missing packages on-the-fly**) o **TeXLive**(Recomendable en general).

#### TeXLive
- **Windows**: <a href="https://tug.org/texlive/windows.html">Descargar TeXLive</a>
- **Linux**: <code>sudo apt install texlive-full -y</code>
- **MacOS**: <code>brew install --cask mactex</code>. En caso de no disponer <code>brew</code>: https://brew.sh/

Clonas este repositorio:

```shell
git clone https://github.com/L-51/ugr-tesis.git
cd ugr-tesis
```
o [Creas tú propio repositorio a partir de esta](https://github.com/L-51/ugr-tesis/generate) y ya clonas tu repositorio:

```shell
git clone https://github.com/TU-USUARIO/TU-REPOSITORIO.git
cd ugr-tesis
```

o [Descargar zip](https://github.com/L-51/ugr-tesis/archive/refs/heads/main.zip) y tras eso ábrelo.

### Línea de Comandos
Para compilar:
```shell
$ make help
Available targets:
  all       - Build PDF (default)
  pvc       - Preview continuously
  view      - Open PDF
  clean     - Remove auxiliary files
  cleanall  - Remove all generated files
  help      - Show this help message

Available engines (use ENGINE=<option>):
  -xelatex (default)
  -lualatex
  -pdflatex

Example usage:
  make
  make ENGINE=-lualatex
  make pvc
```
> [!NOTE]
> En **Windows** en vez de `make` sería `.\make.bat`

Y el PDF generado será:
```
main.pdf
```
### Visual Studio Code
Instalar la extensión **LaTeX Workshop**, y abrir este directorio en VSC, la carpeta `ugr-tesis`.  
Una vez abierto, selecciona `main.tex`, con `Ctrl + S` se activará automáticamente la compilación.  
> [!TIP]
> <table>
>   <tr>
>     <td><img src="https://github.com/user-attachments/assets/54e4ea80-eb53-4963-9307-b6eae447d3a1" alt="Visor de PDF"></td>
>     <td>Este botón sirve para visualizar el PDF, muy útil para ver cambios generados en tiempo real durante la compilación.</td>
>   </tr>
> </table>

## ⚙️ Configuración
| Archivo | ¿Lo modifico? |
|---|---|
| **`metadata.tex`** | Sí, es donde introducirás tus datos(Nombre, DNI, ...), los del documento(Título, Fecha,...), etc. para que sea reflejado en el documento |
| **`chapters/*.tex`** | Sí, son los diferentes capítulos que contendrán el documento |
| **`references.bib`** | Sí, es donde incluirás la bibliografía |
| **`main.tex`** | Ocasionalmente, para incluir nuevos capítulos o modificar preferencias del documento |
| **`styles/ugrtesis.sty`** | Normalmente no, es el archivo donde se definen los paquetes a incluir y diferentes tipos de configuración para la plantilla |
| **`styles/*.def`** | Normalmente no, son los archivos donde se definen las API públicas |

## ❔ FAQ
<ol>
  <li>
   <details>
    <summary><h3><b>¿Es oficial?</b></h3></summary>
    <b>NO</b>, es una plantilla comunitaria, no una plantilla oficial de la Universidad de Granada.
  </details>
  </li>
  <li>
    <details>
      <summary><h3><b>¿Sirve para mi grado?</b></h3></summary>
      Aunque es una plantilla que esta basada en documentación y requisitos institucionales, aún deben comprobar que lo que exige la normativa correspondiente de su titulación.
    </details>
  </li>
  <li>
    <details>
      <summary><h3><b>¿Sirve para TFM?</b></h3></summary>
      Aunque es una plantilla que esta basada en documentación y requisitos institucionales, aún deben comprobar que lo que exige la normativa correspondiente de su titulación.
    </details>
  </li>
  <li>
    <details>
      <summary><h3><b>¿Funciona en Overleaf?</b></h3></summary>
      <b>SÍ</b>, puedes mirar el apartado de <a href="#-overleaf">Overleaf</a>.
    </details>
  </li>
  <li>
    <details>
      <summary><h3><b>¿Qué archivos tengo que modificar?</b></h3></summary>
      Principalmente <code>metadata.tex</code>, <code>main.tex</code>, <code>references.bib</code> y añadir/modificar capítulos en <code>chapters/</code> como se puede ver en la explicación de <a href="#️-configuración">Configuración</a>.
    </details>
  </li>
  <li>
    <details>
      <summary><h3><b>¿Cómo cambio la bibliografía?</b></h3></summary>
      Editando el archivo <code>references.bib</code> cuál viene con unos ejemplos para hacer de guía en su uso.
    </details>
  </li>
  <li>
    <details>
      <summary><h3><b>¿Cómo añado un segundo tutor?</b></h3></summary>
      Editando el archivo <code>metadata.tex</code> al escribir los tutores separar los nombres mediante una doble barra <code>//</code>.
    </details>
  </li>
  <li>
    <details>
      <summary><h3><b>¿Cómo hago un doble grado?</b></h3></summary>
      En el archivo <code>metadata.tex</code> rellenar los datos en <code>\centroSec</code> y <code>\logoCentroSec</code>.
    </details>
  </li>
  <li>
    <details>
      <summary><h3><b>¿Cómo compilo localmente?</b></h3></summary>
      Si es sistema Linux/MacOs, haciendo uso del archivo <code>make</code> y en caso de Windows con <code>make.bat</code> como se indica en apartado <a href="#-local">Local</a>.
    </details>
  </li>
</ol>

<h2></h2>
<p align="center"><small>Este proyecto está disponible bajo la <a href="./LICENSE">licencia MIT</a></small></p>
