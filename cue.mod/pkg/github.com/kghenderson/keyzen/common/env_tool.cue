package common

import (
	"encoding/yaml"
	"tool/cli"
	"tool/os"
)

command: env: {
	Background: {
		Env: os.Environ
	}
	debugBackground: cli.Print & {text: "bg: \n" + yaml.Marshal(Background)}

	Then: {
		getEnv: GetEnv & {Given: { Env: Background.Env }}
		printEnv: cli.Print & {yaml.getEnv}
	}
}


#Env: {
	Username: string
}
GetEnv: {
	 Given: {
	 		Env: [key=string]: string
	 }
	 Then: {
	 		 Env: #Env & {
	 		 	Username: "test"
	 		 }
	 }
}
