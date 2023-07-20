#' #' Path of the Rmd file containing the article
#' #'
#' #' @noRd
#' report_path <- function() {
#'   system.file("report", package = "covid19vaccinationch")
#' }
#' Data path
#'
#' @export
data_path <- function() {
  # system.file("www/bag_data")
  "www/bag_data"
}
data_path_qmd <- function() {
  # system.file("www/bag_data")
  "../../www/bag_data"
}
#' Run the qmd report
#'
#' @importFrom quarto quarto_run
#' @export
run_report <- function() {
  # rmd_params <- list(fetch_latest_data = fetch_latest_data, use_pkgload = FALSE)
  # render_args$params <- c(render_args$params, rmd_params)
  # qmd_file <- file.path(report_path(), "index.qmd")
  # quarto_render(qmd_file)
  # shinyargs <- c(shiny_args, list(port = getOption("shiny.port"),
  #                                 host = getOption("shiny.host", "127.0.0.1"), launch.browser = TRUE))
  # shinyargs <- unique(shinyargs)
  # # rmarkdown::run(file.path(report_path(), "index.Rmd"),
  # #                render_args = render_args, auto_reload = auto_reload,
  # #                shiny_args = shiny_args)
  # restore <- Sys.getenv("RMARKDOWN_RUN_PRERENDER", unset = NA)
  # Sys.setenv(RMARKDOWN_RUN_PRERENDER = "0")
  # if (!is.na(restore)) {
  #   on.exit(Sys.setenv(RMARKDOWN_RUN_PRERENDER = restore),
  #           add = TRUE)
  # }
  # rmarkdown::run(qmd_file, shiny_args = shiny_args, auto_reload = auto_reload)
  quarto::quarto_run(file.path(report_path(), "index.qmd"))
}

