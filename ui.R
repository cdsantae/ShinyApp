library(shiny)

# Define UI for OLS demo application
shinyUI(navbarPage("Simulation of Ordinary Least Squares",
      tabPanel("About", mainPanel(includeHTML("README.html")),
      style='width: auto; height: auto'),
      tabPanel("App",
   #Application title
   #titlePanel(h2("Simulation of Ordinary Least Squares",align='center')),
   sidebarLayout(position='right',
   sidebarPanel(
      sliderInput("nobs",h5("Number of Observations:"),min=10,max=500,value=20),
      textInput("rseed",label=h5("Random Seed"),value=1),
      sliderInput("sdx",h5("Standard deviation of X:"),min=.25,max=5,value=1,step=.25),
      sliderInput("sdu",h5("Standard deviation of u:"),min=1,max=50,value=3,step=1),
      selectInput("dgp",h5("Data Generating Process:"),
                  list("y=2+3*x+u", 
                       "y=2+3*x-.5*x2+u",
                       "y=-10-1.5*x+x2+u",
                       "y=-2*x-.5*x2+u",
                       "y=5+1*x-.1*expx+u",
                       "y=.2*expx+u*10",
                       "y=-4-2*x2+.4*expx-x*2+u*5",
                       "y=-1-2*x+1.5*x2-1.5*x3-.05*x4
                       +.0001*x5+u*5"
                  )),
      checkboxInput("yscalar","y=y*(-1)",FALSE),

      selectInput("regression",h5("regression:"),
                  list("y~x", 
                       "y~x2",
                       "y~expx",
                       "y~x+x2",
                       "y~x+expx",
                       "y~x+x2+expx",
                       "y~x+x2+x3+x4+x5"
                  )),
      checkboxInput("constant","Include Constant",TRUE),
      checkboxInput("showdata","Show Data Points",TRUE),
      checkboxInput("predict","Show Predicted Values",TRUE),
      checkboxInput("resid","Show Residuals",FALSE),
      width=3,position='right',
      tags$style("body{background-color:#FAFFFF}")),
   
   # Show the main display
   mainPanel(
      tabsetPanel(type='pills',
         tabPanel("Plot",plotOutput("scatter",height="600px")),
         tabPanel("Summary",br(),tableOutput("lmStats"),tableOutput("lmResults"))),
   width=9)
))))