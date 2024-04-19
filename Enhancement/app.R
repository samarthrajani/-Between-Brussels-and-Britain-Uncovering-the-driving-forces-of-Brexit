# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)
library(dplyr)
library(readr)
library(ggplot2)
library(DT)

# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel("Graph of speech frequency by party"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      selectInput("party",
                  "Select party:",
                  choices = c("Con", "DUP", "GPEW", "Independent", "Lab", "LibDem", "PlaidCymru", "Respect", "SDLP", "SNP", "UKIP", "UUP"),
                  multiple = TRUE)  # Allow multiple selection
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("speech_plot"),
      DT::dataTableOutput("table")
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  # Get data
  data <- read_csv("/Users/Samarthsumitrajani/Final paper/data/raw_data/raw_data.csv")
  speech_counts <- table(data$party)
  speech_counts_dataframe <- as.data.frame(speech_counts)
  names(speech_counts_dataframe) <- c("Party", "Count")
  
  
  # Render interactive table
  output$table <- DT::renderDataTable({
    req(input$party)
    filtered_df <- filter(speech_counts_dataframe, Party %in% input$party)
    filtered_df
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
