# Package configuration
PROJECT = regression-retrieval
COMMANDS = cmd/regression-retrieval

GO_BUILD_ENV = CGO_ENABLED=0
DOCKER_ORG = srcd

# Including ci Makefile
CI_REPOSITORY ?= https://github.com/src-d/ci.git
CI_BRANCH ?= v1
CI_PATH ?= $(shell pwd)/.ci
MAKEFILE := $(CI_PATH)/Makefile.main
$(MAKEFILE):
	git clone --quiet --depth 1 -b $(CI_BRANCH) $(CI_REPOSITORY) $(CI_PATH);
-include $(MAKEFILE)
