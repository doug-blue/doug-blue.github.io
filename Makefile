MD := $(shell find . -name '*.md')
HTML := $(MD:.md=.html)

all: $(HTML)

%.html: %.md template.html style.css
	pandoc $< \
		--standalone \
		--template=template.html \
		--css=/style.css \
		-o $@

clean:
	rm -f $(HTML)