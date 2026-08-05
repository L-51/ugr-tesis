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
REQUIRED_PROGRAMS := latexmk texcount
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
# Targets
###################

.PHONY: all thesis pvc view wordcount clean cleanall help FORCE_MAKE

# Legacy alias
thesis: all

# Default target
all: $(THESIS).pdf

# Force remake
$(THESIS).pdf: $(THESIS).tex FORCE_MAKE
	@echo "Building $(THESIS).pdf with $(ENGINE)..."
	@latexmk $(LATEXMK_OPT) $<

# Preview continuous mode
pvc: $(THESIS).tex
	@echo "Starting preview continuous mode..."
	@latexmk $(LATEXMK_OPT_PVC) $(THESIS)

# View PDF
view: $(THESIS).pdf
	@echo "Opening $(THESIS).pdf..."
	$(OPEN) $<

# Word count
wordcount: $(THESIS).tex
	@echo "Counting words in $(THESIS).tex..."
	@if grep -v ^% $< | grep -q '\\documentclass\[[^\[]*english'; then \
		texcount $< -inc -char-only | awk '/total/ {getline; print "英文字符数 (Latin characters)\t:",$$4}'; \
	else \
		texcount $< -inc -ch-only   | awk '/total/ {getline; print "纯中文字数 (Chinese characters)\t:",$$4}'; \
	fi
	@texcount $< -inc -chinese | awk '/total/ {getline; print "总字数 (Total characters)\t:",$$4}'

# Clean auxiliary files
clean:
	@echo "Cleaning auxiliary files..."
	-@latexmk -c -bibtex -silent $(THESIS).tex 2> /dev/null
	@echo "Clean complete."

# Clean all generated files
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
	@echo "  wordcount - Count words in Chinese and English"
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

# Force remake
FORCE_MAKE:
