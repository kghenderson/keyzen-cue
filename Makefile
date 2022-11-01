# KEYS
GEN_PATH="./_gen/"

.PHONY: "all"
all: hello exp

.PHONY: "hello"
hello:
	echo "hello, $(shell whoami)"

.PHONY: "init"
init:
	mkdir -p ./_gen



.PHONY: "exp"
exp: exp-keys exp-commands exp-strokes exp-editors exp-keyzen

.PHONY: "exp-keyzen"
exp-keyzen:
	cue export ./keyzen -o ${GEN_PATH}/keyzen.yaml -f

.PHONY: "exp-commands"
exp-commands:
	cue export ./keyzen/commands -o ${GEN_PATH}/_keyzen_commands.yaml -f

.PHONY: "exp-keys"
exp-keys:
	cue export ./keyzen/keys -o ${GEN_PATH}/_keyzen_keys.yaml -f

.PHONY: "exp-strokes"
exp-strokes:
	cue export ./keyzen/strokes -o ${GEN_PATH}/_keyzen_strokes.yaml -f


.PHONY: "exp-editors"
exp-editors:
	cue export ./keyzen/editors -o ${GEN_PATH}/_keyzen_editors.yaml -f

#
#eval_filename = "_eval_$(notdir $(CURDIR)).cue"
#export_filename = "_$(notdir $(CURDIR)).yaml"
#
#.PHONY: "all"
#all: fmt eval vet exp
#
#.PHONY: "clean"
#clean:
#	rm -f $(export_filename)
#
#.PHONY: "eval"
#eval:
#	cue eval -a . -o $(eval_filename) -f
#
#.PHONY: "exp"
#exp:
#	cue export . -o $(export_filename) -f
#
#.PHONY: "fmt"
#fmt:
#	cue fmt ./...
#
#.PHONY: "vet"
#vet:
#	cue vet -c
