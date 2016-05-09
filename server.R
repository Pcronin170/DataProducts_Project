###########################################################
#server.R file for Shiny
###########################################################

createModel = function (x){

    vars = paste(x,collapse = " + ")
    modelFit = lm( paste0("mpg ~ ",vars),
                   data = mtcars)
    summary(modelFit)
}
library(shiny)
shinyServer(
    function(input,output){
        output$inputValue <- renderPrint({input$variable})
        output$coefficients = renderPrint({createModel(input$variable)})
    }
)
