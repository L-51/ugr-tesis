<div align="center">  
  <h2>
  </h2>    
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/user-attachments/assets/b5f3644b-f95c-4c83-86a3-05d6e6681790">
    <source media="(prefers-color-scheme: light)" srcset="https://github.com/user-attachments/assets/e57df350-5019-4675-91a8-aeecd0b5c756">
    <img alt="UGR Tesis Banner" src="https://github.com/user-attachments/assets/b5f3644b-f95c-4c83-86a3-05d6e6681790">
  </picture>

  <hr>
  <p align="center">
    <a href="README.md">Español</a> | English
  </p>
  <h2>    
  </h2>
</div>
<p align="center"><strong> LaTeX template for Bachelor's (TFG) and Master's (TFM) Theses at the University of Granada, based on institutional documentation and requirements. </strong></p>

> [!IMPORTANT]
> The specific requirements for each degree must be checked against their corresponding regulations.

<div>
  <h2>
  </h2>
  
  <a href="https://github.com/L-51/ugr-tesis/releases"><img src="https://img.shields.io/github/v/release/L-51/ugr-tesis?display_name=tag&style=for-the-badge" alt="Release"></a>
  <a href="https://www.overleaf.com/docs?snip_uri=https://github.com/L-51/ugr-tesis/archive/refs/heads/main.zip"><img src="https://img.shields.io/badge/Open%20in-Overleaf-47A141?style=for-the-badge&logo=overleaf" alt="Open in Overleaf"></a>
  <a href="https://github.com/L-51/ugr-tesis/actions/workflows/ci.yml"><img src="https://img.shields.io/github/actions/workflow/status/L-51/ugr-tesis/ci.yml?style=for-the-badge&logo=github" alt="CI"></a>
  <a href="https://www.ugr.es/"><img src="https://img.shields.io/badge/UGR-Tesis-000000?style=for-the-badge&labelColor=CE0037" alt="ugr-tesis-logo"></a>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" alt="License MIT"></a>
  <img src="https://img.shields.io/badge/Engine-XeLaTeX%20%7C%20LuaLaTeX%20%7C%20pdfLaTex-47A141?style=for-the-badge" alt="Engines">
  <a href="https://github.com/L-51/ugr-tesis/stargazers"><img src="https://img.shields.io/github/stars/L-51/ugr-tesis?style=for-the-badge" alt="Stars"></a>
  <hr>
</div>

# Preview

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
      <img src="https://github.com/user-attachments/assets/b86dbf2f-2f7b-4ec7-959d-e208baac6de2" alt="title and subtitle">
    </td>
    <td>
      <img src="https://github.com/user-attachments/assets/0c7304b9-c539-460d-8c91-27743e986803" alt="bibliography">
    </td>
  </tr>
</table>

## Table of Contents
- [🚀 Quick Start](#-quick-start)
- [🍃 Overleaf](#-overleaf)
- [💻 Local](#-local)
- [⚙️ Configuration](#️-configuration)
- [❔ FAQ](#-faq)
- [🤝 Contributing](#-contributing)
  
## 🚀 Quick Start
| Mode | Explanation |
| --- | --- |
| **Overleaf** | [Open in Overleaf](https://www.overleaf.com/docs?snip_uri=https://github.com/L-51/ugr-tesis/archive/refs/heads/main.zip) and... You are ready to start your project! |
| **Local** | Install TeX Live, clone the repository, and run `make` |
| **GitHub Codespaces** | Coming soon |

## 🍃 Overleaf
[Open in Overleaf](https://www.overleaf.com/docs?snip_uri=https://github.com/L-51/ugr-tesis/archive/refs/heads/main.zip) to start working directly, or [Download zip](https://github.com/L-51/ugr-tesis/archive/refs/heads/main.zip) and create a new project in Overleaf by importing it.

> [!TIP]
> Once inside the project:  
> Go to File -> Settings -> Spelling and language, and in Spellcheck select **Spanish** (or your preferred language).  
> Go to File -> Settings -> Compiler. For Main document select **main.tex**, and for Compiler select pdfLaTeX, XeLaTeX, or LuaLaTeX.  
> If you do not have a premium account, it is recommended to compile using Compile Mode -> **Fast [draft]** (to avoid timeouts), and then switch back to normal mode for the final render.

## 💻 Local
[Install **MiKTeX**](https://miktex.org/download) (Recommended on Windows if you have space constraints, using the **Install missing packages on-the-fly** option) or **TeXLive** (Recommended in general).

#### TeXLive
- **Windows**: <a href="https://tug.org/texlive/windows.html">Download TeXLive</a>
- **Linux**: <code>sudo apt install texlive-full -y</code>
- **MacOS**: <code>brew install --cask mactex</code>. If you don't have <code>brew</code>: https://brew.sh/

Clone this repository:

```shell
git clone https://github.com/L-51/ugr-tesis.git
cd ugr-tesis
```
or [Create your own repository from this template](https://github.com/L-51/ugr-tesis/generate) and clone your new repository:

```shell
git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY.git
cd ugr-tesis
```

or [Download zip](https://github.com/L-51/ugr-tesis/archive/refs/heads/main.zip) and extract it.

### Command Line
To compile:
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
> On **Windows**, use `.\make.bat` instead of `make`.

And the generated PDF will be:
```
main.pdf
```
### Visual Studio Code
Install the **LaTeX Workshop** extension, and open this directory (the `ugr-tesis` folder) in VSC.  
Once opened, select `main.tex`. Pressing `Ctrl + S` will automatically trigger the compilation.  
> [!TIP]
> <table>
>   <tr>
>     <td><img src="https://github.com/user-attachments/assets/54e4ea80-eb53-4963-9307-b6eae447d3a1" alt="PDF Viewer"></td>
>     <td>This button is used to view the PDF, which is very useful for seeing changes generated in real-time during compilation.</td>
>   </tr>
> </table>

## ⚙️ Configuration
| File | Should I modify it? |
|---|---|
| **`metadata.tex`** | Yes, this is where you will input your personal data (Name, ID, ...), document data (Title, Date, ...), etc., so they are reflected in the document. |
| **`chapters/*.tex`** | Yes, these are the different chapters the document will contain. |
| **`references.bib`** | Yes, this is where you will include the bibliography. |
| **`main.tex`** | Occasionally, to include new chapters or modify document preferences. |
| **`styles/ugrtesis.sty`** | Normally no. It is the file where the required packages and different configuration options for the template are defined. |
| **`styles/*.def`** | Contain the internal definitions of the template. Normally it is not necessary to modify them. |

## ❔ FAQ
<ol>
  <li>
   <details>
    <summary><h3><b>What is this repository?</b></h3></summary>
    It is a template along with the necessary tools to write a thesis at the University of Granada. It includes the document structure, LaTeX configuration, and resources needed to generate and validate the document.
  </details>
  </li>
  <li>
   <details>
    <summary><h3><b>What is LaTeX?</b></h3></summary>
    LaTeX is a document preparation system, heavily used in academic and scientific writing. In this project, it is used to write and generate the thesis in PDF format.
  </details>
  </li>
  <li>
   <details>
    <summary><h3><b>Is it official?</b></h3></summary>
    <b>NO</b>, it is a community-driven template, not an official template from the University of Granada.
  </details>
  </li>
  <li>
    <details>
      <summary><h3><b>Does it work for my degree?</b></h3></summary>
      Although this template is based on institutional documentation and requirements, you must still verify the specific regulations demanded by your degree.
    </details>
  </li>
  <li>
    <details>
      <summary><h3><b>Does it work for a Master's Thesis (TFM)?</b></h3></summary>
      Although this template is based on institutional documentation and requirements, you must still verify the specific regulations demanded by your Master's program.
    </details>
  </li>
  <li>
    <details>
      <summary><h3><b>Does it work in Overleaf?</b></h3></summary>
      <b>YES</b>, you can check the <a href="#-overleaf">Overleaf</a> section.
    </details>
  </li>
  <li>
    <details>
      <summary><h3><b>Which files do I need to modify?</b></h3></summary>
      Mainly <code>metadata.tex</code>, <code>main.tex</code>, <code>references.bib</code>, and add/modify chapters in the <code>chapters/</code> directory, as explained in the <a href="#️-configuration">Configuration</a> section.
    </details>
  </li>
  <li>
    <details>
      <summary><h3><b>How do I change the bibliography?</b></h3></summary>
      By editing the <code>references.bib</code> file, which comes with examples to guide you on its use.
    </details>
  </li>
  <li>
    <details>
      <summary><h3><b>How do I add a second advisor/tutor?</b></h3></summary>
      By editing the <code>metadata.tex</code> file; when typing the advisors' names, separate them using a double backslash <code>\\</code>.
    </details>
  </li>
  <li>
    <details>
      <summary><h3><b>How do I format for a Double Degree?</b></h3></summary>
      In the <code>metadata.tex</code> file, fill in the data for <code>\centroSec</code> and <code>\logoCentroSec</code>.
    </details>
  </li>
  <li>
    <details>
      <summary><h3><b>How do I compile locally?</b></h3></summary>
      If you are on Linux/macOS, use the <code>make</code> file, and for Windows use <code>make.bat</code> as indicated in the <a href="#-local">Local</a> section.
    </details>
  </li>
</ol>

## 🤝 Contributing
Thank you for your interest in contributing to `ugr-tesis`!  
This project is open-source and community-maintained. Any help to improve the template, fix bugs, or adapt it to new faculties is welcome.  
More information in [CONTRIBUTING.md](.github/CONTRIBUTING.md).

---
<p align="center"><small>If this template has saved you formatting hours on your Thesis, the best way to thank us is by giving the repository a ⭐ and mentioning it to your classmates.</small></p>

<h2></h2>
<p align="center"><small>This project is available under the <a href="./LICENSE">MIT License</a></small></p>
