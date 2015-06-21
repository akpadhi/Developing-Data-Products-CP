# server.R
# romkhot

# load packages:
library(shiny)
library(ggvis)

# server code:
shinyServer(
  function(input, output)
  {
    
    # Reactive expression wrappers:
    iris_kind <- reactive(input$kind)  
    iris_part <- reactive(input$part)
    n_obs <- reactive(input$nobs)

    input_size <- reactive(input$size)
    input_span <- reactive(input$span)
    input_opacity <- reactive(input$opacity)
    
    #Subset the iris data set:
    iris_ <- reactive( {iris[iris$Species == iris_kind(), ] } )
    iris_2 <- reactive(iris_[1:n_obs(), ]) 
  
    # Build a plot:
     iris_ %>% 
      ggvis(~Sepal.Length, ~Sepal.Width ) %>%
      #ggvis(~W, ~L) %>%
      group_by(Species) %>%
      layer_points(size := input_size, opacity := input_opacity, fill = ~Species) %>% #
      layer_smooths(span = input_span, se=TRUE, fill = ~Species) %>%  #
      bind_shiny("ggvis", "ggvis_ui")

})