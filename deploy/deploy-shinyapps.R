# deploy/deploy-shinyapps.R
# usethis::use_build_ignore("deploy")
rsconnect::setAccountInfo(
  Sys.getenv("SHINYAPPS_ACCOUNT"),
  Sys.getenv("SHINYAPPS_TOKEN"),
  Sys.getenv("SHINYAPPS_SECRET")
)



# quarto::quarto_publish_app(server = "shinyapps.io", 
#                    name = "report", 
#                    title = "Covid19 Vaccination CH",
#                    account = "gmaggio",
#                    render = "local" 
#                    )

quarto::quarto_publish_app(
                            input = "covid-19-vaccination-ch-qmd.qmd",
                           server = "shinyapps.io", 
                           name = "covid-19-vaccination-ch-qmd", 
                           title = "Covid19 Vaccination CH",
                           account = "miraisolutions",
                           render = "server"
)

# unlink("index.Rmd")

# rsconnect::deployApp(
#   appDir = "inst/report",
#   appPrimaryDoc = "inst/report/index.Rmd",
#   appName = "covid19-vaccination-ch",
# )
# rsconnect::deployDoc(
#   doc = "inst/report/index.Rmd",
#   appDir = ".",
#   appName = "covid19-vaccination-ch",
# )
# rsconnect::deployApp(
#   appDir = ".",
#   appFiles = list.files(),
#   appPrimaryDoc = "inst/report/index.Rmd",
#   appName = "covid19-vaccination-ch"
# )
