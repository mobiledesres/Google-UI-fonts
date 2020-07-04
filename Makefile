zip_dir := zip
fonts_dir := fonts

.PHONY: all
all: unzip

.PHONY: unzip
unzip:
	for i in $(zip_dir)/*.zip; do unzip -o "$$i" -d $(fonts_dir); done

.PHONY: clean
clean:
	-rm -rfv $(fonts_dir)/*
