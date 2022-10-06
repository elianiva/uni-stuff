package main

import "strings"

func slugify(title string) string {
	lowercased := strings.ToLower(title)
	return strings.ReplaceAll(lowercased, " ", "-")
}
