
fluidPage(
  titlePanel("Scatter Plot with colour"),
  sidebarPanel(
    selectInput("colour","Colouring Var", choices=c("Segment","Unit","Region","Business","Year"))
    ),
  mainPanel(plotOutput("scatterPlot"))
  
  )
################ Teoreticka cast ###################

# Region Cergo dosahuje oproti regionu Belandia vyssi zisk, pri rovnakych vyskach nakladov.
# Velke segmenty su oproti malym segmentom menej rizikove, teda aj hodnoty Premium a Expenses su mensie pre velke segmenty.
# Najstrmsiu krivku vztahu Premium a Expenses ma poistenie domacnosti, lebo domacnosti su nakladnejsie oproti ostatnym typom poistenia. Je to sposobene vplyvom ovela vacsieho poctu faktorov, ktore sa v inych oblastiach neobjavuju. 
# Z hladiska portolii, najyssie hodnoty Premium aj Expenses dosahuje Unit 7, lebo obsahuje narizikovejsie podniky. 































