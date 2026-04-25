#let primary_colour = rgb("#2540c5") // red
#let link_colour = rgb("#12348e") // blue

#let styled-link(dest, content) = text(
    fill: primary_colour,
    link(dest, content)
)

#let unstyled-link(dest, content) = emph(text(
    link(dest, content)
  ))

#let view-more-block(text, link) = unstyled-link(
    link
  )[
    #block(
      fill: rgb("#3b4be1"),
      inset: 8pt,
      radius: 4pt
    )[#text]
  ]

#let button-badge(item) = {
  box(
      fill: rgb("#3e4ee5"),
      inset: (x: 3pt, y: 0.5pt),
      outset: (y: 3pt),
      radius: 2pt
    )[#text(
      fill: white, 
      item
    )]
}

#let project-heading(title) = {
  text(
    fill: primary_colour,
    title
  )
}

#let badge-text(badge, item) = {

  grid(
    columns: (60pt, 1fr),
    rows: auto,
    gutter: 3pt,
    button-badge(
      badge
    ),
    item
  )
}

#let icon(name, shift: 1.5pt) = {
  box(
    baseline: shift,
    height: 10pt,
    image("./icons/" + name + ".svg")
  )
  h(3pt)
}

#let findMe(services) = {
  set text(9pt)
  let icon = icon.with(shift: 2.5pt)

  services.map(service => {
      if service.name != "none" {
        icon(service.name)
      }

      if "display" in service.keys() {
        styled-link(service.link)[#{service.display}]
      } else {
        link(service.link)
      }
    }).join(h(10pt))
  [
    
  ]
}

#let term(period, location) = {
  text(9pt)[#period #h(1fr) #location]
}

#let leadershipExperience(title, term) = {
  text(10pt, weight: "semibold")[#title #h(1fr) #term]
}

#let linkWrapper(location, content) = {
  styled-link(location)[content]
}

#let max_rating = 5
#let skill(name, rating) = {
  let done = false
  let i = 1

  name

  h(1fr)

  while (not done){
    let colour = rgb("#c0c0c0") // grey

    if (i <= rating){
      colour = primary_colour
    }

    box(circle(
      radius: 4pt,
      fill: colour
    ))

    if (max_rating == i){
      done = true
    } else {
      // no spacing on last
      h(2pt)
    }

    i += 1
  }

  [\ ]
}


#let resume(
  name: "",
  content,
) = {
  set document(
    title: name + "'s CV",
    author: name,
  )
  set text(9.8pt, font: "IBM Plex Sans")
  set page(
    margin: (x: 20pt, y: 20pt),
  )

  show heading.where(
    level: 2
  ): it => text(
      fill: primary_colour,
    [
      #{it.body}
      #v(-7pt)
      #line(length: 100%, stroke: 1pt + primary_colour)
    ]
  )

  show heading.where(
    level: 3
  ): it => text(it.body)
  
  show heading.where(
    level: 4
  ): it => text(
    fill: primary_colour,
    it.body
  )

  columns(
    2,
    gutter: 15pt,
    content,
  )
}

