gallery_1_tab <- function() {
  tabItem(
    tabName = "gallery1",
    fluidRow(
      box(
        title = "Accordions",
        footer = tagList(
          h4("There is an accordion in the footer!"),
          accordion(
            id = "accordion1",
            accordionItem(
              title = "Item 1",
              status = "danger",
              "Anim pariatur cliche reprehenderit, enim
            eiusmod high life accusamus terry richardson ad
            squid. 3 wolf moon officia aute, non cupidatat
            skateboard dolor brunch. Food truck quinoa nesciunt
            laborum eiusmod. Brunch 3 wolf moon tempor, sunt
            aliqua put a bird on it squid single-origin coffee
            nulla assumenda shoreditch et. Nihil anim keffiyeh
            helvetica, craft beer labore wes anderson cred
            nesciunt sapiente ea proident. Ad vegan excepteur
            butcher vice lomo. Leggings occaecat craft beer farm-to-table,
            raw denim aesthetic synth nesciunt you probably haven't
            heard of them accusamus labore sustainable VHS"
            ),
            accordionItem(
              title = "Item 2",
              status = "warning",
              "Anim pariatur cliche reprehenderit, enim
            eiusmod high life accusamus terry richardson ad
            squid. 3 wolf moon officia aute, non cupidatat
            skateboard dolor brunch. Food truck quinoa nesciunt
            laborum eiusmod. Brunch 3 wolf moon tempor, sunt
            aliqua put a bird on it squid single-origin coffee
            nulla assumenda shoreditch et. Nihil anim keffiyeh
            helvetica, craft beer labore wes anderson cred
            nesciunt sapiente ea proident. Ad vegan excepteur
            butcher vice lomo. Leggings occaecat craft beer farm-to-table,
            raw denim aesthetic synth nesciunt you probably haven't
            heard of them accusamus labore sustainable VHS"
            )
          )
        )
      ),
      box(
        title = "Carousel",
        carousel(
          id = "mycarousel",
          width = 12,
          carouselItem(
            tags$img(src = "https://via.placeholder.com/500")
          ),
          carouselItem(
            tags$img(src = "https://via.placeholder.com/500")
          ),
          carouselItem(
            tags$img(src = "https://via.placeholder.com/500")
          )
        )
      )
    ),
    fluidRow(
      box(
        title = "bs4Quote",
        fluidRow(
          blockQuote("Blablabla", color = "indigo"),
          blockQuote("Blablabla", color = "danger"),
          blockQuote("Blablabla", color = "teal"),
          blockQuote("Blablabla", color = "orange"),
          blockQuote("Blablabla", color = "warning"),
          blockQuote("Blablabla", color = "fuchsia")
        )
      )
    ),
    fluidRow(
      box(
        title = "Progress bars",
        footer = tagList(
          progressBar(
            value = 5,
            striped = FALSE,
            status = "info"
          ),
          progressBar(
            value = 10,
            striped = TRUE,
            status = "maroon"
          )
        ),
        progressBar(
          value = 80,
          vertical = TRUE,
          status = "success"
        ),
        progressBar(
          value = 100,
          vertical = TRUE,
          striped = TRUE,
          status = "danger"
        )
      ),
      box(
        title = "Alerts",
        elevation = 4,
        actionButton("show_alert", "Show"),
        actionButton("hide_alert", "Hide"),
        div(id = "alert_anchor")
      )
    ),
    fluidRow(
      box(
        title = "Callouts",
        callout(
          title = "I am a danger callout!",
          elevation = 4,
          status = "danger",
          width = 12,
          "There is a problem that we need to fix.
        A wonderful serenity has taken possession of
        my entire soul, like these sweet mornings of
        spring which I enjoy with my whole heart."
        )
      )
    ),
    fluidRow(
      box(
        title = "Timeline",
        timelineBlock(
          width = 12,
          reversed = TRUE,
          timelineEnd(color = "danger"),
          timelineLabel("10 Feb. 2014", color = "info"),
          timelineItem(
            title = "Item 1",
            icon = icon("cogs"),
            color = "success",
            time = "now",
            footer = "Here is the footer",
            "This is the body"
          ),
          timelineItem(
            title = "Item 2",
            border = FALSE
          ),
          timelineLabel("3 Jan. 2014", color = "primary"),
          timelineItem(
            title = "Item 3",
            icon = icon("paint-brush"),
            color = "warning",
            timelineItemMedia(image = "https://via.placehold.com/150x100"),
            timelineItemMedia(image = "https://via.placehold.com/150x100")
          ),
          timelineStart(color = "danger")
        )
      ),
      timelineBlock(
        width = 6,
        timelineEnd(color = "danger"),
        timelineLabel("10 Feb. 2014", color = "info"),
        timelineItem(
          title = "Item 1",
          icon = icon("cogs"),
          color = "success",
          time = "now",
          footer = "Here is the footer",
          "This is the body"
        ),
        timelineItem(
          title = "Item 2",
          border = FALSE
        ),
        timelineLabel("3 Jan. 2014", color = "primary"),
        timelineItem(
          title = "Item 3",
          icon = icon("paint-brush"),
          color = "warning",
          timelineItemMedia(image = "https://via.placehold.com/150x100"),
          timelineItemMedia(image = "https://via.placehold.com/150x100")
        ),
        timelineStart(color = "danger")
      )
    ),
    br(),
    fluidRow(
      box(
        title = "Stars",
        starBlock(5),
        starBlock(5, color = "success"),
        starBlock(1, color = "danger"),
        starBlock(3, color = "info")
      ),
      box(
        title = "Attachment example",
        attachmentBlock(
          image = "https://adminlte.io/themes/v3/dist/img/user1-128x128.jpg",
          title = "Test",
          href = "https://google.com",
          "This is the content"
        )
      )
    ),
    h4("bs4Table"),
    fluidRow(
      bs4Table(
        cardWrap = TRUE,
        bordered = TRUE,
        striped = TRUE,
        list(
          list(
            income = "$2,500 USD",
            status = dashboardBadge(
              "Pending",
              position = "right",
              color = "danger",
              rounded = TRUE
            ),
            progress = progressBar(value = 50, status = "pink", size = "xxs"),
            text = "test",
            confirm = actionButton(
              "go",
              "Go"
            )
          ),
          list("$2,500 USD", "NA", "NA", "test", "NA")
        )
      )
    )
  )
}
