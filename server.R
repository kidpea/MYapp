#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  
  output$thePlot <- renderPlot({
    # generate bins based on input$bins from ui.R
    NumOfP<-input$Num
    meanOfP<-input$Mid
    maxX<-input$bins
    X<-rnorm(NumOfP,mean = meanOfP,sd=maxX)
    Y<-rnorm(NumOfP,mean = meanOfP,sd=maxX)
    
    # draw the histogram with the specified number of bins
    plot(X,Y)
    
  })
  model1<-reactive({
    maxX<-input$bins
    pred<-maxX*maxX
  })
  output$pred<-renderText({
    model1()
  })
})
