#set text(
  size: 12pt,
  font: "Times New Roman",
)

#set page(
  numbering: "1",
  margin: (
    top: 3cm,
    bottom: 3cm,
    left: 4cm,
    right: 4cm
  )
)

#show outline: it => {
  show heading: set align(center)
  it
}

#set par(
  first-line-indent: 1em,
)

#show heading: set align(center)
#show heading: set text(14pt)

#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  strong(it)
}

#let title = "CodeCritiq: Automated Grading System for Programming Assignments Using Static Code Analysis"
#let lname = "Zelianivan Arkana"
#let fname = "Dicha"
#let nim = "2241720002"

#let validationDate = datetime(
  year: 2026,
  month: 6,
  day: 21
)

#let pembimbingUtama = "Imam Fahrur Rozi, S.T., M.T."
#let nipPembimbingUtama = "19840610 200812 1 004"

#let pembimbingPendamping = "Ir. Deddy Kusbianto P., M.MKom."
#let nipPembimbingPendamping = "19621128 198811 1 001"

#let pengujiUtama = "Budi Harijanto, S.T., M.MKom."
#let nipPengujiUtama = "19620105 199003 1 002"

#let pengujiPendamping = "Hendra Pradibta, SE., M.Sc"
#let nipPengujiPendamping = "19830521 200604 1 003"

#let ketuaJurusan = "Rudy Ariyanto, S.T., M.Cs."
#let nipKetuaJurusan = "19711110 199903 1 002"

#let ketuaProgramStudi = "Imam Fahrur Rozi, S.T., M.T."
#let nipKetuaProgramStudi = "19840610 200812 1 004"

#hide[
  #heading()[
    FRONT COVER
  ]
]
#align(
  center + horizon,
  stack(
    text(14pt)[
      *#title*
    ],
    v(5em),
    text(14pt)[
      *BACHELOR ESSAY PROPOSAL*
    ],
    v(1em),
    text(12pt)[
      Used as a Requirement to Advance to Diploma IV Exam \
      State Polytechnic of Malang
    ],
    v(2.5em),
    text(12pt)[
      *By:* \
      *#upper[#fname #lname] #h(2.5em) NIM. #nim*
    ],
    v(10fr),
    image("./images/logo-polinema.png", width: 4cm),
    v(10fr),
    text(16pt)[
      *DEPARTMENT OF INFORMATICS ENGINEERING* \
      *MAJOR OF INFORMATION TECHNOLOGY* \
      *STATE POLYTECHNIC OF MALANG* \
      *#validationDate.display("[month repr:long] [year]")*
    ]
  ),
)

#pagebreak()

#align(
  center + horizon,
  stack(
    [*#heading()[
      APPROVAL PAGE
    ]*],
    v(3em),
    text(14pt)[
      *#title*
    ],
    v(2.5em),
    text(12pt)[
      *Composed By:* \
      *#upper[#fname #lname] #h(2.5em) NIM. #nim*
    ],
    v(2.5em),
    text(12pt)[
      *This Final Report was examined on #validationDate.display("[day] [month repr:long] [year]")*
    ],
    v(2.5em),
    text(12pt)[
      *Disetujui oleh:* \ \
      #table(
        columns: (auto, auto, auto, auto, auto),
        align: top + left,
        stroke: none,
        row-gutter: 1em,
        [1.], [Main \ Supervisor], [:], [#underline[#pembimbingUtama]\ NIP. #nipPembimbingUtama], [\ ....................],
        [2.], [Supervisor \ Companion], [:], [#underline[#pembimbingPendamping]\ NIP. #nipPembimbingPendamping], [\ ....................],
        [3.], [Main \ Examiner], [:], [#underline[#pengujiUtama]\ NIP. #nipPengujiUtama], [\ ....................],
        [4.], [Examiner \ Companion], [:], [#underline[#pengujiPendamping]\ NIP. #nipPengujiPendamping], [\ ....................],
      )
    ],
    v(1fr),
    [Mengetahui,],
    v(2.5em),
    table(
      columns: (50%, 50%),
      align: horizon + center,
      stroke: none,
      [Chairman of Department \ Information Technology],
      [Chairman of Study Program \ Informatics Engineering],
      v(5em),
      v(5em),
      [#underline[#ketuaJurusan] \ NIP. #nipKetuaJurusan],
      [#underline[#ketuaProgramStudi] \ NIP. #nipKetuaProgramStudi ],
    )
  )
)

#pagebreak()

#set par(
  justify: true,
)

#heading()[STATEMENT]
#v(1em)
#par(
  leading: 1em,
)[
  #h(1em) I hereby declare that in this thesis there is no work, either in whole or in part, that has been submitted to obtain an academic degree at any university, and to the best of my knowledge there is also no work or opinion that has been written or published by other people, except those that are written in this manuscript and mentioned in the list of citations / library.
]
#v(5em)
#align(
  right,
  table(
    columns: (auto),
    stroke: none,
    [Malang, #validationDate.display("[day] [month repr:long] [year]")],
    v(5em),
    [#fname, #lname],
  )
)

#pagebreak()

#heading()[
  ABSTRACT
]

#v(1em)

*#lname, #fname.* "#title". *Supervisor: (1) #pembimbingUtama, (2) #pembimbingPendamping* \ \
*Bachelor Essay, Informatics Management Study Program, Department of Information Technology, State Polytechnic of Malang, 2026.* \ \

#par(
  first-line-indent: 0em,
)[
  This study explores the use of static code analysis
  for automated grading of programming assignments,
  focusing on the correctness of code structure rather
  than execution. The methodology involves analyzing
  source code using heuristics to provide consistent
  feedback. The findings indicate that static code
  analysis can effectively automate grading, offering
  benefits such as consistent feedback and time
  efficiency for lecturers. However, it also presents
  drawbacks, such as limited evaluation of execution
  correctness. The study concludes that static code
  analysis is a viable method for automated grading,
  with potential to enhance both student learning and
  lecturer efficiency.

  *Keywords*: static code analysis, automated grading, programming assignments, software engineering
]

#pagebreak()

#outline(
  title: [Table of Contents],
  indent: auto,
)

#pagebreak()

#heading()[Table of Images]
#outline(
  title: none,
  target: figure.where(kind: image)
)

#pagebreak()

#counter(page).update(1)
#set page(numbering: "1")
#set heading(numbering: "1.1.")

#show heading.where(level: 1): set heading(numbering: " 1.")
#show heading.where(level: 1): it => [
  Chapter #counter(heading).display(it.numbering) #it.body
]
#show heading.where(level: 2): set align(left)

#set heading(numbering: "1.1.")
#set par(
  justify: true,
)

= Introduction
== Background
In recent times, many aspects of our life have started to be automated. Although, there are still many aspects
that is left to be done by humans, especially in the field of education. One of the aspects is the process of grading
assignments. The significant growth of the computer science course over the years has lead to more
assignments to grade @Krusche2020.

Unfortunately, it is often impossible to personally review students' code and provide prompt, thorough comments,
and professional static analysis tools are inappropriate for use in educational settings.. This is because the
grading process is often manual and subjective. The chance of inconsistency in grading accuracy, feedback quality,
and the overall variance in the grading process is high when done by humans @Messer2024.

There has been several studies attempting to automate the grading process of programming assignments, but most of them have been limited to assessing the
correctness of the solution instead of how the actual solution is written @Messer2024.

Static code analysis usually refers to the analysis of a computer program without executing it.
This is usually done by analysing the source code of the program and using several heuristics to
determine the correctness of the program, whether it be stylistic, syntax errors, or possible
logical errors.

This study will explore the use of static code analysis to automatically grade programming assignments
as opposed to using it as a tool to check for correctness. This study will also discuss the benefits and
drawbacks of using such method to grade assignments.

== Problem Statement

There is a clear gap in regards to the grading process of programming assignments. This study will try
to answer the following questions:

1. How effective is the use of static code analysis to grade programming assignments?
2. What are the benefits of using static code analysis to grade assignments?
3. How can static code analysis be used to grade programming assignments?
4. What are the drawbacks of using static code analysis to grade programming assignments?
5. What are the limitations of using static code analysis and how to improve them?

== Objective of the study

The main objective of this study is to explore how viable it is to use static code analysis
to automatically grade programming assignments. Not limited to that, this study have
other related objectives which are listed below:

1. To assess the effectiveness of doing automated grading of programming assignments is
   more effective that its manual counterpart.
2. To investigate whether or not using static code analysis to grade programming assignments
   is the viable and effective way to grade assignments.
3. To identify the impact of automated grading process to the students' learning process and
   how it makes the lecturer more time-efficient.
4. To identify if there are any drawbacks of using static code analysis to grade assignments
   and how to overcome them.

== Significance of the study

This study will try to fill in the gaps in the current grading process of programming assignments
by using static code analysis. It will focus on the correctness of how the solution is written
and how the solution is structured as opposed to the actual execution response of the solution.

== Scope of the study

The method used in this study will not involve the use of either human graders or artificial intelligence
to grade the assignments. Instead, it will focus on using static code analysis to grade the assignments
to provide the students with reproducible and consistent feedback. This study will not involve checking
the correctness of the solution since it requires executing the solution, which prevents the student
getting and instant feedback and quick iteration workflow to improve their solution.

There will also be data collection and analysis to evaluate the effectiveness of this method,
though it will not be a primary focus of this study.

= Review of Related Literature
== Previous Research Finding

The previous research that was done by @Krusche2020 states that in recent years, there has been a significant
increase in the number of programming assignments in computer science courses with varying degrees of difficulty.
@Krusche2020 proposes a method to improve the engagement of students in modelling by using an interactive
learning method supported by a software. The grading process is integrated in the software and automatically
done by the software. The software is able to provide instant feedback to the students.

The study conducted by @Syaifudin2024 proposes a method to automate the grading process of programming assignments
for android applications using unit testing and integration testing. Compared to @Krusche2020, this method
is more detached from the application used to write the assignments while still being able to provide feedback
to the students.

Several other tools has been proposed to automate the grading process as seen in @Rajesh2024. These tools
has evolved over the years and have been used in various educational settings. However, there is still not
a clear consensus on which tools are the most effective and why.

GradeStyle by @Iddon2023 is a tool that integrates with Github and provides automated feedback each time a student
pushes their code to the repository. This making the process of grading assignments more efficient because
most students already have Github account and can easily push their code to the repository and get feedback.

== Foundational Framework

The foundational framework of this study is the use of static code analysis to grade programming assignments.
This study specifically focuses more on the correctness of how the solution is written and how the solution
is structured as opposed to the actual execution response of the solution. Although, even if the main
objective of this study is to try to score the correctness of how the code is structured, it is important to note that
the result of the execution response of the solution is also considered albeit with a lower percentage.

= Research Methodology

Grading programming assignments often involves a subjective process. Most of the time, it only focuses on the correctness
of the solution and not the correctness of how the solution is written. The main reason of this study is to build a system
that can automatically grade programming assignments mainly based on the correctness of how the solution is written
utilising static code analysis, while also taking into account the correctness of the code execution.

This study will focus more on the qualitative aspects of the assignments rather than the quantitative
aspects. This is because the current focus of the study is to see whether or not the use of static code analysis
is feasible to grade programming assignments. The quantitative aspects of the assignments will be evaluated
later in the study.

== Qualitative Approach

To be able to prove the effectiveness of the use of static code analysis, the method used in this study
is by comparing it to the manual grades of the students which is done by the lecturer themself.

The lecturer will use the CodeCritiq app and create certain rules for the assignment to be graded and then several students
will be assigned to do the assignment. After all of the students have done the assignment, the lecturer will now manually
grade the assignment and compare it to the result of CodeCritiq.

The result of this comparison will be measured certain metrics which are all measured on a scale of 1-10:

1. The accuracy of the code structure
2. The correctness of the code structure
3. The correctness of the code execution

This should gives a clear picture of the effectiveness of the implementation of static code analysis in
an academic setting.

== Quantitative Approach

The quantitative approach will be asked to the students doing the assignments. The students
will be asked to write the code in accordance with the rules of the assignment that has been set
by the lecturer.

This method should give the students a better feedback loop of understanding on how they should write
the code and how the code should be structured.

Just like the qualitative approach, the students will handed a form for them to fill
after they have done the assignment. The form will contain the following fields:

1. How satisfied they are with the feedback-loop of the assignment
2. How satisfied they are with the ability of being able to see the result instantly without waiting for the lecturer to grade their assignments
3. How easy it is for them to submit their assignments

= Research Finding and Discussion

= Conclusion and Suggestion
== Conclusions

== Suggestions

#pagebreak()

#bibliography(
  "references.bib",
  style: "apa",
  title: "References",
)
