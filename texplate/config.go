package main

import (
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
)

type PersonalInformation struct {
	Name         string `json:"name"`
	NIM          string `json:"nim"`
	Class        string `json:"class"`
	Department   string `json:"department"`
	StudyProgram string `json:"study_program"`
}

type Config struct {
	Subjects            []string            `json:"subjects"`
	PersonalInformation PersonalInformation `json:"personal_information"`
}

func GetConfig() Config {
	// FIXME(elianiva): find a better solution
	ex, err := os.Executable()
	if err != nil {
		panic(fmt.Errorf("failed to read config.json: %v", err))
	}

	configPath := filepath.Join(filepath.Dir(ex), "config.json")
	file, err := os.Open(configPath)
	if err != nil {
		panic(fmt.Errorf("failed to read config.json: %v", err))
	}
	defer file.Close()

	var config Config
	decoder := json.NewDecoder(file)
	err = decoder.Decode(&config)
	if err != nil {
		panic(fmt.Errorf("failed to parse config.json: %v", err))
	}

	return config
}
