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
    numbering: "1.",
)
#set align(left)

= Smith Predictor Performance

#let gcc_smith_plot() = {
  let assoc_1_data = ((1, 45.24), (2, 43.01), (3, 41.57), (4, 41.68), (5, 41.33), (6, 41.94))

  let x_axis = axis(min: 1, max: 6, step: 1, location: "bottom", title: [$b$])
  let y_axis = axis(min: 40, max: 48, step: 1, location: "left", helper_lines: false, title: [Misprediction Rate (% Misses)])
  
  let p1 = plot(data: assoc_1_data, axes: (x_axis, y_axis))
 
  let g1 = graph_plot(p1, stroke: black, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions", markings: [#emoji.rocket])

  overlay((g1,), (90%, 30%))
}

#let jpeg_smith_plot() = {
  let assoc_1_data = ((1, 50.02), (2, 30.98), (3, 29.12), (4, 28.14), (5, 28.00), (6, 27.94))

  let x_axis = axis(min: 1, max: 6, step: 1, location: "bottom", title: [$b$])
  let y_axis = axis(min: 25, max: 55, step: 3, location: "left", helper_lines: false, title: [Misprediction Rate (% Misses)])
  
  let p1 = plot(data: assoc_1_data, axes: (x_axis, y_axis))
 
  let g1 = graph_plot(p1, stroke: black, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions", markings: [#emoji.rocket])

  overlay((g1,), (90%, 30%))
}

#let perl_smith_plot() = {
  let assoc_1_data = ((1, 45.24), (2, 43.01), (3, 41.57), (4, 41.68), (5, 41.33), (6, 41.94))

  let x_axis = axis(min: 1, max: 6, step: 1, location: "bottom", title: [$b$])
  let y_axis = axis(min: 40, max: 48, step: 1, location: "left", helper_lines: false, title: [Misprediction Rate (% Misses)])
  
  let p1 = plot(data: assoc_1_data, axes: (x_axis, y_axis))
 
  let g1 = graph_plot(p1, stroke: black, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions", markings: [#emoji.rocket])

  overlay((g1,), (90%, 30%))
}

#{
  v(20pt)
  [== GCC, Smith]
  gcc_smith_plot()
  v(20pt)
  [== JPEG, Smith]
  jpeg_smith_plot()
    pagebreak()
  [== PERL, Smith]
  perl_smith_plot()
  v(20pt)
}

= Bimodal Predictor Performance

#let gcc_Bimodal_plot() = {
  let assoc_1_data = ((1, 25.72), (2, 21.66), (3, 18.00), (4, 15.33), (5, 13.46), (6, 12.30))

  let x_axis = axis(min: 1, max: 6, step: 1, location: "bottom", title: [$b$])
  let y_axis = axis(min: 10, max: 30, step: 4, location: "left", helper_lines: false, title: [Misprediction Rate (% Misses)])
  
  let p1 = plot(data: assoc_1_data, axes: (x_axis, y_axis))
 
  let g1 = graph_plot(p1, stroke: black, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions", markings: [#emoji.rocket])

  overlay((g1,), (90%, 30%))
}

#let jpeg_Bimodal_plot() = {
  let assoc_1_data = ((1, 7.85), (2, 7.75), (3, 7.69), (4, 7.65), (5, 7.51), (6, 7.49))

  let x_axis = axis(min: 1, max: 6, step: 1, location: "bottom", title: [$b$])
  let y_axis = axis(min: 7, max: 8, step: 0.5, location: "left", helper_lines: false, title: [Misprediction Rate (% Misses)])
  
  let p1 = plot(data: assoc_1_data, axes: (x_axis, y_axis))
 
  let g1 = graph_plot(p1, stroke: black, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions", markings: [#emoji.rocket])

  overlay((g1,), (90%, 30%))
}

#let perl_Bimodal_plot() = {
  let assoc_1_data = ((1, 20.60), (2, 16.17), (3, 13.79), (4, 11.62), (5, 10.59), (6, 8.94))

  let x_axis = axis(min: 1, max: 6, step: 1, location: "bottom", title: [$b$])
  let y_axis = axis(min: 6, max: 22, step: 4, location: "left", helper_lines: false, title: [Misprediction Rate (% Misses)])
  
  let p1 = plot(data: assoc_1_data, axes: (x_axis, y_axis))
 
  let g1 = graph_plot(p1, stroke: black, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions", markings: [#emoji.rocket])

  overlay((g1,), (90%, 30%))
}

#{
  v(20pt)
  [== GCC, Bimodal]
  gcc_Bimodal_plot()
    pagebreak()

  [== JPEG, Bimodal]
  jpeg_Bimodal_plot()
  v(20pt)
  [== PERL, Bimodal]
  perl_Bimodal_plot()
  v(20pt)
}

#pagebreak()

= Gshare Predictor Performance

#let gcc_gshare() = {
  let gcc_7 = ((2, 27.81), (3, 28.56), (4, 28.95), (5, 31.06), (6, 31.10), (7, 32.30))
  
  let gcc_8 = ((2, 23.56), (3, 24.6), (4, 24.96), (5, 26.82), (6, 27.53), (7, 28.55), (8, 29.53))

  let gcc_9 = ((2, 19.94), (3, 20.88), (4, 20.84), (5, 22.86), (6, 23.47), (7, 24.52), (8, 25.49), (9, 25.97))

  let gcc_10 = ((2, 16.95), (3, 17.63), (4, 18.00), (5, 19.37), (6, 19.88), (7, 20.78), (8, 21.22), (9, 22.10), (10, 22.52))

  let gcc_11 = ((2, 14.46), (3, 15.01), (4, 15.05), (5, 16.43), (6, 17.06), (7, 17.75), (8, 17.75), (9, 18.52), (10, 18.83), (11, 19.26))

  let gcc_12 = ((2, 12.53), (3, 13.33), (4, 13.40), (5, 14.23), (6, 14.47), (7, 15.12), (8, 15.16), (9, 15.48), (10, 15.69), (11, 16.21), (12, 16.28))

  let x_axis = axis(min: 2, max: 12, step: 1, location: "bottom", title: [$b$])
  let y_axis = axis(min: 10, max: 35, step: 5, location: "left", helper_lines: false, title: [Misprediction Rate (% Misses)])
  
  let p1 = plot(data: gcc_7, axes: (x_axis, y_axis))
  let p2 = plot(data: gcc_8, axes: (x_axis, y_axis))
  let p3 = plot(data: gcc_9, axes: (x_axis, y_axis))
  let p4 = plot(data: gcc_10, axes: (x_axis, y_axis))
  let p5 = plot(data: gcc_11, axes: (x_axis, y_axis))
  let p6 = plot(data: gcc_12, axes: (x_axis, y_axis))
 
  let g1 = graph_plot(p1, stroke: black, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")
  let g2 = graph_plot(p2, stroke: blue, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")
  let g3 = graph_plot(p3, stroke: red, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")
  let g4 = graph_plot(p4, stroke: orange, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")
  let g5 = graph_plot(p5, stroke: purple, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")
  let g6 = graph_plot(p6, stroke: green, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")

  overlay((g1, g2, g3, g4, g5, g6), (90%, 30%))
}

#let jpeg_gshare() = {
  let jpeg_7 = ((2, 8.41), (3, 8.68), (4, 8.65), (5, 11.03), (6, 9.49), (7, 9.68))
  
  let jpeg_8 = ((2, 8.04), (3, 8.24), (4, 8.2), (5, 10.14), (6, 8.82), (7, 8.69), (8, 9.07))

  let jpeg_9 = ((2, 7.94), (3, 8.07), (4, 8.04), (5, 9.91), (6, 8.46), (7, 8.24), (8, 8.32), (9, 8.54))

  let jpeg_10 = ((2, 7.87), (3, 7.98), (4, 7.97), (5, 9.81), (6, 8.37), (7, 8.03), (8, 8.05), (9, 8.27), (10, 7.98))

  let jpeg_11 = ((2, 7.45), (3, 7.76), (4, 7.62), (5, 9.35), (6, 7.9), (7, 7.39), (8, 7.5), (9, 7.68), (10, 7.47), (11, 7.66))

  let jpeg_12 = ((2, 7.43), (3, 7.82), (4, 7.6), (5, 9.28), (6, 7.84), (7, 7.22), (8, 7.28), (9, 7.4), (10, 7.3), (11, 7.37), (12, 7.35))

  let x_axis = axis(min: 2, max: 12, step: 1, location: "bottom", title: [$b$])
  let y_axis = axis(min: 7, max: 12, step: 1, location: "left", helper_lines: false, title: [Misprediction Rate (% Misses)])
  
  let p1 = plot(data: jpeg_7, axes: (x_axis, y_axis))
  let p2 = plot(data: jpeg_8, axes: (x_axis, y_axis))
  let p3 = plot(data: jpeg_9, axes: (x_axis, y_axis))
  let p4 = plot(data: jpeg_10, axes: (x_axis, y_axis))
  let p5 = plot(data: jpeg_11, axes: (x_axis, y_axis))
  let p6 = plot(data: jpeg_12, axes: (x_axis, y_axis))
 
  let g1 = graph_plot(p1, stroke: black, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")
  let g2 = graph_plot(p2, stroke: blue, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")
  let g3 = graph_plot(p3, stroke: red, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")
  let g4 = graph_plot(p4, stroke: orange, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")
  let g5 = graph_plot(p5, stroke: purple, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")
  let g6 = graph_plot(p6, stroke: green, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")

  overlay((g1, g2, g3, g4, g5, g6), (90%, 30%))
}

#let perl_gshare() = {
  let perl_7 = ((2, 21.28), (3, 24.05), (4, 24.78), (5, 26.31), (6, 28.72), (7, 30.51))
  
  let perl_8 = ((2, 17.47), (3, 19.81), (4, 19.00), (5, 20.64), (6, 22.63), (7, 24.82), (8, 23.39))

  let perl_9 = ((2, 14.58), (3, 16.08), (4, 16.11), (5, 15.48), (6, 18.19), (7, 18.06), (8, 17.69), (9, 18.48))

  let perl_10 = ((2, 11.52), (3, 13.52), (4, 13.19), (5, 12.23), (6, 13.78), (7, 12.32), (8, 12.64), (9, 12.67), (10, 13.66))

  let perl_11 = ((2, 9.91), (3, 11.59), (4, 11.03), (5, 10.48), (6, 12.03), (7, 10.23), (8, 9.29), (9, 9.08), (10, 8.91), (11, 9.88))

  let perl_12 = ((2, 8.83), (3, 9.59), (4, 9.42), (5, 9.22), (6, 10.00), (7, 8.74), (8, 6.97), (9, 7.10), (10, 6.42), (11, 6.67), (12, 6.88))

  let x_axis = axis(min: 2, max: 12, step: 1, location: "bottom", title: [$b$])
  let y_axis = axis(min: 5, max: 35, step: 5, location: "left", helper_lines: false, title: [Misprediction Rate (% Misses)])
  
  let p1 = plot(data: perl_7, axes: (x_axis, y_axis))
  let p2 = plot(data: perl_8, axes: (x_axis, y_axis))
  let p3 = plot(data: perl_9, axes: (x_axis, y_axis))
  let p4 = plot(data: perl_10, axes: (x_axis, y_axis))
  let p5 = plot(data: perl_11, axes: (x_axis, y_axis))
  let p6 = plot(data: perl_12, axes: (x_axis, y_axis))
 
  let g1 = graph_plot(p1, stroke: black, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")
  let g2 = graph_plot(p2, stroke: blue, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")
  let g3 = graph_plot(p3, stroke: red, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")
  let g4 = graph_plot(p4, stroke: orange, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")
  let g5 = graph_plot(p5, stroke: purple, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")
  let g6 = graph_plot(p6, stroke: green, (100%, 30%), rounding: 10%, caption: "Relation between b and mispredictions")

  overlay((g1, g2, g3, g4, g5, g6), (90%, 30%))
}

#{
  v(20pt)
  [== GCC, Gshare]
  gcc_gshare()
  v(20pt)
  [== JPEG, Gshare]
  jpeg_gshare()
    pagebreak()

  [== PERL, Gshare]
  perl_gshare()
  v(20pt)
}