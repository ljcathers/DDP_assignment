lapCount <- function(lapave) 60/lapave

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$lapave})
    output$prediction <- renderPrint({lapCount(input$lapave)})
  }
)