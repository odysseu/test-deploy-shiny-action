#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define server logic required to draw a histogram
function(input, output, session) {

    output$distPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        seed <- 1234
        x    <- sample(2016:2025, 1000, replace=TRUE)
        # bins <- seq(2016, 2025, length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = input$bins, col = 'darkgray', border = 'white',
             xlab = 'Years',
             main = 'Random population sizes')

    })

}
