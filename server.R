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
    
    crime<- reactive({
      a <- crimedata1[crimedata1$Crime.type==input$crimeType,]
      return(a)
    })
    
    output$pinpointMap <- renderLeaflet({
      assam_leaflet %>% 
        addMarkers(~lng, ~lat,  popup= popupTable(crime()))
    }
  )
    })
  
  
     
  
