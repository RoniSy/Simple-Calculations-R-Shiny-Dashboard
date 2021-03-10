function(input, output, session) {
    showNotification("Created by Sya'roni", duration = NULL, type = "message")
    #jika tanda Tambah diklik maka jalankan reaktif
    observeEvent( input$add,{
        x<-as.numeric(input$satu)
        y<-as.numeric(input$dua)
      
         #reactive expression
        n<-x+y
        m<-x/y
        o<-x*y
        p<-x-y
        output$sum<-renderPrint(n)
        output$bagi<-renderPrint(m)
        output$kali<-renderPrint(o)
        output$kurang<-renderPrint(p)
        
      }
    
    )
}
