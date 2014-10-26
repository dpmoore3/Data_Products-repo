# Developing data products - course project - server.R


# this is the function I will use in my app.  It will perform temperature conversion
# from celsius to fahrenheit and vice-versa
  
temp_conv <- function(temp,type) {
  if(type=="c") {
    temp*9/5+32
  } else
    if(type=="f") {
      (temp-32)*5/9
    } else {"Error"}         
}

shinyServer(
  function(input,output) {
    output$InputTemp <- reactive({input$temp})
    output$InputType <- reactive({input$type})
    output$conversion <- reactive({temp_conv(input$temp,input$type)})
  }
  )