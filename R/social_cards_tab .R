social_cards_tab <- function() {
  tabItem(
    tabName = "socialcards",
    fluidRow(
      userBox(
        title = userDescription(
          image = "https://adminlte.io/themes/AdminLTE/dist/img/user1-128x128.jpg",
          title = "User card type 1",
          subtitle = "a subtitle here"
        ),
        collapsible = FALSE,
        ribbon(
          text = "New user",
          color = "fuchsia"
        ),
        status = "purple",
        elevation = 4,
        "Any content here"
      ),
      userBox(
        title = userDescription(
          type = 2,
          image = "https://adminlte.io/themes/AdminLTE/dist/img/user7-128x128.jpg",
          title = "User card type 2",
          subtitle = "a subtitle here",
          imageElevation = 4
        ),
        status = "primary",
        background = "teal",
        maximizable = TRUE,
        gradient = TRUE,
        progressBar(
          value = 5,
          striped = FALSE,
          status = "info"
        ),
        progressBar(
          value = 20,
          striped = TRUE,
          status = "warning"
        )
      )
    ),
    fluidRow(
      socialBox(
        title = userBlock(
          image = "https://adminlte.io/themes/AdminLTE/dist/img/user4-128x128.jpg",
          title = "Social Box",
          subtitle = "example-01.05.2018"
        ),
        "Some text here!",
        attachmentBlock(
          image = "https://adminlte.io/themes/v3/dist/img/user1-128x128.jpg",
          title = "Test",
          href = "https://google.com",
          "This is the content"
        ),
        lapply(X = 1:10, FUN = function(i) {
          boxComment(
            image = "https://adminlte.io/themes/AdminLTE/dist/img/user3-128x128.jpg",
            title = paste("Comment", i),
            date = "01.05.2018",
            paste0("The ", i, "-th comment")
          )
        }),
        footer = "The footer here!"
      ),
      box(
        title = "Box with user comment",
        status = "primary",
        userPost(
          id = 1,
          image = "https://adminlte.io/themes/AdminLTE/dist/img/user1-128x128.jpg",
          author = "Jonathan Burke Jr.",
          description = "Shared publicly - 7:30 PM today",
          "Lorem ipsum represents a long-held tradition for designers,
       typographers and the like. Some people hate it and argue for
       its demise, but others ignore the hate as they create awesome
       tools to help create filler text for everyone from bacon
       lovers to Charlie Sheen fans.",
          userPostTagItems(
            userPostTagItem(dashboardBadge("item 1", color = "warning")),
            userPostTagItem(dashboardBadge("item 2", color = "danger"))
          )
        ),
        userPost(
          id = 2,
          image = "https://adminlte.io/themes/AdminLTE/dist/img/user6-128x128.jpg",
          author = "Adam Jones",
          description = "Shared publicly - 5 days ago",
          userPostMedia(image = "https://adminlte.io/themes/AdminLTE/dist/img/photo2.png"),
          userPostTagItems(
            userPostTagItem(dashboardBadge("item 1", color = "info")),
            userPostTagItem(dashboardBadge("item 2", color = "danger"))
          )
        )
      )
    ),
    fluidRow(
      box(
        status = "primary",
        width = 3,
        solidHeader = TRUE,
        boxProfile(
          image = "https://adminlte.io/themes/AdminLTE/dist/img/user4-128x128.jpg",
          title = "Nina Mcintire",
          subtitle = "Software Engineer",
          bordered = TRUE,
          boxProfileItem(
            title = "Followers",
            description = 1322
          ),
          boxProfileItem(
            title = "Following",
            description = 543
          ),
          boxProfileItem(
            title = "Friends",
            description = 13287
          )
        )
      ),
      box(
        title = "Card with messages",
        width = 9,
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
    )
  )
}
