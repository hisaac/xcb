# config
.PHONY: *    # all targets phony
$(V).SILENT: # all targets silent

# variables
mkfile_path  := $(abspath $(lastword $(MAKEFILE_LIST)))
project_root := $(realpath $(dir $(mkfile_path)))
scripts_dir  := $(project_root)/scripts

# targets
up:
	"$(scripts_dir)/up.bash"

build:
	"$(scripts_dir)/build.bash"

build/release:
	"$(scripts_dir)/build.bash" --configuration release

format:
	"$(scripts_dir)/format.bash"

lint:
	"$(scripts_dir)/lint.bash"

run:
	"$(scripts_dir)/run.bash"

# utility targets

clean:
	"$(scripts_dir)/clean.bash"

nuke:
	"$(scripts_dir)/clean.bash" nuke

# aliases

ci: up build/release
rebuild: clean build
