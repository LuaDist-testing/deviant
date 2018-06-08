.PHONY: release

NAME = deviant
VERSION = 0.1.3-1

VERSION_SHORT := $(shell echo $(VERSION) | sed 's/-.//')
API_KEY := $(shell cat ~/.luarocks.key)
TAG := $(shell git tag -l --points-at HEAD)
PWD := $(shell pwd)

test:
	$(info Gotta add some tests!)

release: test
ifeq (v$(VERSION),$(TAG))
	$(info Making sure that the version was updated everywhere...)
	@grep -q 'version = "$(VERSION)"' $(NAME)-$(VERSION).rockspec
	@grep -q 'v$(VERSION).zip' $(NAME)-$(VERSION).rockspec
	@grep -q 'version = "$(VERSION_SHORT)"' src/$(NAME).lua
	$(info OK, uploading to luarocks...)
	luarocks upload --force --api-key=$(API_KEY) $(NAME)-$(VERSION).rockspec	
else
	$(error You did not tag the version you are going to release!)
endif	
