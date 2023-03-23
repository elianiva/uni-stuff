package main

import (
	"github.com/charmbracelet/bubbles/list"
	"github.com/charmbracelet/lipgloss"
)

var appStyle = lipgloss.NewStyle().Margin(1, 2)

var blueHeading = lipgloss.NewStyle().
	PaddingLeft(1).
	PaddingRight(1).
	Background(blueColour).
	Foreground(blackColour).
	Bold(true)

var redHeading = blueHeading.Copy().Background(redColour)

var blueFg = lipgloss.NewStyle().
	Foreground(blueColour)

func newStyledDelegate() list.DefaultDelegate {
	d := list.NewDefaultDelegate()
	d.Styles.SelectedTitle = blueFg.Copy().
		PaddingLeft(1).
		Border(lipgloss.ThickBorder(), false, false, false, true).
		BorderForeground(blueColour)
	d.Styles.SelectedDesc = d.Styles.SelectedTitle.Copy().
		Foreground(greyColour)
	d.Styles.FilterMatch = blueFg.Copy().
		Bold(true).
		Underline(true)
	return d
}
