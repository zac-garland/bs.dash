sortable_cards_tab <- function() {
  tabItem(
    tabName = "sortablecards",
    fluidRow(
      lapply(1:3, FUN = function(i) {
        sortable(
          width = 4,
          p(class = "text-center", paste("Column", i)),
          lapply(1:2, FUN = function(j) {
            box(
              title = paste0("I am the ", j, "-th card of the ", i, "-th column"),
              width = 12,
              "Click on my header"
            )
          })
        )
      })
    )
  )
}
