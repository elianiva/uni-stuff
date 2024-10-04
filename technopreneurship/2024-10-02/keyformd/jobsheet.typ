#import "@preview/fletcher:0.5.1" as fletcher: node, edge, diagram

#set heading(numbering: "1.1.")
#set page(numbering: "1")
#set text(size: 14pt)
#set par(justify: true)

#show outline: it => {
  show heading: set align(center)
  it
}
#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  strong(it)
}

#align(
  center + horizon,
  text(20pt)[
    *Keyformd: \ From the Business Perspective cccc*
  ],
)

#v(1cm)

#align(
  center + horizon,
  grid(
    columns: 2,
    align: center,
    gutter: 1cm,
    align(center)[
      #text(12pt)[
        *Dicha Zelianivan Arkana* \
        elianiva\@protonmail.com \
        *2241720002*
      ]
    ],
    align(center)[
      #text(12pt)[
        *Al Azhar Rizqi Rifai Firdaus* \
        emailazhar\@gmail.com \
        *2241720263*
      ]
    ],
    grid.cell(
      colspan: 2,
      align(center)[
        #text(12pt)[
          *Muhammad Baihaqi Aulia Asy'ari* \
          baihaqilearning\@gmail.com \
          *2241720145*
        ]
      ],
    )
  ),
)

#v(1cm)

#align(
  center,
  text(12pt)[
    An analysis for exploring the uniqueness of the idea, finding the target market,
    figuring out the difficulty in creating the projects, defining the budget, and
    assessing the team skill set.
  ],
)

#pagebreak()
#outline(
  title: [Table of Contents],
  indent: 5mm,
)
#pagebreak()

= Uniqueness of the Idea

This section explores the uniqueness of the general idea for Keyformd, which is an ergonomic keyboard.

== Basic Idea

The basic idea of Keyformd is to create an ergonomic keyboard that is more comfortable to use than the conventional keyboard. Keyformd is made based on these ideas listed below:

- Eliminating existing problem with the conventional keyboard which should boost the productivity of the users.
- Creating a unique selling point for the customers so that they have an attachment to their own keyboard which makes them more likely to use the keyboard more and more.
- Creating a keyboard that is more comfortable to use for the users so they can use it for a longer time period.

== Reasons Behind

There are several reasons on why we want to explore the idea of creating a uniquely customised ergonomic keyboard:

- The conventional keyboard is not comfortable to use for a longer time period hence we would like to explore the idea of creating a more comfortable keyboard.
- There are not many keyboard that offers deep customisation, hence we want to be one of the main players in the market that offers customisation for the users.
- The market for ergonomic keyboard albeit niche, is still growing. We want to try to tap into this market and create a unique selling point for our product.

#pagebreak()

= Target Market

In this section, we will discuss the possible target market using the TAM, SAM, SOM analysis.

#circle[
  Total Available Market
  #circle[
    Serviceable \ Available Market
    #circle[
      #align(center + horizon)[
        Serviceable \ Obtainable \ Market
      ]
    ]
  ]
]

== Total Available Market

Total Available Market (TAM) means the total market demand for a product or service. There are several categories of people that might be interested in the product:

- Computer Users
- Students
- Programmers
- Writer (Novel, Article, etc)

#pagebreak()

== Serviceable Available Market

Serviceable Available Market (SAM) means the portion of the TAM that can be served by the company as of now. The company can serve the following categories of people, at least for now:

- Students
- Programmers
- Writer (Novel, Article, etc)

== Serviceable Obtainable Market

Serviceable Obtainable Market (SOM) means the portion of the SAM that the company can actually obtain. The company can obtain the following categories of people:

- Students
- Programmers

= Difficulty of the project

A section where we will dive into the difficulty of implementing the business idea. These are the main concern that we have currently:

== Manufacturing

The manufacturing process is currently done manually, which means it needs a lot of time to produce a single keyboard. The process involves a lot of manual labour which is not the most efficient way. The process of creating a single keyboard involves the following steps:

1. Designing the keyboard, case, exploring the layout, and the material that will be used.
2. Creating the case, which involves cutting the material, which is currently an acrylic sheet.
3. Handwiring the keys with other components (MCU, socket, battery, etc) and putting the case together.
4. Writing the firmware and keymap for the keyboard.
5. Testing the keyboard to make sure that it works as intended.

Ideally the manufacturing process should be automated to reduce the time needed to produce a single keyboard. For example, the case and the firmware can be automatically generated using a software based on the position of the keys and the layout that the user wants.

For now, the manufacturing process is done manually, which means that the process is not scalable. The company needs to find a way to automate the process to make it more efficient.

== Customising

The process of customising the keyboard is not the easiest process for the user. They need to learn how to code the firmware to adjust the keymap to their own liking. The company needs to find a way to make the process of customising the keyboard easier for the user, for example, making a software that can generate the firmware based on the user's preference.

= Budget

A section where we will discuss the budget needed to implement the business idea. These are the main concern that we have currently:

== Business Model

The current business model for *Keyformd* is yet to be determined. For now, the company is selling the keyboard as an exclusive product, which means that the price of the keyboard is quite high. The company needs to find a way to reduce the price of the keyboard to make it more accessible to the general public.

Although, exclusivity is part of the selling point of the product. The company needs to find a balance between exclusivity and accessibility.

= Team Skill Set

At the moment, the team consists of three people, each with their own skill set:

- *Designer*: responsible for designing the keyboard, the case, and the layout.
- *Engineer*: responsible for wiring the keys and other components together.
- *Programmer*: responsible for writing the firmware and keymap for the keyboard.

This is not very efficient as the team needs to work together to create a single keyboard. The company needs to find a way to make the process more efficient, for example, by hiring more people with the same skill set or by automating some of its processes.
