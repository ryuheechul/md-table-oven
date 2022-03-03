# change here if you want different filenames
filename = out/data
csv-filename = $(filename).csv
yaml-filename = $(filename).yaml
md-filename = $(filename).md

view = bin/view.sh

# fastest way to create markdown table
.PHONY: gen-md
gen-md: initialize-csv csv-to-md

.PHONY: .initialize-csv
.initialize-csv:
	@bin/initialize-csv.sh

# useful when you don't have csv
.PHONY: initialize-csv
initialize-csv:
	bin/initialize-csv.sh > $(csv-filename)
	$(view) $(csv-filename)

.PHONY: .csv-to-yaml
.csv-to-yaml:
	@bin/csv-to-yaml.sh $(csv-filename)

# useful when you want to write in more human friendly way
.PHONY: csv-to-yaml
csv-to-yaml:
	$(view) $(csv-filename)
	$(MAKE) -s .csv-to-yaml > $(yaml-filename)
	$(view) $(yaml-filename)

.PHONY: .yaml-to-csv
.yaml-to-csv:
	@bin/yaml-to-csv.sh $(yaml-filename)

# useful when you want to keep in more compact format
.PHONY: yaml-to-csv
yaml-to-csv:
	$(view) $(yaml-filename)
	$(MAKE) -s .yaml-to-csv > $(csv-filename)
	$(view) $(csv-filename)

.PHONY: .yaml-to-md
.yaml-to-md:
	@bin/yaml-to-md.sh $(yaml-filename)

.PHONY: yaml-to-md
yaml-to-md:
	$(view) $(yaml-filename)
	$(MAKE) -s .yaml-to-md > $(md-filename)
	$(view) $(md-filename)

.PHONY: .md-to-yaml
.md-to-yaml:
	@bin/md-to-yaml.sh $(md-filename)

.PHONY: md-to-yaml
md-to-yaml:
	$(view) $(md-filename)
	$(MAKE) -s .md-to-yaml > $(yaml-filename)
	$(view) $(yaml-filename)

.PHONY: csv-to-md
csv-to-md: csv-to-yaml yaml-to-md

.PHONY: md-to-csv
md-to-csv: md-to-yaml yaml-to-csv

