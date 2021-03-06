library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("N-Gram Word Prediction"),
  
  sidebarPanel(
    
    textInput("text_input", "Text Input:", value = ""),
    submitButton('Submit'),
    br(),
    h3("Instructions:"),
    p("1. Type a phrase into the Text Box"),
    p('2. Click the "Submit" button'),
    p("3. Select a tab to view prediction output")
  ),
  
  mainPanel(
    tabsetPanel(type="tabs",
      tabPanel("Prediction",
        h3("Word Prediction"),
        verbatimTextOutput("predicted_word")
      ),
      tabPanel("Table",
        h3("Predicted Words Ranked by Probability"),
        dataTableOutput('prediction_table')),
      tabPanel("Plot",
        h3("Plot of Predicted Words"),
        plotOutput("prediction_plot")),
      tabPanel("About",
        h3("About this App"),
        p("Author: Mathew Bramson"),
        p("Date: January 24th, 2016"),
        p("The source data consists of various corpora scraped from publicly available sources. 
          The original datasets as well as documentation can be found at http://www.corpora.heliohost.org/"),
        p("This App was designed for the Capstone course of the Johns Hopkins Data Science Specialization.")
      )
      
    )
  )
  
  )
)
