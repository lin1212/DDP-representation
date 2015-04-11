library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("BMI Calculator"),
  sidebarPanel(
    numericInput('height', 'Height (ft)', 5),
    numericInput('weight', 'Weight (lbs)', 100),
    submitButton('Calculate BMI')
    ),
  mainPanel(
    h3('Result of BMI calculation'),
    h4('Your have a BMI of '),
    verbatimTextOutput("BMI")
  )
))
