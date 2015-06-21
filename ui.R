# ui.R
# romkhot

library(shiny)
library(ggvis)


# Define UI for application that draws a histogram
shinyUI(
  
  fluidPage
  (  
  # Application title
  titlePanel("Exploring Iris Data Set"),
  
  # Sidebar layout
  sidebarLayout
  (    

    # Sidebar panel
    sidebarPanel
    (
      radioButtons("kind", "Iris Kind:",
                   c( "Iris Setosa" = "setosa",
                      "Iris Versicolour" = "versicolor",
                      "Iris Virginica" = "virginica" )
      ),
      
      selectInput("part", "Flower part:", 
                  c("Sepal", "Petal")                
      ),
      
      sliderInput("nobs", "Number of observations:", 
                  1, 50, 25, step = 1
      ),
      
      sliderInput("size", "Point Size:", 10, 1000, value = 100),
      sliderInput('span', "Smoothing Factor:", 0.4, 1, value = 0.7),
      sliderInput('opacity', "Point Opacity:", 0, 1, value = 0.5)
    ),
    
    # Main panel
    mainPanel
    (
      uiOutput("ggvis_ui"),
      ggvisOutput("ggvis")
    )
  )
  
 )
 
)