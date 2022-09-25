
.PHONY: "all"
all: hello 

.PHONY: "hello"
hello:
	echo "hello, $(whoami)"

.PHONY: "init"
init:
	mkdir -p ./_gen
