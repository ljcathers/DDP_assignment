## my_app2

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Race lap predictor"),
    sidebarPanel(
      numericInput('lapave', 'Average Time/Lap (min.)', 2, min = 1, max = 60, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Predicted number of laps in a 60 minute race'),
      h4('Based on the current average time per lap:'),
      verbatimTextOutput("inputValue"),
      h4('The approximate number of laps to be completed in 60 minutes:'),
      verbatimTextOutput("prediction")
    )
  )
)