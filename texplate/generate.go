package main

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"time"

	tea "github.com/charmbracelet/bubbletea"
	dirCopy "github.com/otiai10/copy"
)

func generateTemplate(m model) tea.Cmd {
	return func() tea.Msg {
		// FIXME(elianiva): find a better solution
		ex, err := os.Executable()
		if err != nil {
			panic(fmt.Errorf("failed to get executable: %v", err))
		}

		// TODO(elianiva): might want to add more template option, for now let's just hardcode jobsheet value
		templateType := "jobsheet"
		templatePath := filepath.Join(filepath.Dir(ex), "templates", templateType)

		texFile, err := os.ReadFile(filepath.Join(templatePath, templateType+".typ"))
		if err != nil {
			return ErrorMsg(err)
		}

		replacer := strings.NewReplacer(
			"@Subject", m.selectedSubject,
			"@Subtitle", m.subtitle,
			"@Name", m.config.PersonalInformation.Name,
			"@NIM", m.config.PersonalInformation.NIM,
			"@Class", m.config.PersonalInformation.Class,
			"@Department", m.config.PersonalInformation.Department,
			"@StudyProgram", m.config.PersonalInformation.StudyProgram,
		)

		result := replacer.Replace(string(texFile))

		cwd, err := os.Getwd()
		if err != nil {
			return ErrorMsg(err)
		}

		subjectSlug := slugify(m.selectedSubject)
		subtitleSlug := slugify(m.subtitle)
		resultPath := filepath.Join(cwd, subjectSlug, time.Now().Format("2006-01-02"), subtitleSlug)
		err = os.MkdirAll(resultPath, os.ModePerm)
		if err != nil {
			return ErrorMsg(err)
		}

		os.WriteFile(filepath.Join(resultPath, templateType+".typ"), []byte(result), os.ModePerm)
		dirCopy.Copy(filepath.Join(templatePath, "images"), filepath.Join(resultPath, "images"))

		return TemplateGeneratedMsg("OK")
	}

}
