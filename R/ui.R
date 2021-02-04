library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
    
    # ------------  DashBoard Header ---------------
    dashboardHeader(
      title = "Acea Smart Water Analytics", titleWidth = 280
      ),
    
    
    # ------------  DashBoard Sidebar ---------------
    
    dashboardSidebar(
      sidebarMenu(
        
        # --------------- About ------------------
        menuItem(
          text = "ABOUT", tabName = "about", icon = icon("clipboard")
          ),
        
        # ------------- Data -----------------------
        menuItem(
          "DATA",
          
          # ------------ Sub menu Aquifer_Auser --------------
          menuSubItem(
            "Aquifer_Auser.CSV", tabName = "Aquifer_Auser"
          ),
          
          # ---------- sub menu Aquifer_Doganella ---------------
          menuSubItem(
            "Aquifer_Doganella.CSV", tabName = "Aquifer_Doganella" 
          ),
          menuSubItem(
            "Aquifer_Luco.CSV", tabName = "Aquifer_Luco"
          )
          )
      )
      ),
    
    
    # ------------  DashBoard Body ---------------
    
    dashboardBody(
      tabItems(
        
        # ----------- Tab About ------------------
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
        
        # --------------- Tab Aquifer_AUser -------------------
        tabItem(
          tabName = "Aquifer_Auser", dataTableOutput("Aquifer_Auser_")
        ),
        
        
        # --------------- Tab Aquifer_Doganella ----------------
        tabItem(
          tabName = "Aquifer_Doganella", dataTableOutput("Aquifer_Doganella_")
        ),
        
        
        # --------------- Tab Aquifer_Luco ----------------------
        tabItem(
          tabName = "Aquifer_Luco", dataTableOutput("Aquifer_Luco_")
        )
      )
    )
  )
)

