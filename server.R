library(shiny)
library(dplyr)

shinyServer(function(input, output) {
  price <- reactive({
    price <- diamonds %>% 
      filter(x < input$x[2] & x > input$x[1]) %>% # filter by the range
      filter(y < input$y[2] & x > input$y[1]) %>% 
      filter(z < input$z[2] & x > input$z[1]) %>% 
      filter(cut == input$cut) %>% 
      filter(color == input$color) %>% 
      select(price) %>% 
      pull()
  })
  output$price_range <- renderText({
    return(paste(max(price), "~", min(price))) # return a price range
  })
})
