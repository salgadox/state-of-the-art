.PHONY: slides

PANDOC_FLAGS = --slide-level 2 \
	-t revealjs -f markdown+emoji
REVEALJS_VARIABLES = -V transition=fade \
	-V controls=true \
	-V slideNumber=true \
	-V revealjs-url=https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.8.0

index.html: slides.md
	pandoc $(PANDOC_FLAGS) $(REVEALJS_VARIABLES) -s $< -o $@

slides: index.html
