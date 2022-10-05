package main

type ErrorMsg error

type TemplateGeneratedMsg string

type Page int

const (
	subjectChoicesPage Page = iota
	subtitleInputPage
	confirmationPage
	loadingPage
	errorPage
	done
)
