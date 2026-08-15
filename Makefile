# Makefile para la plantilla de TFG de UGR

###################
# Configuracion
###################

# Nombre del Tesis
THESIS = main

# Opciones para LaTex
ENGINES = -xelatex -lualatex -pdflatex
ENGINE ?= -xelatex  # Por defecto con xelatex si no se escribe nada

# Revisa programas requeridos
REQUIRED_PROGRAMS := latexmk
$(foreach prog,$(REQUIRED_PROGRAMS),\
    $(if $(shell which $(prog)),,$(error "$(prog) not found in PATH")))

# Revisa si las opciones son válidas
ifneq ($(filter all pvc, $(MAKECMDGOALS)), ) # Si escribió all o pvc
    ifeq ($(filter $(ENGINES), $(ENGINE)), ) # Si escribió xelatex y/o lualatex
        $(info Error: Expected $$ENGINE in {$(ENGINES)}, Got "$(ENGINE)")
        $(info Setting default $$ENGINE to "-xelatex")
        ENGINE = -xelatex
    endif
endif

# Opciones para latexmk
LATEXMK_OPT = \
    -quiet \
    -file-line-error \
    -interaction=nonstopmode \
    -halt-on-error \
    -synctex=1 \
    -recorder \
    -usepretex="\listfiles" \
    $(ENGINE)

# Para el modo de visualización en vivo
LATEXMK_OPT_PVC = $(LATEXMK_OPT) -pvc

###################
# Detección del SO
###################

# Detectar el SO y configurar los comandos de forma respectiva
ifdef SystemRoot
    # Windows
    RM = del /Q # Borrar silencioso
    RMDIR = rmdir /S /Q
    MKDIR = mkdir
    OPEN = start
else
    # Unix-like systems (Linux, macOS)
    RM = rm -f # Borrar forzosamente
    RMDIR = rm -rf
    MKDIR = mkdir -p
    ifeq ($(shell uname),Darwin)
        # macOS
        OPEN = open
    else
        # Linux
        OPEN = xdg-open
    endif
endif

###################
# Objetivos
###################

# Forzamos las siguientes acciones ignorando el sistema de archivo
# Regla FORCE_MAKE como regla vacía para forzar la reconstrucción de nuevo
.PHONY: all thesis pvc view wordcount clean cleanall help FORCE_MAKE

thesis: all

# Objetivo por defecto
all: $(THESIS).pdf

$(THESIS).pdf: $(THESIS).tex FORCE_MAKE
	@echo "Building $(THESIS).pdf with $(ENGINE)..."
	@latexmk $(LATEXMK_OPT) $<

# Modo de visualización en vivo
pvc: $(THESIS).tex
	@echo "Starting preview continuous mode..."
	@latexmk $(LATEXMK_OPT_PVC) $(THESIS)

# Visualizar el pdf
view: $(THESIS).pdf
	@echo "Opening $(THESIS).pdf..."
	$(OPEN) $<

# Borrar archivos auxiliares
clean:
	@echo "Cleaning auxiliary files..."
	-@latexmk -c -silent $(THESIS).tex 2> /dev/null
	-@find . -name "*.aux" -type f -delete
	-@find . -name "*.bbl" -type f -delete
	-@find . -name "*.blg" -type f -delete
	@echo "Clean complete."

# Borrar todos los archivos generados
cleanall:
	@echo "Cleaning all generated files..."
	-@latexmk -C -silent $(THESIS).tex 2> /dev/null
	-@find . -name "*.aux" -type f -delete
	-@find . -name "*.bbl" -type f -delete
	-@find . -name "*.blg" -type f -delete
	-@find . -name "*.synctex.gz" -type f -delete
	@echo "Clean complete."

# Help target
help:
	@echo "Available targets:"
	@echo "  all       - Build PDF (default)"
	@echo "  pvc       - Preview continuously"
	@echo "  view      - Open PDF"
	@echo "  clean     - Remove auxiliary files"
	@echo "  cleanall  - Remove all generated files"
	@echo "  help      - Show this help message"
	@echo ""
	@echo "Available engines (use ENGINE=<option>):"
	@echo "  -xelatex (default)"
	@echo "  -lualatex"
	@echo "  -pdflatex"
	@echo ""
	@echo "Example usage:"
	@echo "  make"
	@echo "  make ENGINE=-lualatex"
	@echo "  make pvc"

# Force remake (regla vacía para forzar la reconstrucción del pdf)
FORCE_MAKE:
