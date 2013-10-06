##
# Pearl Make
# Copyright(c) 2012 King Pearl LLC
# MIT Licensed
##
APP = marlot
VERSION = v1.0.0
MIGRATE = $(shell find node_modules -name "migrate" -type f)
REPO = kingpearl/marlot

all: configure
	
clean:
	rm -fR migrations/.migrate
	rm -fR node_modules
	
configure:
	npm install

down:
	$(MIGRATE) down

package:
	export COPYFILE_DISABLE=true; tar czvf ../$(APP)-$(VERSION).tar.gz migrations History.md Makefile package.json Readme.md

push:
	rm -fR .git
	git init
	git add .
	git commit -m "Initial release"
	git remote add origin gh:$(REPO).git
	git push origin master

up:
	$(MIGRATE) up

update:
	npm update