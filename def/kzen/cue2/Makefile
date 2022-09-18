

.PHONY: "hello"
hello:
	echo "hello, $(whoami)"

.PHONY: "init"
init:
	mkdir -p ../_gen

.PHONY: "export"
export:
	cue export . -o ../_gen/kzen.yaml -f

.PHONY: "fmt"
fmt:
	cue fmt ./...

.PHONY: "vet"
vet:
	cue vet
