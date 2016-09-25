#create conversion variables for megabytes and gigabytes
conversion <- function(kilo)  kilo*.001
conversion_giga <- function(kilo_2) kilo_2*.000001
    
#create output variables function to print the entered kilobytes
#and the converted megabytes and gigabytes
shinyServer(
    function(input, output) {
      output$InputValue <- renderPrint({input$kilo})
      output$mega <- renderPrint({conversion(input$kilo)})
      output$giga <- renderPrint({conversion_giga(input$kilo)})
      
      }
)