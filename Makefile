csv_to_mdtable:
	crystal build --release csv_to_mdtable.cr

build : csv_to_mdtable

install: csv_to_mdtable
	mv csv_to_mdtable ~/bin/
