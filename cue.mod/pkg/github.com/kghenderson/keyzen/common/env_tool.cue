package common

import (
	"encoding/yaml"
	"tool/cli"
	"tool/os"
)

command: env: {
//	osEnv: os.Environ  // 1
//	debugBackground: cli.Print & {text: "bg: \n" + yaml.Marshal(osEnv)}  // 1-works

	Background: {  // 2
		osEnv: os.Environ
	}
//	debugBackground: cli.Print & {text: "Background: \n" + yaml.Marshal(Background)}  // HERE: DOES NOT WORK
//	debugBackground: cli.Print & {text: "Background: \n" + yaml.Marshal(Background.osEnv)} // works

	Then: {
//		getEnv: GetEnv & {Given: { OsEnv: osEnv }, Then: {Env: #Env}} // 1-works
		getEnv: GetEnv & {Given: { OsEnv: Background.osEnv }, Then: {Env: #Env}}  //2-works
		printEnv: cli.Print & {text: "Env: \n"+ yaml.Marshal(getEnv.Then.Env)} // works
	}
	// debugThen: cli.Print & {text: "DebugThen: \n" + yaml.Marshal(Then)} // HERE: WORKS
}

#Env: {
	Username: string
}

GetEnv: {
	 Given: {
	 		OsEnv: [key=string]: string
	 }
	 Then: {
	 		 Env: #Env & {

	 		 	Username: string
	 		 	if Given.OsEnv["USER"] != _|_ {Username: Given.OsEnv["USER"] }
	 		 	if Given.OsEnv["USER"] == _|_ {Username: "" }

	 		 }
	 }
}
