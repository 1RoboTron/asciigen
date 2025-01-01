.PHONY: all install uninstall clean
all: asciigen
asciigen:
	./venv/bin/python -m PyInstaller --onefile main.py -n asciigen && mv ./dist/asciigen ./
install: asciigen
	mv asciigen /usr/local/bin/
uninstall:
	rm -f /usr/local/bin/asciigen
clean:
	rm -rf build dist __pycache__ asciigen.spec asciigen
