OUTPUT = asciigen
MAIN = main.py
$(OUTPUT): $(MAIN)
	python -m PyInstaller --onefile $(MAIN) && mv ./dist/main ./asciigen
install: $(OUTPUT)
	mv $(OUTPUT) /usr/local/bin/
uninstall:
	rm /usr/local/bin/$(OUTPUT)
clean:
	rm -rf build dist $(OUTPUT) *.spec
