colors_tab <- function(statusColors = c(
                         "gray-dark",
                         "gray",
                         "secondary",
                         "navy",
                         "indigo",
                         "purple",
                         "primary",
                         "lightblue",
                         "info",
                         "success",
                         "olive",
                         "teal",
                         "lime",
                         "warning",
                         "orange",
                         "danger",
                         "fuchsia",
                         "maroon",
                         "pink",
                         "white"
                       )) {
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
