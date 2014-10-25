library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Shiny App"),
    sidebarPanel(
      radioButtons("id1", "Would you rather...",
                        c("Always wear wet socks" = "1",
                          "Wash your hair once a year" = "0")
                         ),
      actionButton("goButton", "submit"),
     
      radioButtons("id2", "Would you rather...",
                   c("Receive a lifetime supply of your favorite food" = "1",
                     "Receive a lifetime supply of gasoline" = "0")
      ),
      actionButton("goButton2", "submit"),
      
      radioButtons("id3", "Would you rather...",
                   c("Find true love" = "1",
                     "Win the lottery" = "0")
      ),
      actionButton("goButton3", "submit")
    ),
    mainPanel(
      h2("Results"),
      h4("Question 1:"),
      textOutput("oid1"),
      textOutput("oid2"),
      h4("Question 2:"),
      textOutput("oid3"),
      textOutput("oid4"),
      h4("Question 3:"),
      textOutput("oid5"),
      textOutput("oid6")
    )

    )

)
