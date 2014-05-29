PLOTS:= drr-7m_a.pdf drr-7m_b.pdf \
	drr-c34-2_1a.pdf drr-c34-2_1b.pdf \
	drr-c34-4_1a.pdf drr-c34-4_1b.pdf \
	drr-tp_a.pdf drr-tp_b.pdf \
	dsa-7m_a.pdf dsa-7m_b.pdf \
	dsa-c34-2_1a.pdf dsa-c34-2_1b.pdf \
	dsa-c34-4_1a.pdf dsa-c34-4_1b.pdf \
	dsa-tp_a.pdf dsa-tp_b.pdf

all: $(PLOTS)

%.ps: %.plt
	gnuplot $<

%.pdf: %.ps
	ps2pdf $<

%.plt: %.plot
	echo "set term postscript enhanced colour" > $@
	echo "set output $*.ps" >> $@
	cat $< >> $@

clean:
	rm -rf *.plt *.ps *.pdf
