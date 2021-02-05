library(shiny)
library(shinydashboard)

Aquifer_Auser_1 <- read.csv("../data/Aquifer_Auser.csv")
Aquifer_Doganella_1 <- read.csv("../data/Aquifer_Doganella.csv")
Aquifer_Luco_1 <- read.csv("../data/Aquifer_Luco.csv")
Aquifer_Petrignano_1 <- read.csv("../data/Aquifer_Petrignano.csv")
Luke_Bilancino_1 <- read.csv("../data/Lake_Bilancino.csv")
River_Arno_1 <- read.csv("../data/River_Arno.csv")
Water_Spring_Amiata_1 <- read.csv("../data/Water_Spring_Amiata.csv")
Water_Spring_Lupa_1 <- read.csv("../data/Water_Spring_Lupa.csv")
Water_Spring_Madonna_di_Canneto_1 <- read.csv("../data/Water_Spring_Madonna_di_Canneto.csv")



shinyServer <- function(input, output, session) {
  
  # ---------- Aquifer_Auser data -------------
  output$Aquifer_Auser_ <- renderDataTable({
    Aquifer_Auser_1
  })
  
  # ---------- Aquifer_Doganella data ---------------
  output$Aquifer_Doganella_ <- renderDataTable({
    Aquifer_Doganella_1
  })

  # ---------- Aquifer_Luco data ------------------
  output$Aquifer_Luco_ <- renderDataTable({
    Aquifer_Luco_1
  })
   
  # ---------- Aquifer_Petrignano data -------------
  output$Aquifer_Petrignano_ <- renderDataTable({
    Aquifer_Petrignano_1
  })
   
  # ---------- Luke_Bilancino data -------------
  output$Luke_Bilancino_ <- renderDataTable({
    Luke_Bilancino_1
  })
   
  # ---------- River_Arno data -------------
  output$River_Arno_ <- renderDataTable({
    River_Arno_1
  })
   
  # ---------- Water_Spring_Amiata_ data -------------
  output$Water_Spring_Amiata_ <- renderDataTable({
    Water_Spring_Amiata_1
  })
   
  # ---------- Water_Spring_Lupa_ data -------------
  output$Water_Spring_Lupa_ <- renderDataTable({
    Water_Spring_Lupa_1
  })
   
  # ---------- Water_Spring_Madonna_di_Canneto data -------------
  output$Water_Spring_Madonna_di_Canneto_<- renderDataTable({
    Water_Spring_Madonna_di_Canneto_1
  })
}