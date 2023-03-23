package main

import (
	"fmt"
	"os"
	"strings"

	"github.com/charmbracelet/bubbles/list"
	"github.com/charmbracelet/bubbles/spinner"
	"github.com/charmbracelet/bubbles/textinput"
	tea "github.com/charmbracelet/bubbletea"
)

type model struct {
	currentStep     Page
	config          Config
	textInput       textinput.Model
	list            list.Model
	spinner         spinner.Model
	selectedSubject string
	subtitle        string
	errMsg          string
}

type SubjectItem struct {
	title string
	slug  string
}

func (s SubjectItem) FilterValue() string { return s.title }
func (s SubjectItem) Title() string       { return s.title }
func (s SubjectItem) Description() string { return s.slug }

func newModel() model {
	config := GetConfig()

	textInput := textinput.New()
	textInput.Focus()
	textInput.CharLimit = 128
	textInput.Width = 80
	textInput.Prompt = ""

	var items []list.Item
	for _, subject := range config.Subjects {
		items = append(items, SubjectItem{
			title: subject,
			slug:  slugify(subject),
		})
	}

	list := list.New(items, newStyledDelegate(), 0, 0)
	list.Title = "Choose a Subject"
	list.Styles.Title = blueHeading

	loadingSpinner := spinner.New()
	loadingSpinner.Spinner = spinner.Dot
	loadingSpinner.Style = blueFg

	return model{
		config:          config,
		textInput:       textInput,
		list:            list,
		spinner:         loadingSpinner,
		currentStep:     subjectChoicesPage,
		selectedSubject: "",
		subtitle:        "",
	}
}

func (m model) Init() tea.Cmd {
	return nil
}

func (m model) Update(msg tea.Msg) (tea.Model, tea.Cmd) {
	var generateCmd tea.Cmd
	var listCmd tea.Cmd
	var inputCmd tea.Cmd
	var spinnerCmd tea.Cmd

	switch msg := msg.(type) {
	case tea.KeyMsg:
		switch msg.String() {
		case "ctrl+c":
			return m, tea.Quit
		case "enter":
			switch m.currentStep {
			case subjectChoicesPage:
				m.currentStep = subtitleInputPage
				m.selectedSubject = m.config.Subjects[m.list.Cursor()]
				m.textInput.Placeholder = "Insert your subtitle..."
			case subtitleInputPage:
				inputValue := m.textInput.Value()
				if inputValue != "" {
					m.subtitle = inputValue
					m.textInput.Reset()
					m.currentStep = confirmationPage
				}
			case confirmationPage:
				m.currentStep = loadingPage
				generateCmd = generateTemplate(m)
			}
		}
	case TemplateGeneratedMsg:
		m.currentStep = done
		return m, nil
	case ErrorMsg:
		m.currentStep = errorPage
		m.errMsg = msg.Error()
		return m, nil
	case tea.WindowSizeMsg:
		h, v := appStyle.GetFrameSize()
		m.list.SetSize(msg.Width-h, msg.Height-v)
	}

	m.list, listCmd = m.list.Update(msg)
	m.spinner, spinnerCmd = m.spinner.Update(msg)
	if m.currentStep != subjectChoicesPage {
		m.textInput, inputCmd = m.textInput.Update(msg)
	}
	return m, tea.Batch(spinnerCmd, listCmd, inputCmd, generateCmd)
}

func (m model) View() string {
	var sb strings.Builder

	switch m.currentStep {
	case subjectChoicesPage:
		return appStyle.Render(m.list.View())
	case subtitleInputPage:
		renderPrompt(m, &sb)
		sb.WriteString(m.textInput.View())
		return appStyle.Render(sb.String())
	case confirmationPage:
		renderInformation(m, &sb)
		sb.WriteByte('\n')
		sb.WriteString("Press [Enter] to continue. Press [Ctrl+c] or [q] to cancel.")
		return appStyle.Render(sb.String())
	case loadingPage:
		renderInformation(m, &sb)
		sb.WriteByte('\n')
		sb.WriteString(fmt.Sprintf("%s Generating using these details...", m.spinner.View()))
		sb.WriteByte('\n')
		return appStyle.Render(sb.String())
	case errorPage:
		renderError(m, &sb)
		return appStyle.Render(sb.String())
	case done:
		renderInformation(m, &sb)
		sb.WriteByte('\n')
		sb.WriteString("Done! Press [Ctrl+c] or [q] to quit.")
		return appStyle.Render(sb.String())
	}

	return ""
}

func main() {
	p := tea.NewProgram(newModel(), tea.WithAltScreen())
	if err := p.Start(); err != nil {
		fmt.Printf("There's been an error: %v", err)
		os.Exit(1)
	}
}
