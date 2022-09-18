package cuedefs



#Editor: {

	Name: string

	CommandMap: #CommandMap

	...
}

#CommandMap: [cmdName=#CommandName]: #Command & {Name: cmdName}

#CommandName: string
