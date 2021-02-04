library(shiny)
library(shinydashboard)

Aquifer_Auser_1 <- read.csv("../data/Aquifer_Auser.csv")
Aquifer_Doganella_1 <- read.csv("../data/Aquifer_Doganella.csv")
Aquifer_Luco_1 <- read.csv("../data/Aquifer_Luco.csv")

shinyServer <- function(input, output, session) {
  
  # ---------- Aquifer_Auser data -------------
  output$Aquifer_Auser_ <- renderDataTable({
    Aquifer_Auser_1
  })
  
  
  #---------- Aquifer_Doganella data ---------------
  output$Aquifer_Doganella_ <- renderDataTable({
    Aquifer_Doganella_1
  })
  
  
  
  # ----------- Aquifer_Luco data ------------------
  output$Aquifer_Luco_ <- renderDataTable({
    Aquifer_Luco_1
  })
}