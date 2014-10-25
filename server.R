submitnumber <-(-1)
submitnumber2 <-(-1)
submitnumber3 <-(-1)
socks <-(-1)
food <-(-1)
love <-(-1)

shinyServer(
  function(input, output) {
    q1<-reactive({input$goButton
      socks <<- socks + isolate(as.numeric(input$id1))
      submitnumber <<- submitnumber+1 
      isolate(m <- c(socks ,(submitnumber-socks)))
      result <- socks/submitnumber
      return(result)
      })


    #print out to main panel
    output$oid1 <- renderText({
      paste("Wet socks: ", ((round(q1(), 3))*100),"%")})
    output$oid2 <- renderText({
      paste("Dirty hair: ", ((round((1-q1()),3))*100),"%")})
    
    
    q2<-reactive({input$goButton2
                  food <<- food + isolate(as.numeric(input$id2))
                  submitnumber2 <<- submitnumber2 + 1 
                  result2 <- food/submitnumber2
                  return(result2)
    }) 
      
    output$oid3 <- renderText({
      paste("Lifetime supply of food: ", ((round(q2(), 3))*100),"%")})
    output$oid4 <- renderText({
      paste("Lifetime supply of gas: ", ((round((1-q2()),3))*100),"%")})
    
    
    
    q3<-reactive({input$goButton3
                  love <<- love + isolate(as.numeric(input$id3))
                  submitnumber3 <<- submitnumber3 + 1 
                  result3 <- love/submitnumber3
                  return(result3)
    }) 
    
    
    output$oid5 <- renderText(
      paste("Love: ", ((round(q3(), 3))*100),"%"))
    output$oid6 <- renderText(
      paste("Lottery: ", ((round((1-q3()),3))*100),"%"))
    
    
      
      
    
    
  }
)
