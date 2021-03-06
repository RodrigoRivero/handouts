# Libraries
library(shiny)
library(ggplot2)
library(dplyr)

# Data
species <- read.csv('data/species.csv', 
                    stringsAsFactors = FALSE)
animals <- read.csv('data/animals.csv', na.strings = '', 
                    stringsAsFactors = FALSE)

# User Interface
in1 <- selectInput(inputId = 'pick_species',
                   label = 'Pick a species',
                   choices = unique(species[['id']]))
out1 <- textOutput('species_id')
out2 <- plotOutput('species_plot')
tab <- tabPanel(title = 'Species', in1, out1, out2)
ui <- navbarPage(title = 'Portal Project', tab)

# Server
server <- function(input, output) {
  output[['species_id']] <- renderText(input[['pick_species']])
  output[['species_plot']] <- renderPlot(
    animals %>%
      filter(species_id == input[['pick_species']]) %>%
      ggplot(aes(year)) +
      geom_bar()
  )
}

# Create the Shiny App
shinyApp(ui = ui, server = server)
