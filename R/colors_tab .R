colors_tab <- function() {
  tabItem(
    tabName = "colors",
    lapply(seq_along(statusColors), function(i) {
      fluidRow(
        box(
          status = statusColors[i],
          title = paste(statusColors[i], "card"),
          solidHeader = TRUE,
          width = 12,
          closable = FALSE,
          collapsible = FALSE
        )
      )
    })
  )
}
