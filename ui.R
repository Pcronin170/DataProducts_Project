###########################################################
#This is my ui.R file for Shiny
###########################################################


library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Select mtcars variables to run regression on miles per gallon (MPG)"),
    sidebarPanel(
        h4("This program utilizes the mtcars data set in R to allow a user to run a linear
       regression to predict miles per gallon (MPG) using a selection of the other
           variables in the data set.  A user simply needs to select any of the folloiwng
           variables below, click submit,and the summary of the regression will appear
           in the right box."),
        checkboxGroupInput("variable", "Variable:",
                           c("Cylinders (cyl)" = "cyl",
                             "Transmission (am)" = "am",
                             "Gears (gear)" = "gear",
                             "Horse Power (hp)" = "hp",
                             "Displacement (disp)" = "disp",
                             "Weight (wt)" = "wt",
                             "Number of Carburetors (carb)" = "carb"
                             )),
        submitButton("Submit")
    ),
    mainPanel(
        h3('Results of regression'),
        h4('You entered'),
        verbatimTextOutput("inputValue"),
        h4('Regression Summary'),
        verbatimTextOutput("coefficients")
    )
))
