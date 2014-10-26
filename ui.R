# Developing Data Products - course project - ui.R



# install and load shiny package
library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Temperature Conversion"),
  sidebarPanel(
    numericInput('temp',"Enter temperature to be converted",value=NULL,step=1),
    radioButtons('type',"Select temperature type of input",selected=NULL,c("c","f")),
    submitButton("Submit")
      ),
  mainPanel(
    h3("You entered:"),
    verbatimTextOutput("InputTemp"),
    verbatimTextOutput("InputType"),
    h4("Which converts to "),
    verbatimTextOutput("conversion")
    )))

