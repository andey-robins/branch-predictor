#set text(
    size: 11pt,
    font: "New Computer Modern"
)

#set page(
    paper: "us-letter",
    margin: 1in,
    footer: [
        #set align(left)
        #smallcaps("Advanced Computer Architecture")
        #h(1fr)
        #counter(page).display(
            "1",
        )
    ]
)

#set heading(
    numbering: "1.a.",
)

#set terms(
    tight: false,
    separator: text[ -- ],
    indent: 1em,
    hanging-indent: 2em,

)

#set align(center)
#set heading(numbering: none)

#import "@preview/plotst:0.2.0": * 

== University of Central Florida
== Department of Computer Science
== CDA 5106: Fall 2023
== #datetime.today().display("[month repr:long] [day], [year]")
== Machine Problem 2: Branch Prediction

#v(50pt)

== by

#v(30pt)

== Andey Taylor Robins

#v(70pt)


#box(stroke: black, radius: 10pt, inset: 20pt)[#set align(left)
Honor Pledge: "I have neither given nor received unauthorized aid on this test or assignment."

Student's electronic signature: #underline[Andey Taylor Robins]]

#pagebreak()
#set heading(
    numbering: "1.a.",
)
#set align(left)

= Experiment One

#let exp1a_plot() = {
  /* sizes: 1024, 2048, 4096, 8192, 16_384, 32_768, 65_536, 131_072, 262_144, 524_288, 1_048_576 */

  let assoc_1_data = ((10, 19.346), (11, 14.774), (12, 10.017), (13, 6.700), (14, 4.609), (15, 3.768), (16, 3.292), (17, 3.233), (18, 2.584), (19, 2.584), (20, 2.584))
  
  let assoc_2_data = ((10, 15.603), (11, 10.714), (12, 7.528), (13, 4.734), (14, 3.384), (15, 2.881), (16, 2.713), (17, 2.590), (18, 2.584), (19, 2.582), (20, 2.582))

  let x_axis = axis(min: 10, max: 20, step: 1, location: "bottom", title: [$log_2($L1 Cache Size$)$])
  let y_axis = axis(min: 0, max: 24, step: 4, location: "left", helper_lines: false, title: [Miss Rate (% Misses)])
  
  let p1 = plot(data: assoc_1_data, axes: (x_axis, y_axis))
  let p2 = plot(data: assoc_2_data, axes: (x_axis, y_axis))
 
  let g1 = graph_plot(p1, stroke: black, (100%, 30%), rounding: 10%, caption: "Relation between cache size, associativity, and miss rate", markings: [#emoji.rocket])
  let g2 = graph_plot(p2, stroke: blue, (100%, 30%), rounding: 10%, caption: "Relation between cache size, associativity, and miss rate", markings: [#emoji.rocket])

  overlay((g1, g2), (90%, 30%))
}

#{
  v(20pt)
  exp1a_plot()
  v(20pt)
}

