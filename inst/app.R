# Load packages
library(shiny)
library(bs4Dash)
library(thematic)
library(waiter)
# install.packages("conflicted")
# conflicted::conflict_prefer_all("bs4Dash")
# conflicted::conflict_prefer_all("dplyr")
devtools::load_all()
thematic_shiny()

# toast options
toastOpts <- list(
  autohide = TRUE,
  icon = "fas fa-home",
  close = FALSE,
  position = "bottomRight"
)

# color statuses


shinyApp(
  ui = dashboardPage(
    preloader = list(html = tagList(spin_1(), "Loading ..."), color = "#343a40"),
    dark = TRUE,
    help = TRUE,
    fullscreen = TRUE,
    scrollToTop = TRUE,
    header = dashboardHeader(
      title = dashboardBrand(
        title = "bs4Dash",
        color = "primary",
        href = "https://divadnojnarg.github.io/outstanding-shiny-ui/",
        image = "https://adminlte.io/themes/v3/dist/img/user2-160x160.jpg",
        opacity = 0.8
      ),
      fixed = TRUE
      # tooltip(
      #   title = "tooltip right sidebar",
      #   placement = "bottom",
      #   actionButton(inputId = "controlbarToggle", label = "Toggle Controlbar", class = "mx-2")
      # )

      # popover(
      #   title = "Toggle button",
      #   content = "This toggle the left sidebar",
      #   placement = "bottom",
      #   # `data-trigger` = "hover",
      #   actionButton(inputId = "sidebarToggle", label = "Toggle left sidebar", class = "mx-2")
      # ),
    #   rightUi = tagList(
    #     dropdownMenu(
    #       badgeStatus = "danger",
    #       type = "messages",
    #       messageItem(
    #         inputId = "triggerAction1",
    #         message = "message 1",
    #         from = "Divad Nojnarg",
    #         image = "https://adminlte.io/themes/v3/dist/img/user3-128x128.jpg",
    #         time = "today",
    #         color = "lime"
    #       )
    #     ),
    #     userOutput("user")
    #   ),
    #   leftUi = tagList(
    #     dropdownMenu(
    #       badgeStatus = "info",
    #       type = "notifications",
    #       notificationItem(
    #         inputId = "triggerAction2",
    #         text = "Error!",
    #         status = "danger"
    #       )
    #     ),
    #     dropdownMenu(
    #       badgeStatus = "info",
    #       type = "tasks",
    #       taskItem(
    #         inputId = "triggerAction3",
    #         text = "My progress",
    #         color = "orange",
    #         value = 10
    #       )
    #     )
    #   )
    ),
    sidebar = dashboardSidebar(
      fixed = TRUE,
      skin = "light",
      status = "primary",
      id = "sidebar",
      customArea = fluidRow(
        actionButton(
          inputId = "myAppButton",
          label = NULL,
          icon = icon("users"),
          width = NULL,
          status = "primary",
          style = "margin: auto",
          dashboardBadge(textOutput("btnVal"), color = "danger")
        )
      ),
      sidebarUserPanel(
        image = "https://adminlte.io/themes/v3/dist/img/AdminLTELogo.png",
        name = "Welcome Onboard!"
      ),
      side_bar_menu()
    ),
    body = dashboardBody(
      tabItems(
        basic_cards_tab(),
        # cards_api_tab(),
        # social_cards_tab(),
        # tab_cards_tab(),
        sortable_cards_tab(),
        statsboxes_tab(),
        value_boxes_tab(),
        colors_tab(),
        gallery_1_tab(),
        gallery_2_tab()
      )
    ),
    controlbar = control_bar_menu(),
    footer = dashboardFooter(
      fixed = FALSE,
      left = a(
        href = "https://twitter.com/divadnojnarg",
        target = "_blank", "@DivadNojnarg"
      ),
      right = "2020"
    ),
    title = "bs4Dash Showcase"
  ),
  server = function(input, output, session) {
    useAutoColor()

    # app button --------------------------------------------------------------
    output$btnVal <- renderText(input$myAppButton)
    observeEvent(input$myAppButton, {
      showModal(modalDialog("Thanks for clicking me!", easyClose = TRUE))
    })

    # alerts ------------------------------------------------------------------

    observeEvent(input$show_alert, {
      print("created")
      createAlert(
        id = "alert_anchor",
        options = list(
          title = "Be Careful!",
          status = "danger",
          closable = TRUE,
          width = 12,
          content = "Danger alert preview. This alert is dismissable.
          A wonderful serenity has taken possession of my entire soul,
          like these sweet mornings of spring which
          I enjoy with my whole heart."
        )
      )
    })

    observeEvent(input$hide_alert, {
      print("deleted")
      closeAlert(id = "alert_anchor")
    })

    # alert callback event
    observeEvent(input$alert_anchor, {
      alertStatus <- if (input$alert_anchor) "opened" else "closed"
      toastColor <- if (input$alert_anchor) "bg-lime" else "bg-fuchsia"
      toast(
        title = sprintf("Alert succesfully %s!", alertStatus),
        options = list(
          class = toastColor,
          autohide = TRUE,
          position = "bottomRight"
        )
      )
    })

    # tooltips, popovers ------------------------------------------------------

    # observe({
    #  addTooltip(
    #    id = "controlbarToggle",
    #    options = list(
    #      title = "This toggles the right sidebar",
    #      placement = "bottom"
    #    )
    #  )
    # })

    # plots -------------------------------------------------------------------



    output$bigPlot <- renderPlot({
      hist(rnorm(input$bigObs))
    })

    output$plot <- renderPlot({
      hist(rnorm(input$obs))
    })

    observeEvent(input$current_tab, {
      if (input$current_tab == "cards") {
        showModal(modalDialog(
          title = "This event only triggers for the first tab!",
          "You clicked me! This event is the result of
          an input bound to the menu. By adding an id to the
          sidebarMenu, input$id will give the currently selected
          tab. This is useful to trigger some events.",
          easyClose = TRUE,
          footer = NULL
        ))
      }
    })


    # current theme info ---------------------------------------------------------

    observeEvent(input$dark_mode, {
      toast(
        title = if (input$dark_mode) "Dark theme on!" else "Light theme on",
        options = list(position = "topRight", class = "bg-warning", autohide = TRUE)
      )
    })

    # card API ----------------------------------------------------------------

    output$cardAPIPlot <- renderPlot({
      if (input$mycard$maximized) {
        hist(rnorm(input$obsAPI))
      }
    })

    observeEvent(input$triggerCard, {
      updateBox(id = "mycard", action = input$cardAction)
    })

    observeEvent(input$update_box, {
      updateBox(
        "mycard",
        action = "update",
        options = list(
          title = h3(class = "card-title", "hello", dashboardBadge(1, color = "primary")),
          status = "warning",
          solidHeader = TRUE,
          width = 12,
          background = NULL,
          height = "900px",
          closable = FALSE
        )
      )
    })

    observe({
      print(
        list(
          collapsed = input$mycard$collapsed,
          maximized = input$mycard$maximized,
          visible = input$mycard$visible
        )
      )
    })


    # card sidebar API --------------------------------------------------------

    observeEvent(input$toggle_card_sidebar, {
      updateBoxSidebar("mycardsidebar")
    })

    observeEvent(input$sidebar, {
      toastOpts$class <- if (input$sidebar) "bg-success" else "bg-danger"
      toast(
        title = if (input$sidebar) "Sidebar opened!" else "Sidebar is closed!",
        options = toastOpts
      )
    })



    # tabBox API  -------------------------------------------------------------

    observeEvent(input$update_tabBox2, {
      updateBox("tabcard2_box", action = "toggleMaximize")
    })

    # controlbar input --------------------------------------------------------

    observeEvent(input$controlbar, {
      toastOpts <- list(
        autohide = TRUE,
        icon = "fas fa-home",
        close = FALSE,
        position = "bottomRight"
      )
      toastOpts$class <- if (input$controlbar) "bg-success" else "bg-danger"
      toast(
        title = if (input$controlbar) "Controlbar opened!" else "Controlbar closed!",
        options = toastOpts
      )
    })

    observeEvent(input$controlbarToggle, {
      updateControlbar(id = "controlbar")
    })

    observe({
      print(input$controlbar)
    })


    observeEvent(input$dropdown_item2, {
      toast(
        title = "I am a toast!",
        options = list(
          autohide = TRUE,
          icon = "fas fa-home",
          close = FALSE,
          position = "topLeft",
          class = "bg-orange"
        )
      )
    })


    # update sidebar ----------------------------------------------------------

    observeEvent(input$sidebarToggle, {
      updateSidebar(id = "sidebar")
    })

    # user messages -----------------------------------------------------------

    observeEvent(input$remove_message, {
      updateUserMessages("message", action = "remove", index = input$index_message)
    })
    observeEvent(input$add_message, {
      updateUserMessages(
        "message",
        action = "add",
        content = list(
          author = "David",
          date = "Now",
          image = "https://i.pinimg.com/originals/f1/15/df/f115dfc9cab063597b1221d015996b39.jpg",
          type = "received",
          text = "Message content"
        )
      )
    })

    observeEvent(input$update_message, {
      updateUserMessages(
        "message",
        action = "update",
        index = input$index_message,
        content = list(
          text = tagList(
            appButton(
              inputId = "reload",
              label = "Click me!",
              icon = icon("sync"),
              dashboardBadge(1, color = "primary")
            )
          )
        )
      )
    })

    observeEvent(input$reload, {
      showNotification("Yeah!", duration = 1, type = "default")
    })



    # user menu ---------------------------------------------------------------

    output$user <- renderUser({
      dashboardUser(
        name = "Divad Nojnarg",
        image = "https://adminlte.io/themes/AdminLTE/dist/img/user2-160x160.jpg",
        title = "shinydashboardPlus",
        subtitle = "Author",
        footer = p("The footer", class = "text-center"),
        fluidRow(
          dashboardUserItem(
            width = 6,
            "Item 1"
          ),
          dashboardUserItem(
            width = 6,
            "Item 2"
          )
        )
      )
    })
  }
)
