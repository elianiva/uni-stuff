#set heading(numbering: "1.1.")
#set page(numbering: "1")
#set text(size: 14pt)
#set par(
  justify: true,
  first-line-indent: 1cm,
)

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
    *CareerCupid*: \ Aplikasi match-making antara pekerja dan perusahaan, \
    otomatis memilih pekerjaan yang sesuai dengan minat dan keahlian.
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
        *Rakai Seto Sembodo* \
        mamangrakai\@gmail.com \
        *2341720135*
      ]
    ],
    grid.cell(
      colspan: 2,
      align(center)[
        #text(12pt)[
          *Fikri Muhammad Abdillah* \
          fikri\@gmail.com \
          *2341720145*
        ]
      ],
    )
  ),
)

#pagebreak()
#outline(
  title: [Daftar Isi],
  indent: 5mm,
)
#pagebreak()

= Latar Belakang
== Deskripsi Masalah

Proses pencarian pekerjaan yang sesuai dengan pencari kerja seringkali memakan waktu dan tenaga. Pencari kerja harus mencari informasi dari berbagai sumber, membandingkan satu pekerjaan dengan yang lain, dan mempertimbangkan berbagai faktor lainnya. Di sisi lain, perusahaan juga harus melakukan proses seleksi yang panjang dan melelahkan untuk mendapatkan kandidat yang sesuai dengan kebutuhan mereka.

Salah satu masalah yang sering dihadapi oleh pencari kerja adalah fragmentasi informasi. Informasi tentang lowongan pekerjaan tersebar di berbagai macam platform, mulai dari website resmi perusahaan, platform pencarian kerja, hingga media sosial. Hal ini membuat pencari kerja harus menghabiskan banyak waktu untuk mencari informasi yang sesuai dengan kebutuhan mereka.

Di sisi lain, perusahaan juga menghadapi masalah yang serupa. Mereka harus melakukan proses seleksi yang panjang dan melelahkan untuk mendapatkan kandidat yang sesuai dengan kebutuhan mereka. Proses ini melibatkan banyak tahapan, mulai dari pemasangan iklan lowongan pekerjaan, seleksi berkas, hingga wawancara.

Oleh sebab itu, diperlukan sebuah aplikasi yang dapat memudahkan proses pencarian kerja sehingga para pencari kerja tidak lagi perlu menghabiskan banyak waktu dan tenaga untuk mencari informasi di berbagai platform.
Aplikasi ini juga diharapkan dapat membantu pencari kerja dan perusahaan dengan cara memberikan skor atau ranking terhadap kandidat dan perusahaan berdasarkan kecocokan.

== Batasan Masalah

Aplikasi ini memiliki beberapa batasan, yaitu:

TBD

== Tujuan

Tujuan dari aplikasi ini adalah:

1. Memudahkan pencari kerja dalam mencari informasi tentang lowongan pekerjaan dengan cara agregasi dari berbagai platform.
2. Memudahkan memilih lowongan pekerjaan yang sesuai dengan minat dan keahlian pencari kerja dengan cara match-making.
3.

= Solusi yang Diusulkan

== Deskripsi Umum Aplikasi

CareerCupid adalah aplikasi match-making antara pekerja dan perusahaan dengan cara agregasi informasi lowongan pekerjaan dari berbagai platform dan memberikan rekomendasi lowongan pekerjaan yang sesuai dengan minat dan keahlian menggunakan sistem match-making berbasis AI.

== Metode yang Digunakan

= Gambaran Umum Aplikasi yang Diusulkan
== Use Case Diagram
