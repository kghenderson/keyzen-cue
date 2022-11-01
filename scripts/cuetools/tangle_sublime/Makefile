eval_filename = "_eval_$(notdir $(CURDIR)).cue2"
export_filename = "_$(notdir $(CURDIR)).yaml"

.PHONY: "all"
all: fmt cmd # eval exp vet


.PHONY: "clean"
clean:
	rm -f $(export_filename)

.PHONY: "cmd"
cmd:
	cue cmd tangle_sublime

.PHONY: "eval"
eval:
	cue eval -a . --out cue -o $(eval_filename) -f

.PHONY: "fmt"
fmt:
	cue fmt ./...

.PHONY: "vet"
vet:
	cue vet -c
