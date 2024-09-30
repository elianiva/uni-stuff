#import "@preview/modern-resume:0.1.0": modern-resume, experience-work, experience-edu, project, pill

#show: modern-resume.with(
  author: "Dicha Zelianivan Arkana",
  job-title: "Fullstack Web Developer",
  bio: "A passionate Fullstack Web Developer with 3 years of experiencee in building and maintaining interactive web applications.",
  contact-options: (
    email: link("mailto:elianiva@protonmail.com")[elianiva\@protonmail.com],
    mobile: "+62 53-888-99-808",
    location: "Indonesia",
    linkedin: link("https://www.linkedin.com/in/dichaa")[linkedin/dichaa],
    github: link("https://github.com/elianiva")[github.com/elianiva],
    website: link("https://elianiva.my.id")[elianiva.my.id],
  ),
)

== Work experience

#experience-work(
  title: "Fullstack Web Developer - Remote, Full Time",
  subtitle: "IPB Training, Global Scolarship Service Indonesia",
  task-description: [
    - Initiated the use of Github Action for CI/CD pipeline
    - Used Javascript and Typescript to build and maintain learning platform
    - Instrumented Sentry for better tracing and better error reporting to improve bug fixing downtime
    - Built finance system for managing company's financial data
    - Developed a multi-tenant CMS similar to SkillAcademy by RuangGuru using Laravel 
  ],
  date-from: "04/2023",
)

#experience-work(
  title: "Fullstack Web Developer - Remote, Freelance",
  subtitle: "Chanolja, PT Healstation Indonesia",
  task-description: [
    - Building Content Management System for a South Korean mobile app that accommodates car, camp car, and camping site rent in one app
- Designed the database schema along with other developer
- Uses Next.js with Typescript, tRPC, Prisma, and Tailwind to maximise the development speed - and user experience of the CMS
- Utilises MySQL as the database and MinIO/S3 as the object storage
- Using Docker for both local development setup and easy deployment solution
  ],
  date-from: "01/2023",
  date-to: "04/2023",
)

== Education

#experience-edu(
  title: "Bachelor of Applied Science in Informatics Engineering",
  subtitle: "State Polytechnic of Malang",
  task-description: [
    - Short summary of the most important courses
    - Explanation of master thesis topic
  ],
  date-from: "08/2022",
  date-to: "07/2026",
)

#colbreak()

== Projects

#project(
  title: [#link("https://github.com/elianiva/jisho-lense")[Jisho Lens]],
  subtitle: "Japanese learning app",
  description: [
    - Android app to help learning Japanese by scanning words from youur phone
    - Uses Flutter, Riverpod, Google ML Kit, and SQLite
  ],
  date-from: "09/2022",
)

#project(
  title: [#link("https://github.com/teknologi-umum/pesto")[Pesto]],
  subtitle: "Custom remote code execution engine",
  description: [
    - A custom remote code execution engine for running code snippets in multiple languages
    - Written in Typescript and uses Docker for sandboxing
  ],
  date-from: "03/2022",
  date-to: "02/2023",
)

== Languages

#pill("Indonesia (native)") \
#pill("English (fluent)")

== Skills

#pill("Docker", fill: true)
#pill("Git", fill: true)
#pill("Typescript", fill: true)
#pill("Javascript", fill: true)
#pill("React", fill: true)
#pill("Remix", fill: true)
#pill("Svelte", fill: true)
#pill("SQL", fill: true)
