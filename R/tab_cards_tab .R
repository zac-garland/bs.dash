tab_cards_tab <- function() {
  tabItem(
    tabName = "tabcards",
    fluidRow(
      column(
        width = 6,
        tabBox(
          ribbon(
            text = "Tabs",
            color = "pink"
          ),
          title = "A card with tabs",
          elevation = 2,
          id = "tabcard1",
          width = 12,
          collapsible = FALSE,
          closable = FALSE,
          type = "tabs",
          status = "primary",
          solidHeader = TRUE,
          selected = "Tab 2",
          tabPanel(
            "Tab 1",
            "A wonderful serenity has taken possession of my entire soul,
          like these sweet mornings of spring which I enjoy with my
          whole heart. I am alone, and feel the charm of existence in
          this spot, which was created for the bliss of souls like mine.
          I am so happy, my dear friend, so absorbed in the exquisite sense
          of mere tranquil existence, that I neglect my talents. I should be
          incapable of drawing a single stroke at the present moment; and yet
          I feel that I never was a greater artist than now"
          ),
          tabPanel(
            "Tab 2",
            "The European languages are members of the same family.
          Their separate existence is a myth. For science, music,
          sport, etc, Europe uses the same vocabulary. The languages
          only differ in their grammar, their pronunciation and their
          most common words. Everyone realizes why a new common
          language would be desirable: one could refuse to pay expensive
          translators. To achieve this, it would be necessary to have
          uniform grammar, pronunciation and more common words. If several
          languages coalesce, the grammar of the resulting language is
          more simple and regular than that of the individual languages."
          ),
          tabPanel(
            "Tab 3",
            "Lorem Ipsum is simply dummy text of the printing and
          typesetting industry. Lorem Ipsum has been the industry's
          standard dummy text ever since the 1500s, when an unknown
          printer took a galley of type and scrambled it to make a
          type specimen book. It has survived not only five centuries,
          but also the leap into electronic typesetting, remaining
          essentially unchanged. It was popularised in the 1960s with
          the release of Letraset sheets containing Lorem Ipsum passages,
          and more recently with desktop publishing software like Aldus
          PageMaker including versions of Lorem Ipsum."
          )
        )
      ),
      column(
        width = 6,
        actionButton("update_tabBox2", "Toggle maximize tabBox", class = "my-2"),
        tabBox(
          title = "Tabs on right!",
          side = "right",
          id = "tabcard2",
          type = "tabs",
          elevation = 2,
          width = 12,
          status = "warning",
          maximizable = TRUE,
          collapsible = TRUE,
          closable = TRUE,
          selected = "Tab 6",
          tabPanel(
            "Tab 4",
            "A wonderful serenity has taken possession of my entire soul,
          like these sweet mornings of spring which I enjoy with my
          whole heart. I am alone, and feel the charm of existence in
          this spot, which was created for the bliss of souls like mine.
          I am so happy, my dear friend, so absorbed in the exquisite sense
          of mere tranquil existence, that I neglect my talents. I should be
          incapable of drawing a single stroke at the present moment; and yet
          I feel that I never was a greater artist than now"
          ),
          tabPanel(
            "Tab 5",
            "The European languages are members of the same family.
          Their separate existence is a myth. For science, music,
          sport, etc, Europe uses the same vocabulary. The languages
          only differ in their grammar, their pronunciation and their
          most common words. Everyone realizes why a new common
          language would be desirable: one could refuse to pay expensive
          translators. To achieve this, it would be necessary to have
          uniform grammar, pronunciation and more common words. If several
          languages coalesce, the grammar of the resulting language is
          more simple and regular than that of the individual languages."
          ),
          tabPanel(
            "Tab 6",
            "Lorem Ipsum is simply dummy text of the printing and
          typesetting industry. Lorem Ipsum has been the industry's
          standard dummy text ever since the 1500s, when an unknown
          printer took a galley of type and scrambled it to make a
          type specimen book. It has survived not only five centuries,
          but also the leap into electronic typesetting, remaining
          essentially unchanged. It was popularised in the 1960s with
          the release of Letraset sheets containing Lorem Ipsum passages,
          and more recently with desktop publishing software like Aldus
          PageMaker including versions of Lorem Ipsum."
          )
        )
      )
    ),
    br(), br(),
    fluidRow(
      column(
        width = 6,
        bs4Dash::tabsetPanel(
          id = "tabsetpanel1",
          selected = "Tab 2",
          tabPanel(
            "Tab 1",
            "Content 1"
          ),
          tabPanel(
            "Tab 2",
            "Content 2"
          ),
          tabPanel(
            "Tab 3",
            "Content 3"
          )
        )
      ),
      column(
        width = 6,
        bs4Dash::tabsetPanel(
          id = "tabsetpanel2",
          type = "pills",
          .list = lapply(1:3, function(i) {
            tabPanel(
              paste0("Tab", i),
              paste("Content", i)
            )
          })
        )
      )
    ),
    br(), br(),
    fluidRow(
      tabsetPanel(
        id = "tabsetpanel3",
        selected = "Tab 2",
        vertical = TRUE,
        tabPanel(
          "Tab 1",
          "Content 1"
        ),
        tabPanel(
          "Tab 2",
          "Content 2"
        ),
        tabPanel(
          "Tab 3",
          "Content 3"
        )
      )
    )
  )
}
