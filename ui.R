library(shiny)
library(shinydashboard)

shinyUI(
    dashboardPage(
        dashboardHeader(title = "Perhitungan"),
        dashboardSidebar(
            sidebarMenu(
                menuSubItem("Dashboard",tabName = "dashboard",icon = icon("dashboard")),
                menuSubItem("Penjumlahan",tabName = "sales1"),
                menuSubItem("Pengurangan",tabName = "sales2"),
                menuSubItem("Pembagian",tabName = "sales3"),
                menuSubItem("Perkalian",tabName = "sales4")
                
            )),
        dashboardBody(
            tabItems(
                
                tabItem(tabName = "dashboard",
                        #membuat kolom input pengisian
                        h3("Masukan Angka"),
                        textInput("satu", "bilangan bulat pertama"),
                        textInput("dua", "bilangan bulat kedua"),
                        actionButton("add","Hitung"),
                        
                ),
                
                tabItem(tabName = "sales1",
                        #membuat kolom input pengisian
                        h4("Hasil Penjumlahan"),
                        textOutput("sum"),
                    ),
                tabItem(tabName = "sales2",
                        #membuat kolom input pengisian
                        h4("Hasil Pengurangan"),
                        textOutput("kurang")
                ),
               
                tabItem(tabName = "sales3",
                        #membuat kolom input pengisian
                        h4("Hasil Pembagian"),
                        textOutput("bagi")
                ),
                tabItem(tabName = "sales4",
                        #membuat kolom input pengisian
                        h4("Hasil Perkalian"),
                        textOutput("kali")
                )
            )
        )
    )
)