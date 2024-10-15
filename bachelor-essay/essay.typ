#set text(
  size: 12pt,
  font: "Times New Roman",
)

#set page(numbering: "1")

#show outline: it => {
  show heading: set align(center)
  it
}

#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  [*Chapter *]
  strong(it)
}

#align(
  center + horizon,
  grid(
    text(16pt)[
      *AUTOMATED GRADING SYSTEM USING STATIC CODE ANALYSIS TO ELIMINATE MANUAL GRADING PROCESS FOR PROGRAMMING ASSIGNMENTS*
    ],
    v(2cm),
    text(16pt)[
      *BACHELOR ESSAY PROPOSAL* \
      *(PROPOSAL SKRIPSI)* \
      *2026* \
    ],
    v(2cm),
    text(16pt)[
      *By:* \
      *Dicha Zelianivan Arkana NIM. 2241720002*
    ],
    v(4cm),
    image("images/logo-polinema.png", width: 4.5cm),
    v(3cm),
    text(16pt)[
      *INFORMATICS ENGINEERING STUDY PROGRAM* \
      *INFORMATION TECHNOLOGY DEPARTMENT* \
      *STATE POLYTECHNIC OF MALANG* \
      *2026*
    ]
  ),
)

#pagebreak()
#outline(
  title: [Table of Contents],
  indent: auto,
)
#pagebreak()

#set heading(numbering: "1.1.")
#set par(
  first-line-indent: 1cm,
  justify: true,
)

= Introduction
== Background
In recent times, many aspects of our life have started to be automated. Although, there are still many aspects
that is left to be done by humans, especially in the field of education. One of the aspects is the process of grading
assignments. The significant growth of the computer science course over the years has lead to more
assignments to grade @Krusche2020.

Manually grading programming assignments can be time consuming and error-prone @Liu2019. This is because the
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
though there will be no comparison with other methods due to difference in parameters with
other studies.

= Review of Related Literature
== Previous Research Finding
#lorem(40) \ \
#lorem(40)

== Concept of Problem in Programming Assignments Grading System
#lorem(40) \ \
#lorem(40)

== Conceptual Framework
#lorem(40) \ \
#lorem(40)

= Research Method
#lorem(40) \ \
#lorem(40)

= Research Finding and Discussion
#lorem(40) \ \
#lorem(40)

= Conclusion and Suggestion
== Conclusions
#lorem(40) \ \
#lorem(40)

== Suggestions
#lorem(40) \ \
#lorem(40)

#pagebreak()

#bibliography("references.bib", style: "apa")
