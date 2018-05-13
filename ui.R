library(shiny)

shinyUI(fluidPage(
  h1("Diamonds Price Calculator"), 
  
  #Get a range of length, width and depth
  
  sliderInput(
    "x",
    label = "length in mm (0–10.74)", 
    min = 0, max = 10.74, value = c(2,6), step = 0.01
  ), 
  
  
  sliderInput(
    "y",
    label = "width in mm (0–58.9)", 
    min = 0, max = 58.9, value = c(18,30), step = 0.01
  ),
  
  sliderInput(
    "z",
    label = "depth in mm (0–31.8)", 
    min = 0, max = 31.8, value = c(10,18), step = 0.01
  ),
  
  #choose a level of cut and color
  selectInput(
    "cut",
    label = "Cut of the diamonds", 
    choices = unique(diamonds$cut), 
    selected = "Good"
  ), 
  
  selectInput(
    "color",
    label = "Color of the diamonds( from J(worst) to D(best) )", 
    choices = unique(diamonds$color), 
    selected = "F"
  ),
  
  textOutput("price_range")
))