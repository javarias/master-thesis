IMAGES:=Atmospheric_electromagnetic_opacity.pdf \
	scheduling_class_model.pdf

all: $(IMAGES)

%.pdf: %.svg
	inkscape -z -D --file=$< --export-pdf=$@

%.pdf_tex: %.svg
	inkscape -z -D --file=$< --export-pdf=$(subst pdf_tex,pdf,$@) --export-latex=$@
	cp $(subst pdf_tex,pdf,$@) .

clean:
	rm -rf *.aux *.pdf *.pdf_tex *.pdf *.bbl *.aux *.dvi *.log *.blg 

.PHONY: all clean
