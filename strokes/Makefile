export_filename = "_$(notdir $(CURDIR)).yaml"

.PHONY: "all"
all: fmt vet exp

.PHONY: "clean"
clean:
	rm -f $(export_filename)

.PHONY: "exp"
exp:
	cue export . -o $(export_filename) -f

.PHONY: "fmt"
fmt:
	cue fmt ./...

.PHONY: "vet"
vet:
	cue vet -c
