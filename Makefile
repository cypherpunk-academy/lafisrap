
vpath %.html docs/
vpath %.css static/css
vpath %.less themes/hugo-university-theme/static/less

all:  	vitality-red.css
	hugo --config="config-de.toml"
	hugo --config="config-en.toml"

vitality-red.css: $(shell ls themes/hugo-university-theme/static/less)
	lessc themes/hugo-university-theme/static/less/vitality.less static/css/vitality-red.css

