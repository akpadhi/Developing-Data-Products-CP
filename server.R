# server.R
# romkhot

# load packages:
library(shiny)
library(ggvis)
library(plyr)

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
    plot_title <- reactive({iris_kind() + ", " + iris_part()})

    #Subsetting the iris data set: 
    iris_ <- reactive({      
                         if (iris_part() == "Sepal"){ 
                           iris_ <- iris[c("Sepal.Length", "Sepal.Width", "Species")]                            
                         } else {
                           iris_ <- iris[c("Petal.Length", "Petal.Width", "Species")]
                         }                             
                         names(iris_) <- c("Length", "Width", "Iris.Kind")
                         (iris_[iris_$Iris.Kind == iris_kind(), ])[1:n_obs(), ]                         
                     })
    
    # Build a plot:
    iris_ %>% 
      ggvis( x = ~Width, y = ~Length ) %>%
      group_by(Iris.Kind) %>%
      layer_points(size := input_size, opacity := input_opacity, fill = ~Iris.Kind) %>%
      layer_smooths(span = input_span, se=TRUE, fill = ~Iris.Kind) %>% 
      bind_shiny("ggvis", "ggvis_ui")

})