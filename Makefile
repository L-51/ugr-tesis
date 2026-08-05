# Makefile para la plantilla de TFG de UGR

###################
# Configuracion
###################

# Nombre del Tesis
TESIS = main

# Opciones para LaTex
ENGINES = -xelatex -lualatex
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
    -quiet \                   # Silencioso, sin la salida estándar masiva
    -file-line-error \         # Si hubiera error indica la líneas
    -halt-on-error \           # Si hay un error de sintaxis grave, se para
    -interaction=nonstopmode \ # Seguir compilando con advertencias (warnings) 
    -shell-escape \            # Permite que ejecute código externo 
    -synctex=1 \               # Permite doble clic en el PDF para ir al código
    -recorder \                # Registrar archivo auxiliares generados
    -usepretex="\listfiles" \  # Inserta comando de depuración antes de compilar
    $(ENGINE)                  # Añade la opción elegida

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
	@echo "Building $@ with $(ENGINE)..."
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
	-@latexmk -c -bibtex -silent $(THESIS).tex 2> /dev/null
	@echo "Clean complete."

# Borrar todos los archivos generados
cleanall:
	@echo "Cleaning all generated files..."
	-@latexmk -C -bibtex -silent $(THESIS).tex 2> /dev/null
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
	@echo ""
	@echo "Example usage:"
	@echo "  make"
	@echo "  make ENGINE=-lualatex"
	@echo "  make pvc"

# Force remake (regla vacía para forzar la reconstrucción del pdf)
FORCE_MAKE:
