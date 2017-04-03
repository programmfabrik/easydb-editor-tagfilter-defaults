PLUGIN_NAME = editor-tagfilter-defaults
INSTALL_FILES = \
	$(WEB)/l10n/cultures.json \
	$(WEB)/l10n/de-DE.json \
	$(WEB)/l10n/en-US.json \
	$(WEB)/l10n/es-ES.json \
	$(WEB)/l10n/it-IT.json \
	$(WEB)/editor-tagfilter-defaults.js \
	easydb-editor-tagfilter-defaults.config.yml

L10N_FILES = l10n/editor-tagfilter-defaults.csv
L10N_GOOGLE_KEY = 1Z3UPJ6XqLBp-P8SUf-ewq4osNJ3iZWKJB83tc6Wrfn0
L10N_GOOGLE_GID = 262681630

L10N2JSON = python easydb-library/tools/l10n2json.py

COFFEE_FILES = \
	src/webfrontend/EditorTagfilterDefaults.coffee

all: build

include easydb-library/tools/base-plugins.make

build: code

code: $(JS) $(L10N)

clean: clean-base

wipe: wipe-base

