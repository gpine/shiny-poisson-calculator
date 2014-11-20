shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Poisson Calculator"),
    sidebarPanel(
      numericInput('randVar', 'Random Variable', 3, min = 0, step = 1),
      numericInput('successRate', 'Success Rate (expected value)', 2, min = 0, step = 1),
      p("This program calculates the poisson probability and cumulative probability
        given a random variable and a success rate (expected value).")
    ),
    mainPanel(
      h3('Results of calculation'),
      h4('You entered'),
      verbatimTextOutput("inputValue1"),
      verbatimTextOutput("inputValue2"),
      h4('...which resulted in a poisson probability of '),
      verbatimTextOutput("prob"),
      h4('...and a cumulative poisson probability (from 0 to inputted random variable) of '),
      verbatimTextOutput("probCumu"),
      h3("Documentation:",a("poissoncalc",href="documentation.html"))
    )
  )
)
