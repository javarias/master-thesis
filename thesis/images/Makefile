IMAGES:=Atmospheric_electromagnetic_opacity.pdf \
	scheduling_class_model.pdf \
	DSA-state-machine.pdf \
	simulator-state-machine.pdf \
	array-config-problem-overview.pdf \
	Executive.pdf Observation.pdf Observatory.pdf Obsproject.pdf Weather.pdf \
	observation-schedule-representation.pdf_tex \
	array-config-problem-representation.pdf_tex \
	interf4.pdf intblock.pdf
 
PLOTS:=c34-1_sources.pdf c34-2_sources.pdf c34-3_sources.pdf \
	c34-4_sources.pdf c34-5_sources.pdf c34-6_sources.pdf \
	c34-7_sources.pdf

all: $(IMAGES) $(PLOTS) results

%.ps: %.plot
	gnuplot $<

%.pdf: %.ps
	ps2pdf $<

%.svg: %.dia
	dia -t svg $<

%.pdf: %.svg
	inkscape -z -D --file=$< --export-pdf=$@

%.pdf_tex: %.svg
	inkscape -z -D --file=$< --export-pdf=$(subst pdf_tex,pdf,$@) --export-latex=$@
	cp $(subst pdf_tex,pdf,$@) ..

clean:
	rm -rf *.aux *.pdf_tex *.bbl *.aux *.dvi *.log *.blg $(IMAGES) $(PLOTS)
	make -C results clean

results:
	make -C results all

.PHONY: all clean results
