# change here if you want different filenames
filename = out/data
csv-filename = $(filename).csv
yaml-filename = $(filename).yaml
md-filename = $(filename).md

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
	cat $(csv-filename)

.PHONY: .csv-to-yaml
.csv-to-yaml:
	@bin/csv-to-yaml.sh $(csv-filename)

# useful when you want to write in more human friendly way
.PHONY: csv-to-yaml
csv-to-yaml:
	cat $(csv-filename)
	$(MAKE) .csv-to-yaml > $(yaml-filename)
	cat $(yaml-filename)

.PHONY: .yaml-to-csv
.yaml-to-csv:
	@bin/yaml-to-csv.sh $(yaml-filename)

# useful when you want to keep in more compact format
.PHONY: yaml-to-csv
yaml-to-csv:
	cat $(yaml-filename)
	$(MAKE) .yaml-to-csv > $(csv-filename)
	cat $(csv-filename)

.PHONY: .yaml-to-md
.yaml-to-md:
	@bin/yaml-to-md.sh $(yaml-filename)

.PHONY: yaml-to-md
yaml-to-md:
	cat $(yaml-filename)
	$(MAKE) .yaml-to-md > $(md-filename)
	cat $(md-filename)

.PHONY: .md-to-yaml
.md-to-yaml:
	@bin/md-to-yaml.sh $(md-filename)

.PHONY: md-to-yaml
md-to-yaml:
	cat $(md-filename)
	$(MAKE) .md-to-yaml > $(yaml-filename)
	cat $(yaml-filename)

.PHONY: csv-to-md
csv-to-md: csv-to-yaml yaml-to-md

.PHONY: md-to-csv
md-to-csv: md-to-yaml yaml-to-csv

