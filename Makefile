

.PHONY: "hello"
hello:
	echo "hello, $(whoami)"

.PHONY: "all"
all: fmt exp doc


.PHONY: "init"
init:
	mkdir -p ./_gen

.PHONY: "exp"
exp:
	cue export . -o ./_gen/keyzen.yaml -f

.PHONY: "doc"
doc:
	cue cmd doc


.PHONY: "fmt"
fmt:
	cue fmt ./...

.PHONY: "vet"
vet:
	cue vet
