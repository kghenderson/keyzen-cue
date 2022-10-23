eval_filename = "_eval_$(notdir $(CURDIR)).cue"
export_filename = "_$(notdir $(CURDIR)).yaml"

.PHONY: "all"
all: fmt vet eval exp

.PHONY: "clean"
clean:
	rm -f $(export_filename)

.PHONY: "eval"
eval:
	cue eval -a . -o $(eval_filename) -f

.PHONY: "exp"
exp:
	cue export . -o $(export_filename) -f

.PHONY: "fmt"
fmt:
	cue fmt ./...

.PHONY: "vet"
vet:
	cue vet -c
