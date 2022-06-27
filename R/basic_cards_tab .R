basic_cards_tab <- function() {
  tabItem(
    tabName = "cards",
    fluidRow(
      box(
        title = "Box with all widgets",
        closable = TRUE,
        width = 6,
        status = "warning",
        solidHeader = FALSE,
        collapsible = TRUE,
        label = boxLabel(
          text = 1,
          status = "danger"
        ),
        dropdownMenu = boxDropdown(
          boxDropdownItem("Link to google", href = "https://www.google.com"),
          boxDropdownItem("Item with inputId", id = "dropdown_item2"),
          dropdownDivider(),
        ),
        sidebar = boxSidebar(
          startOpen = FALSE,
          id = "mycardsidebar",
          sliderInput(
            "obs",
            "Number of observations:",
            min = 0,
            max = 1000,
            value = 500
          )
        ),
        actionButton("toggle_card_sidebar", "Toggle card sidebar"),
        plotOutput("plot")
      ),
      box(
        ribbon(
          text = "New",
          color = "orange"
        ),
        title = "Closable card with gradient",
        width = 6,
        gradient = TRUE,
        background = "teal",
        status = "primary",
        solidHeader = TRUE,
        collapsible = FALSE,
        "Empty card"
      )
    ),
    fluidRow(
      box(
        title = "Card with solidHeader and elevation",
        elevation = 4,
        closable = TRUE,
        width = 6,
        solidHeader = TRUE,
        status = "primary",
        collapsible = TRUE,
        "Empty card"
      ),
      box(
        id = "card4",
        title = "Maximizable Card",
        width = 6,
        status = "danger",
        closable = FALSE,
        maximizable = TRUE,
        collapsible = TRUE,
        sliderInput("bigObs", "Number of observations:",
                    min = 0, max = 1000, value = 500
        ),
        plotOutput("bigPlot")
      )
    )
  )
}
