IMAGES:=Atmospheric_electromagnetic_opacity.pdf \
	scheduling_class_model.pdf \
	DSA-state-machine.pdf \
	simulator-state-machine.pdf \
	array-config-problem-overview.pdf

all: $(IMAGES)

%.svg: %.dia
	dia -t svg $<

%.pdf: %.svg
	inkscape -z -D --file=$< --export-pdf=$@

%.pdf_tex: %.svg
	inkscape -z -D --file=$< --export-pdf=$(subst pdf_tex,pdf,$@) --export-latex=$@
	cp $(subst pdf_tex,pdf,$@) .

clean:
	rm -rf *.aux *.pdf_tex *.pdf *.bbl *.aux *.dvi *.log *.blg $(IMAGES)

.PHONY: all clean
