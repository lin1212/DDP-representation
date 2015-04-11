library(shiny)

BMIcalculator<-function(height, weight) (weight/(height*12)^2)*703
shinyServer(
    function(input, output){
        output$BMI<-renderPrint({round(BMIcalculator(input$height, input$weight),2)})
  }
)