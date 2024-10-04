#let subject = "@Subject"
#let title = "@Subtitle"
#let name = "@Name"
#let nim = "@NIM"
#let class = "@Class"
#let department = "@Department"
#let study-program = "@StudyProgram"

#align(
  center + horizon,
  grid(
    gutter: 4mm,
    strong(
      text(20pt)[
        #subject \
        #title \
      ],
    ),
    v(4cm),
    image("images/polinema-logo.png", width: 5cm),
    v(4cm),
    text(12pt)[#strong("Name")],
    text(12pt)[#name],
    v(1mm),
    text(12pt)[#strong("NIM")],
    text(12pt)[#nim],
    v(1mm),
    text(12pt)[#strong("Class")],
    text(12pt)[#class],
    v(1mm),
    text(12pt)[#strong("Department")],
    text(12pt)[#department],
    v(1mm),
    text(12pt)[#strong("Study Program")],
    text(12pt)[#study-program],
  ),
)
