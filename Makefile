PREFIX ?= /usr/local
BIN ?= csv_to_mdtable

csv_to_mdtable:
	crystal build --release csv_to_mdtable.cr

build : csv_to_mdtable

install: csv_to_mdtable
	mv csv_to_mdtable $(PREFIX)/bin/$(BIN)

uninstall: csv_to_mdtable
	mv csv_to_mdtable $(PREFIX)/bin/$(BIN)
