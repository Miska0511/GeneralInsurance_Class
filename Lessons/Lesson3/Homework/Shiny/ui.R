

library(shiny)
library(ggplot2)

fluidPage(
  sidebarPanel(
    selectInput("colour","Colouring Var", choices=c("Segment","Unit","Region","Business","Year"))
    ),
  mainPanel(plotOutput("scatterPlot"))
  
  )
