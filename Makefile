# KEYS
GEN_PATH="./_gen/"

.PHONY: "all"
all: hello 

.PHONY: "hello"
hello:
	echo "hello, $(whoami)"

.PHONY: "init"
init:
	mkdir -p ./_gen



.PHONY: "exp"
exp: exp-keys exp-commands

.PHONY: "exp-commands"
exp-commands:
	cue export ./pkg/commands -o ${GEN_PATH}/commands.yaml -f

.PHONY: "exp-keys"
exp-keys:
	cue export ./pkg/keys -o ${GEN_PATH}/keys.yaml -f

.PHONY: "exp-strokes"
exp-strokes:
	cue export ./pkg/strokes -o ${GEN_PATH}/strokes.yaml -f

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
