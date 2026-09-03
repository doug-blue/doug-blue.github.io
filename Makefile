index.html: index.md template.html style.css
	pandoc index.md \
		--standalone \
		--template=template.html \
		--css=style.css \
		-o index.html

clean:
	rm -f index.html