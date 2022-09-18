package main

import (
	"strings"

	"github.com/charmbracelet/lipgloss"
)

func renderError(m model, sb *strings.Builder) {
	sb.WriteString(redHeading.Render("Error!"))
	sb.WriteByte('\n')
	sb.WriteString(m.errMsg)
	sb.WriteByte('\n')
	sb.WriteByte('\n')
	sb.WriteString("Press [Ctrl+c] or [q] to quit.")
}

func renderPrompt(m model, sb *strings.Builder) {
	boldStyle := blueFg.Copy().Bold(true)

	if m.selectedSubject != "" {
		sb.WriteString(boldStyle.Render("What is the subject? "))
		sb.WriteString(m.selectedSubject)
	}

	sb.WriteString(boldStyle.Render("\nWhat is the subtitle? "))
	if m.subtitle == "" {
		return
	}
	sb.WriteString(m.subtitle)
	sb.WriteByte('\n')
}

const leftWidth = 20
const rightWidth = 40
const totalWidth = leftWidth + rightWidth

func renderInformation(m model, sb *strings.Builder) {
	centerAligned := blueHeading.Copy().Width(totalWidth).Align(lipgloss.Center)
	leftAligned := blueFg.Copy().Width(leftWidth).Align(lipgloss.Left).Bold(true)
	rightAligned := lipgloss.NewStyle().Width(rightWidth).Align(lipgloss.Right)

	var infoSb strings.Builder

	sb.WriteString("Your LaTeX will be generated using this information.")
	sb.WriteByte('\n')

	infoSb.WriteString(centerAligned.Render("Personal Information"))
	infoSb.WriteByte('\n')

	infoSb.WriteString(leftAligned.Render("Name: "))
	infoSb.WriteString(rightAligned.Render(m.config.PersonalInformation.Name))
	infoSb.WriteByte('\n')

	infoSb.WriteString(leftAligned.Render("NIM: "))
	infoSb.WriteString(rightAligned.Render(m.config.PersonalInformation.NIM))
	infoSb.WriteByte('\n')

	infoSb.WriteString(leftAligned.Render("Class: "))
	infoSb.WriteString(rightAligned.Render(m.config.PersonalInformation.Class))
	infoSb.WriteByte('\n')

	infoSb.WriteString(leftAligned.Render("Department: "))
	infoSb.WriteString(rightAligned.Render(m.config.PersonalInformation.Department))
	infoSb.WriteByte('\n')

	infoSb.WriteString(leftAligned.Render("Study Program: "))
	infoSb.WriteString(rightAligned.Render(m.config.PersonalInformation.StudyProgram))
	infoSb.WriteByte('\n')
	infoSb.WriteByte('\n')

	infoSb.WriteString(centerAligned.Render("Document Information"))
	infoSb.WriteByte('\n')

	infoSb.WriteString(leftAligned.Render("Subject: "))
	infoSb.WriteString(rightAligned.Render(m.selectedSubject))
	infoSb.WriteByte('\n')

	infoSb.WriteString(leftAligned.Render("Subtitle: "))
	infoSb.WriteString(rightAligned.Render(m.subtitle))

	sb.WriteString(lipgloss.NewStyle().
		Width(totalWidth+2). // 2 is for left and right 1 char padding
		Padding(0, 1).
		Border(lipgloss.NormalBorder(), true, true, true, true).
		BorderForeground(blueColour).
		Render(infoSb.String()))
}
