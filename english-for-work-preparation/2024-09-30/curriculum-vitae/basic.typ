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
- Uses Next.js with Typescript, tRPC, Prisma, and Tailwind to maximise the development speed - and user experience of the CMS
- Utilises MySQL as the database and MinIO/S3 as the object storage
- Using Docker for both local development setup and easy deployment solution

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
- Uses SSE to implement notification feature 

== Education

#edu(
  institution: "State Polytechnic of Malang",
  location: "Malang, Indonesia",
  dates: dates-helper(start-date: "Aug 2022", end-date: "May 2026"),
  degree: "Bachelor's of Applied Science, Informatics Engineering",
)
- Cumulative GPA: 3.84\/4.0
- Community Lead for Workshop Riset Informatika 2023/2024

== Extracurricular Activities

#extracurriculars(
  activity: "Workshop Riset Informatika",
  dates: dates-helper(start-date: "Oct 2022", end-date: "Present"),
)
- Community Lead for 2023/2024 period
- Helped to teach and mentor students in web development and programming in general
- Helped to organize and manage the events for the community

== Skills
- *Programming Languages*: Javascript, Typescript, PHP, SQL, C\#
- *Technologies*: React, Remix, Astro, Svelte, Tailwind CSS, Git, Docker, Traefik
