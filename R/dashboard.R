#' @export
dashboard <- function(text){
  writeLines(text, con="input.Rmd");
  rmarkdown::render("input.Rmd", 
                    output_format = flexdashboard::flex_dashboard,
                    output_file ="output.html");
  invisible();
}
