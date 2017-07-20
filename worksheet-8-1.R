# Data
species <- read.csv('data/species.csv', 
                    stringsAsFactors = FALSE)
animals <- read.csv('data/species.csv', na.strings = '', 
                    stringsAsFactors = FALSE)

#User Interface
ui <- navbarPage(title = 'Hello, Shiny World!')

# Server
server <- function(input, output){}

# Create the Shiny App
shinyApp(ui = ui, server = server)
