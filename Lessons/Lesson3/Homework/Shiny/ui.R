
fluidPage(
  titlePanel("Scatter Plot with colour"),
  sidebarPanel(
    selectInput("colour","Colouring Var", choices=c("Segment","Unit","Region","Business","Year"))
    ),
  mainPanel(plotOutput("scatterPlot"))
  
  )
