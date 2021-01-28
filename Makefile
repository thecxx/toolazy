
REPOSITORY_URL	= "https://github.com/thecxx"

PROJECT_PATH	= $(shell pwd)

SCRIPT_FILES	= $(PROJECT_PATH)/toolazy/env.sh	\
				  $(PROJECT_PATH)/toolazy/init.sh	\

.PHONY:usage
usage:
	@echo "make"

init: $(SCRIPT_FILES)
	@echo "init"

remove:
	@echo "remove toolazy"

$(SCRIPT_FILES):
	echo "downloading"