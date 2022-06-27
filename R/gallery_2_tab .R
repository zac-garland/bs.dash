gallery_2_tab <- function() {
  tabItem(
    tabName = "gallery2",
    jumbotron(
      title = "I am a Jumbotron!",
      lead = "This is a simple hero unit, a simple jumbotron-style
                    component for calling extra attention to featured
                    content or information.",
      "It uses utility classes for typography and spacing
            to space content out within the larger container.",
      status = "primary",
      href = "https://www.google.fr"
    ),
    br(),
    fluidRow(
      box(
        title = "Badges",
        dashboardBadge(color = "secondary", "blabla", rounded = TRUE),
        dashboardBadge(color = "info", "blabla", rounded = TRUE)
      )
    ),
    br(),
    h4("BS4 list group"),
    fluidRow(
      listGroup(
        type = "basic",
        listGroupItem("Cras justo odio"),
        listGroupItem("Dapibus ac facilisis in"),
        listGroupItem("Morbi leo risus")
      ),
      listGroup(
        type = "action",
        listGroupItem(
          "Cras justo odio",
          active = TRUE,
          disabled = FALSE,
          href = "https://www.google.com"
        ),
        listGroupItem(
          active = FALSE,
          disabled = FALSE,
          "Dapibus ac facilisis in",
          href = "https://www.google.com"
        ),
        listGroupItem(
          "Morbi leo risus",
          active = FALSE,
          disabled = TRUE,
          href = "https://www.google.com"
        )
      ),
      listGroup(
        type = "heading",
        listGroupItem(
          "Donec id elit non mi porta gravida at eget metus.
         Maecenas sed diam eget risus varius blandit.",
          active = TRUE,
          disabled = FALSE,
          title = "List group item heading",
          subtitle = "3 days ago",
          footer = "Donec id elit non mi porta."
        ),
        listGroupItem(
          "Donec id elit non mi porta gravida at eget metus.
         Maecenas sed diam eget risus varius blandit.",
          active = FALSE,
          disabled = FALSE,
          title = "List group item heading",
          subtitle = "3 days ago",
          footer = "Donec id elit non mi porta."
        )
      )
    )
  )
}
