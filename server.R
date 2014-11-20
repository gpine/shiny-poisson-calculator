poissonProb <- function(randVar,successRate) {
  exp(-successRate) * (successRate^randVar) / factorial(randVar)
}

poissonCumu <- function(randVar,successRate) {
  cumu <- 0
  for (i in 0:randVar) {
    cumu <- cumu + (exp(-successRate) * (successRate^i) / factorial(i))
  }
  cumu
}

shinyServer(
  function(input, output) {
    output$inputValue1 <- renderText({input$randVar})
    output$inputValue2 <- renderText({input$successRate})
    output$prob <- renderText({poissonProb(input$randVar,input$successRate)})
    output$probCumu <- renderText({poissonCumu(input$randVar,input$successRate)})
  }
)
