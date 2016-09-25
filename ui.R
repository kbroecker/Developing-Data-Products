
#Load shiny package
library(shiny)
#create shiny user interface portion of code
shinyUI(
    pageWithSidebar(
#create title for page and app
      headerPanel("Convert Kilobytes"),
#define the input variable parameters and create submit button      
      sidebarPanel(
        numericInput('kilo', "Kilobytes", 0, min=0, step = 1),
        submitButton("Submit")
      ),
#create main panel to display and label the output from server.R code 
#The output consists of the users input kilobyte value, the conversion to megabytes
#and the conversion to gigabytes
      mainPanel(
        h3("Converted Results"),
        h4("Kilobytes Entered"),
        verbatimTextOutput("InputValue"),
        h4("Converted to Megabytes"),
        verbatimTextOutput('mega'),
        h4("Converted to Gigabytes"),
        verbatimTextOutput('giga')
      )
    )
)