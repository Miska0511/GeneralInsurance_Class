library(shiny)
library(ggplot2)
library(dplyr)

dt_KPI <- lesson2_KPI
dt_KPI <- dt_KPI%>% filter(!is.na(Business))

function(input, output){
  selectedData <- reactive(dt_KPI)
  output$scatterPlot <- renderPlot({
    ggplot(data = dt_KPI) +
      geom_point(mapping = aes_string(x = dt_KPI$Premium, y = dt_KPI$Expenses, colour= input$colour)) +
      geom_smooth(mapping = aes_string(x = dt_KPI$Premium, y = dt_KPI$Expenses, colour= input$colour))+
      labs(x = "Premium", y = "Expenses")
      
  })
    
}
