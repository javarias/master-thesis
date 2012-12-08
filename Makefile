DOC:=report.tex
IMAGES:=images/Atmospheric_electromagnetic_opacity.pdf \
	images/ellipse_locci.pdf_tex \
	images/scheduling_class_model.pdf

report.pdf: $(DOC) $(IMAGES)
	pdflatex $<
	pdflatex $<

%.pdf: %.svg
	inkscape -z -D --file=$< --export-pdf=$@

%.pdf_tex: %.svg
	inkscape -z -D --file=$< --export-pdf=$(subst pdf_tex,pdf,$@) --export-latex=$@
	cp $(subst pdf_tex,pdf,$@) .

clean:
	rm -rf images/*.aux images/*.pdf images/*.pdf_tex *.pdf *.bbl *.aux *.dvi *.log *.blg 
