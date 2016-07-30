TARGET   = www-workshop

all: 
	latex $(TARGET).tex
	latex $(TARGET).tex
	bibtex $(TARGET)
	latex $(TARGET).tex
	latex $(TARGET).tex
	dvipdf $(TARGET).dvi

clean::
	rm -rv *.aux *.log *.bbl *.blg
