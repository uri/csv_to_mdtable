# Install

Installs to `/usr/local`

```
make install
```

To specify a different location, from example `~/bin`

```
make PREFIX=$HOME install
```

Set BIN to customize the name of the executable:

```
make PREFIX=$HOME BIN=csvmd install
```

To remove the binary:

```
make PREFIX=$HOME BIN=csvmd uninstall
```


Otherwise

```
make build
mv ./csv_to_mdtable /desired/location/
```

# Usage

```
csv_to_mdtable some_csv.csv
cat some_csv.csv | csv_to_mdtable
```

Example to copy a table in Postgres to clipboard

```
psql -c "\copy (select 2 as number) to program 'csv_to_mdtable | pbcopy' with (format csv, header)"
```

# Requirements

- crystal 0.27.0
