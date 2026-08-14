<div align="center">  
  <h2>
  </h2>    
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="./figures/ugr-tesis-dark.svg">
    <source media="(prefers-color-scheme: light)" srcset="./figures/ugr-tesis.svg">
    <img alt="UGR Tesis Banner" src="./figures/ugr-tesis-dark.svg">
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
  
## 🚀 Quick Start
| Modo | Explicación |
| --- | --- |
| **Overleaf** | [Abrir en Overleaf](https://www.overleaf.com/docs?snip_uri=https://github.com/L-51/ugr-tesis/archive/refs/heads/main.zip) y... ¡Ya puedes comenzar con tu proyecto! |
| **Local** | Instalar TeX Live, clona el repositorio y ejecuta `make` |

## 🍃 Overleaf
[Abrir en Overleaf](https://www.overleaf.com/docs?snip_uri=https://github.com/L-51/ugr-tesis/archive/refs/heads/main.zip) para comenzar a trabajar directamente o [Descargar zip](https://github.com/L-51/ugr-tesis/archive/refs/heads/main.zip) y crear un nuevo proyecto en Overleaf importándolo.

> [!TIP]
> Una vez estando en el proyecto:
> File -> Settings -> Spelling and language, y en Spellcheck seleccionar **Spanish**.
> File -> Settings -> Compiler, y en Main document seleccionar **main.tex**, Compiler seleccionar pdfLaTeX, XeLaTeX o LuaLaTeX.

## 💻 Local
Instalar **MiKTeX**(Recomendable en Windows si tiene problema de espacio con la opción **Install missing packages on-the-fly**) o **TeXLive**(Recomendable en general).

<details>
  <summary><b>Windows</b></summary>
  <ul>
    <li><a href="https://miktex.org/download">Descargar MiKTeX</a></li>
    <li><a href="https://tug.org/texlive/windows.html">Descargar TeXLive</a></li>
  </ul>
</details>
<details>
  <summary><b>Linux</b></summary>
  <ul>
    <li><a href="https://miktex.org/download">Descargar MiKTeX</a></li>
    <li>TeXLive:
      <pre><code>sudo apt install texlive-full -y</code></pre>
    </li>
  </ul>
</details>
<details>
  <summary><b>MacOS</b></summary>
  <ul>
    <li><a href="https://miktex.org/download">Descargar MiKTeX</a></li>
    <li>MacTex:
      <pre><code>brew install --cask mactex</code></pre>
      En caso de no disponer <code>brew</code>: https://brew.sh/
    </li>
  </ul>
</details>

Clona este repositorio:

```shell
git clone https://github.com/L-51/ugr-tesis.git
cd ugr-tesis
```
o [Descargar zip](https://github.com/L-51/ugr-tesis/archive/refs/heads/main.zip) tras eso abrilo.
