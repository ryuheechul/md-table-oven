.PHONY: touch
touch: clear
	cp -r -L ../example/bin bin

.PHONY: bring-advanced
bring-advanced: clear
	cp -r -L ../advanced-example/bin bin

.PHONY: clear
clear:
	rm -rf bin.bak
	test -d bin && mv bin bin.bak || true
