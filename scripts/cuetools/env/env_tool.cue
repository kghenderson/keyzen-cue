package env

import (
	"os"

	"github.com/kghenderson/keyzen/common"
)

command: "env": {
//	osEnv: os.Environ
	Background: {
//		osEnv: os.Environ
//		getEnv: common.GetEnv & {Given: { OsEnv: Background.osEnv }, Then: {Env: #Env}}  //2-works
		Env: common.GetEnv & {Given: { OsEnv: os.Environ }, Then: {Env: #Env}}
	}
	Then: {
		printEnv: cli.Print & {text: "Env: \n"+ yaml.Marshal(Background.Env)} // works

	}
	

}
