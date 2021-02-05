library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
    
    # ---------------- DashBoard Header ---------------
    dashboardHeader(
      title = "Acea Smart Water Analytics", titleWidth = 280
      ),
    
    
    # ---------------- DashBoard Sidebar ---------------
    
    dashboardSidebar(
      sidebarMenu(
        
        # ------------ About ------------------
        menuItem(
          text = "ABOUT", tabName = "about", icon = icon("clipboard")
          ),
        
        # ------------ Data -----------------------
        menuItem(
          "DATA",
          
          # ---------- Sub menu Aquifer_Auser --------------
          menuSubItem(
            "Aquifer_Auser.CSV", tabName = "Aquifer_Auser"
          ),
          
          # ---------- Sub menu Aquifer_Doganella ---------------
          menuSubItem(
            "Aquifer_Doganella.CSV", tabName = "Aquifer_Doganella" 
          ),
          
          # ---------- Sub menu Aquifer_Luco -------------
          menuSubItem(
            "Aquifer_Luco.CSV", tabName = "Aquifer_Luco"
          ),
           
          # ---------- Sub menu Aquifer_Petrignano ------------
          menuSubItem(
            "Aquifer_Petrignano.CSV", tabName = "Aquifer_Petrignano"
          ),
          
          # ---------- Sub menu Lake_Bilancino --------------
          menuSubItem(
            "Luke_Bilancino.CSV", tabName = "Luke_Bilancino"
          ),
           
          # ---------- Sub menu River_Arno ---------------
          menuSubItem(
            "River_Arno.CSV", tabName = "River_Arno"
          ),
           
          # ---------- Sub menu water_Spring_Amiata.csv ------------
          menuSubItem(
            "Water_Spring_Amiata.CSV", tabName = "Water_Spring_Amiata"
          ),
           
          # ---------- Sub menu Water_Spring_Lupa ---------------
          menuSubItem(
            "Water_Spring_Lupa.CSV", tabName = "Water_Spring_Amiata"
          ), 
           
          # ---------- Sub menu Water_Spring_Madonna_di_Canneto -------
          menuSubItem(
            "Water_Spring_Madonna_di_Canneto.CSV", tabName = "Water_Spring_Madonna_di_Canneto"
          )
          )
      )
      ),
    
    
    # ---------------- DashBoard Body ---------------
    
    dashboardBody(
      tabItems(
        
        # ------------ Tab About ------------------
        tabItem(
          tabName = "about", p("The Acea Group is one of the leading Italian multiutility operators. 
                               Listed on the Italian Stock Exchange since 1999, 
                               the company manages and develops water and electricity networks and 
                               environmental services. Acea is the foremost Italian operator in the water 
                               services sector supplying 9 million inhabitants in Lazio, Tuscany, Umbria, 
                               Molise, Campania."
                               ),
                               
                               p("In this competition we will focus only on the water sector 
                               to help Acea Group preserve precious waterbodies. 
                                 As it is easy to imagine, a water supply company struggles with the 
                                 need to forecast the water level in a waterbody (water spring, lake, 
                                 river, or aquifer) to handle daily consumption. 
                                 During fall and winter waterbodies are refilled, but during 
                                 spring and summer they start to drain. To help preserve the 
                                 health of these waterbodies it is important to predict the 
                                 most efficient water availability, in terms of level and water 
                                 flow for each day of the year."
                               )
        ),
        
        # ------------ Tab Aquifer_AUser -------------------
        tabItem(
          tabName = "Aquifer_Auser", dataTableOutput("Aquifer_Auser_")
        ),
        
        
        # ------------ Tab Aquifer_Doganella ----------------
        tabItem(
          tabName = "Aquifer_Doganella", dataTableOutput("Aquifer_Doganella_")
        ),
        
        
        # ------------ Tab Aquifer_Luco ----------------------
        tabItem(
          tabName = "Aquifer_Luco", dataTableOutput("Aquifer_Luco_")
        ),
        
        # ------------ Tab Aquifer_Petrignano ------------
        tabItem(
          tabName = "Aquifer_Petrignano", dataTableOutput("Aquifer_Petrignano_")
        ),
         
        # ------------ Sub menu Lake_Bilancino --------------
        tabItem(
          tabName = "Luke_Bilancino", dataTableOutput("Luke_Bilancino_")
        ),
         
        # ------------ Sub menu River_Arno ---------------
        tabItem(
          tabName = "River_Arno", dataTableOutput("River_Arno_")
        ),
        
        # ------------ Sub menu water_Spring_Amiata.csv ------------
        tabItem(
          tabName = "Water_Spring_Amiata", dataTableOutput("Water_Spring_Amiata_")
        ),
         
        # ------------ Sub menu Water_Spring_Lupa ---------------
        tabItem(
          tabName = "Water_Spring_Lupa", dataTableOutput("Water_Spring_Lupa_")
        ),
         
        # ------------ Sub menu Water_Spring_Madonna_di_Canneto -------
        tabItem(
          tabName = "Water_Spring_Madonna_di_Canneto", dataTableOutput("Water_Spring_Madonna_di_Canneto_")
        )
      )
    )
  )
)

