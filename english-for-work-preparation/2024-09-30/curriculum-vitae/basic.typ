#import "@preview/basic-resume:0.1.0": *

// Put your personal information here, replacing mine
#let name = "Dicha Zelianivan Arkana"
#let location = "Malang, Indonesia"
#let email = "elianiva@protonmail.com"
#let github = "github.com/elianiva"
#let linkedin = "linkedin.com/in/dichaa"
#let phone = "+62 8953-888-99-808"
#let personal-site = "elianiva.my.id"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  // Accent color is optional. Feel free to remove the next line if you want your resume to be in black and white
  accent-color: "#6b2d45",
)

#line(length: 100%)

A fullstack web developer with a passion for building web applications that are both user-friendly and efficient. I have 3+ years of professional experience in web development and have worked on various projects, both proprietary and open-source. I am proficient in both frontend and backend development using Typescript, NodeJS, React, and Laravel. I am also experience in devops and have used Docker, Traefik, and Github Actions in my projects.

== Education

#edu(
  institution: "State Polytechnic of Malang",
  location: "Malang, Indonesia",
  dates: dates-helper(start-date: "Aug 2022", end-date: "May 2026"),
  degree: "Bachelor's of Applied Science, Informatics Engineering",
)
- Cumulative GPA: 3.84\/4.0
- Community Lead for Workshop Riset Informatika 2023/2024

== Work Experience

#work(
  title: "Fullstack Web Developer - Remote, Full Time",
  location: "Bogor, Indonesia",
  company: "IPB Training, Global Scolarship Service Indonesia",
  dates: dates-helper(start-date: "Apr 2024", end-date: "Present"),
)
- Initiated the use of Github Action for CI/CD pipeline
- Used Javascript and Typescript to build and maintain learning platform
- Instrumented Sentry for better tracing and better error reporting to improve bug fixing downtime
- Built finance system for managing company's financial data
- Developed a multi-tenant CMS similar to SkillAcademy by RuangGuru using Laravel

#work(
  title: "Fullstack Web Developer - Remote, Freelance",
  location: "Cheonan, South Korea",
  company: "Chanolja, PT Healstation Indonesia",
  dates: dates-helper(start-date: "Jan 2023", end-date: "Apr 2023"),
)
- Building Content Management System for a South Korean mobile app that accommodates car, camp car, and camping site rent in one app
- Designed the database schema along with other developer
- Used Next.js with Typescript, tRPC, Prisma, and Tailwind to maximise the development speed - and user experience of the CMS
- Utilised MySQL as the database and MinIO/S3 as the object storage
- Used Docker for both local development setup and easy deployment solution

#work(
  title: "Frontend Web Developer - Remote, Freelance",
  location: "Malang, Indonesia",
  company: "Enam Dua Teknologi",
  dates: dates-helper(start-date: "Jun 2022", end-date: "Aug 2022"),
)
- Developed a Task Management System for J99 Corp. Holding similar to Jira using React, React Hook Form, React Query, Typescript, and ChakraUI
- Applied Render-as-you-fetch pattern using Suspense to improve the User Experience of the app
- Applied Atomic Design in React to make sharing components easier
- Collaborate with other frontend and backend developers to build a task management system
- Implemented Figma UI design into an interactive React UI
- Used SSE to implement notification feature

== Extracurricular Activities

#extracurriculars(
  activity: "Workshop Riset Informatika",
  dates: dates-helper(start-date: "Oct 2022", end-date: "Present"),
)
- Community Lead for 2023/2024 period
- Helped to teach and mentor students in web development and programming in general
- Helped to organize and manage the events for the community
- Became a speaker several times giving talks about technologies and programming

== Skills
- *Programming Languages*: Javascript, Typescript, PHP, SQL, C\#
- *Technologies*: React, Remix, Astro, Svelte, Tailwind CSS, Git, Docker, Traefik
- *Soft Skills*: Leadership, Communication, Problem Solving, Teamwork

== Projects

#project(
  name: "RWIS",
  url: "github.com/integer-class/rwis-3",
  role: "Fullstack Web Developer",
  dates: "Mar 2024 - Jul 2024",
)
- RWIS is a web-based information system for managing the data of a village
- Developed the website using Laravel and the Whatsapp Bot using Go
- Fine tuned Google Gemini as a customised AI assistant

#project(
  name: "Room Tenant System",
  url: "github.com/integer-class/final-project-group-4",
  role: "Fullstack Web Developer",
  dates: "Aug 2023 - Dec 2023",
)
- Developed a system for managing room tenant in State Polytechnic of Malang
- Built the website using native PHP and used SQLServer as the database
- Developed mini-framework similar to Laravel and AspNetCore using the latest PHP feature

#project(
  name: "Jisho Lens",
  url: "https://github.com/elianiva/jisho-lens",
  dates: "Mar 2022 - Aug 2022",
  role: "Mobile Developer",
)
- Built an app to help learning Japanese by immersion that works similar to Google Lens
- Used Flutter, Riverpod, SQLite, and Google ML Kit to build the app


#project(
  name: "Pesto",
  url: "https://github.com/teknologi-umum/pesto",
  dates: "Oct 2022 - Sep 2023",
  role: "Backend Developer",
)
- A custom remote code execution engine for competitive programming purposes
- Built using Typescript and NextJS from the ground up
- Used Docker to isolate the execution environment

== Languages
- *Indonesian*: Native
- *English*: Professional working proficiency
