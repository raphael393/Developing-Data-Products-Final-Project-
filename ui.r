

library(shiny)

shinyUI(fluidPage(

  titlePanel("How much should I tip?"),
  
  sidebarLayout(
    sidebarPanel(
      h3 ("Total bill in USD"),
      h5 ("Slide me! and then Select how good was the Service"),
      sliderInput("slider1","USD",min = 1, max = 250,
                   value = 1, step=0.1), 
      selectInput("select","How was the service?", 
                   choices = list("Okay"=1,"Good"=2, "Excelent"=3),
                   selected = 1),
    
      h4("Some tips!"),
      helpText("We recommend not skipping the tip, if you had 
               an issue is always better talk to the manager, 
               your server still did some work for you :)"),
      helpText("Okay = 15% / Good = 18% / Excelent = 20%"),
     actionButton("button","How Much?")
        ),
    
    mainPanel(
       h3 ("So the total amount going on my tip is!"),
       
       h4 (textOutput("text1"),style = "color:green"),
       h4 ("Dollars",style="color:green"),
       
       
       p ("Happy Eating and Thanks for using my app!")
       
    )
  )
))
