statsboxes_tab <- function() {
  tabItem(
    tabName = "statsboxes",
    fluidRow(
      box(
        solidHeader = FALSE,
        title = "Card with descriptionBlock",
        background = NULL,
        width = 6,
        status = "danger",
        footer = fluidRow(
          column(
            width = 6,
            descriptionBlock(
              number = "17%",
              numberColor = "success",
              numberIcon = icon("caret-up"),
              header = "$35,210.43",
              text = "TOTAL REVENUE",
              rightBorder = TRUE,
              marginBottom = FALSE
            )
          ),
          column(
            width = 6,
            descriptionBlock(
              number = "18%",
              numberColor = "danger",
              numberIcon = icon("caret-down"),
              header = "1200",
              text = "GOAL COMPLETION",
              rightBorder = FALSE,
              marginBottom = FALSE
            )
          )
        )
      ),
      box(
        title = "Box with right pad",
        status = "warning",
        fluidRow(
          column(width = 6),
          column(
            width = 6,
            boxPad(
              color = "info",
              descriptionBlock(
                header = "8390",
                text = "VISITS",
                rightBorder = FALSE,
                marginBottom = TRUE
              ),
              descriptionBlock(
                header = "30%",
                text = "REFERRALS",
                rightBorder = FALSE,
                marginBottom = TRUE
              ),
              descriptionBlock(
                header = "70%",
                text = "ORGANIC",
                rightBorder = FALSE,
                marginBottom = FALSE
              )
            )
          )
        )
      )
    )
  )
}
