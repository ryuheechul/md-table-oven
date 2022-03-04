# change here if you want different filenames
filename = out/data
csv-filename = $(filename).csv
yaml-filename = $(filename).yaml
md-filename = $(filename).md

view = bin/view.sh

# fastest way to create markdown table
.PHONY: gen-md
gen-md: initialize-csv csv2md

.PHONY: .initialize-csv
.initialize-csv:
	@bin/initialize-csv.sh

# useful when you don't have csv
.PHONY: initialize-csv
initialize-csv:
	bin/initialize-csv.sh > $(csv-filename)
	$(view) $(csv-filename)

.PHONY: .csv2yaml
.csv2yaml:
	@bin/csv2yaml.sh $(csv-filename)

# useful when you want to write in more human friendly way
.PHONY: csv2yaml
csv2yaml:
	$(view) $(csv-filename)
	$(MAKE) -s .csv2yaml > $(yaml-filename)
	$(view) $(yaml-filename)

.PHONY: .yaml2csv
.yaml2csv:
	@bin/yaml2csv.sh $(yaml-filename)

# useful when you want to keep in more compact format
.PHONY: yaml2csv
yaml2csv:
	$(view) $(yaml-filename)
	$(MAKE) -s .yaml2csv > $(csv-filename)
	$(view) $(csv-filename)

.PHONY: .yaml2md
.yaml2md:
	@bin/yaml2md.sh $(yaml-filename)

.PHONY: yaml2md
yaml2md:
	$(view) $(yaml-filename)
	$(MAKE) -s .yaml2md > $(md-filename)
	$(view) $(md-filename)

.PHONY: .md2yaml
.md2yaml:
	@bin/md2yaml.sh $(md-filename)

.PHONY: md2yaml
md2yaml:
	$(view) $(md-filename)
	$(MAKE) -s .md2yaml > $(yaml-filename)
	$(view) $(yaml-filename)

.PHONY: csv2md
csv2md: csv2yaml yaml2md

.PHONY: md2csv
md2csv: md2yaml yaml2csv

