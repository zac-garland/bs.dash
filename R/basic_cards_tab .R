basic_cards_tab <- function() {
  tabItem(
    tabName = "cards",
    fluidRow(
      box(
        ribbon(
          text = "New",
          color = "orange"
        ),
        title = "Box with all widgets",
        closable = FALSE,
        width = 6,
        status = "warning",
        solidHeader = FALSE,
        collapsible = TRUE,
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
        title = "Card with messages",
        width = 6,
        footer = tagList(
          actionButton("remove_message", "Remove"),
          actionButton("add_message", "Add"),
          actionButton("update_message", "Update"),
          numericInput("index_message", "Message index:", 1, min = 1, max = 3)
        ),
        userMessages(
          width = 6,
          status = "danger",
          id = "message",
          userMessage(
            author = "Alexander Pierce",
            date = "20 Jan 2:00 pm",
            image = "https://adminlte.io/themes/AdminLTE/dist/img/user1-128x128.jpg",
            type = "received",
            "Is this template really for free? That's unbelievable!"
          ),
          userMessage(
            author = "Sarah Bullock",
            date = "23 Jan 2:05 pm",
            image = "https://adminlte.io/themes/AdminLTE/dist/img/user3-128x128.jpg",
            type = "sent",
            "You better believe it!"
          )
        )
      )
    ),
    tabset_example()
  )
}


tabset_example <- function() {
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
    )
  )
}
