side_bar_menu <- function(){
  sidebarMenu(
    id = "current_tab",
    flat = FALSE,
    compact = FALSE,
    childIndent = TRUE,
    sidebarHeader("Cards"),
    menuItem(
      "Basic cards",
      tabName = "cards",
      icon = icon("laptop-code")
    ),
    # menuItem(
    #   "Cards API",
    #   badgeLabel = "New",
    #   badgeColor = "success",
    #   tabName = "cardsAPI",
    #   icon = icon("laptop-code")
    # ),
    # menuItem(
    #   "Social cards",
    #   tabName = "socialcards",
    #   icon = icon("id-card")
    # ),
    menuItem(
      "Tab cards",
      tabName = "tabcards",
      icon = icon("layer-group")
    ),
    menuItem(
      "Sortable cards",
      tabName = "sortablecards",
      icon = icon("object-ungroup")
    ),
    menuItem(
      "Stats elements",
      tabName = "statsboxes",
      icon = icon("chart-area")
    ),
    sidebarHeader("Other boxes"),
    menuItem(
      "Value/Info boxes",
      tabName = "valueboxes",
      icon = icon("suitcase")
    ),
    sidebarHeader("Colors"),
    menuItem(
      "Colors",
      tabName = "colors",
      icon = icon("tint")
    ),
    sidebarHeader("BS4 gallery"),
    menuItem(
      text = "Galleries",
      icon = icon("cubes"),
      startExpanded = FALSE,
      menuSubItem(
        text = HTML(
          paste(
            "Gallery 1",
            dashboardBadge(
              "new",
              position = "right",
              color = "danger"
            )
          )
        ),
        tabName = "gallery1",
        icon = icon("circle")
      ),
      menuSubItem(
        text = HTML(
          paste(
            "Gallery 2",
            dashboardBadge(
              "!",
              position = "right",
              color = "success"
            )
          )
        ),
        tabName = "gallery2"
      )
    )
  )
}
