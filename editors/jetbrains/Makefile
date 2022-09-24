
.PHONY: "all"
all: fmt vet exp

.PHONY: "exp"
exp:
	cue export . -o _jetbrains.yaml -f

.PHONY: "fmt"
fmt:
	cue fmt ./...

.PHONY: "vet"
vet:
	cue vet -c
