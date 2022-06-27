cards_api_tab <- function() {
  tabItem(
    tabName = "cardsAPI",
    actionButton(inputId = "triggerCard", label = "Trigger Card Action"),
    actionButton("update_box", "Update box"),
    selectInput(
      inputId = "cardAction",
      label = "Card action",
      choices = c(
        "remove",
        "toggle",
        "toggleMaximize",
        "restore"
      )
    ),
    box(
      id = "mycard",
      title = "The plot is visible when you maximize the card",
      closable = TRUE,
      maximizable = TRUE,
      width = 12,
      status = "warning",
      solidHeader = FALSE,
      collapsible = TRUE,
      sliderInput("obsAPI", "Number of observations:",
        min = 0, max = 1000, value = 500
      ),
      plotOutput("cardAPIPlot")
    )
  )
}
