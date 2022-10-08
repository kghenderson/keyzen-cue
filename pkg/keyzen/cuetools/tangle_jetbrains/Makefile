export_filename = "_$(notdir $(CURDIR)).yaml"

.PHONY: "all"
all: fmt vet cmd

.PHONY: "clean"
clean:
	rm -f $(export_filename)

.PHONY: "cmd"
cmd:
	cue cmd tangle_jetbrains

.PHONY: "fmt"
fmt:
	cue fmt ./...

.PHONY: "vet"
vet:
	cue vet -c
