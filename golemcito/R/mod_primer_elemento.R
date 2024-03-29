# Module UI

#' @title   mod_primer_elemento_ui and mod_primer_elemento_server
#' @description  A shiny Module.
#'
#' @param id shiny id
#' @param input internal
#' @param output internal
#' @param session internal
#'
#' @rdname mod_primer_elemento
#'
#' @keywords internal
#' @export
#' @importFrom shiny NS tagList
mod_primer_elemento_ui <- function(id){
  ns <- NS(id)
  tagList(
    selectInput(
      ns("table"),
      "¿Cuál data.frame?",
      c("iris", "mtcars", "airquality")
    ),
    tableOutput(ns("out_table"))
  )
}

# Module Server

#' @rdname mod_primer_elemento
#' @export
#' @keywords internal

mod_primer_elemento_server <- function(input, output, session){
  output$out_table <- renderTable({
    head(get(input$table))
  })
}

## To be copied in the UI
# mod_primer_elemento_ui("primer_elemento_ui_1")

## To be copied in the server
# callModule(mod_primer_elemento_server, "primer_elemento_ui_1")

