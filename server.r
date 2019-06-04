library(shiny)

shinyServer<- function(input, output,session) {
   
  observeEvent (input$button, {
    
    if(input$select=="1"){
    value <- 0.15    
  } else {
    if(input$select=="2"){
      value <- 0.18   
    } else {
      value <- 0.2
    }
  }
  
  n <- input$slider1 * value 
  output$text1 <- renderText(n)
}
)
}
  
  
  
  