TARGET   = draft

all: 
	latex $(TARGET).tex
	latex $(TARGET).tex
	bibtex $(TARGET)
	dvipdf $(TARGET).tex
	dvipdf $(TARGET).tex

clean::
	rm -rv *.aux *.log *.bbl *.blg
