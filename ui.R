library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("R produce HW"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Number of bins:",
                   min = -50,max=50,value = 100),
       numericInput("Num","Input the population U want(0~100)",value = 100,min=0,max = 100,step = 1),
       numericInput("Mid","Decisede the middle value (-50~50)",value = 50,min = -50,max=50)
       ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("thePlot"),
       h3("the size of the scatters:"),
       textOutput("pred")
    )
  )
))
