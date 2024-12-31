OUTPUT = asciigen
MAIN = main.py

ifeq ($(OS),Windows_NT)
    INSTALL_DIR = C:/Program Files/asciigen
    RM = del
    MV = move
else
    INSTALL_DIR = /usr/local/bin/
    RM = rm -f
    MV = mv
endif

$(OUTPUT): $(MAIN)
	python -m PyInstaller --onefile $(MAIN) && $(MV) ./dist/main $(OUTPUT)

install: $(OUTPUT)
	$(MV) $(OUTPUT) $(INSTALL_DIR)

uninstall:
	$(RM) $(INSTALL_DIR)$(OUTPUT)

clean:
	$(RM) -rf build dist $(OUTPUT) *.spec
