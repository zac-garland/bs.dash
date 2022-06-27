value_boxes_tab <- function() {
  tabItem(
    tabName = "valueboxes",
    h4("Value Boxes"),
    fluidRow(
      valueBox(
        value = 150,
        subtitle = "New orders",
        color = "primary",
        icon = icon("shopping-cart"),
      ),
      valueBox(
        elevation = 4,
        value = "53%",
        subtitle = "New orders",
        color = "danger",
        icon = icon("cogs")
      ),
      valueBox(
        value = "44",
        subtitle = "User Registrations",
        color = "warning",
        icon = icon("sliders-h")
      ),
      valueBox(
        value = "53%",
        subtitle = "Bounce rate",
        color = "success",
        icon = icon("database")
      )
    ),
    h4("Info Boxes"),
    fluidRow(
      infoBox(
        tabName = "cardsAPI",
        title = "Navigate to Cards API section",
        value = 1410,
        color = "indigo",
        icon = icon("laptop-code")
      ),
      infoBox(
        tabName = "colors",
        title = "Navigate to colors section",
        color = "info",
        value = 240,
        icon = icon("tint"),
        elevation = 4
      ),
      infoBox(
        title = "Comments",
        subtitle = "A subtitle",
        color = "indigo",
        gradient = TRUE,
        fill = TRUE,
        value = 41410,
        icon = icon("comments"),
        href = "https://www.google.com"
      )
    )
  )
}
