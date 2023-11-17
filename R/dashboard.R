#' @export
dashboard <- function(text){
  writeLines(text, con="input.Rmd");
  rmarkdown::render("input.Rmd", 
                    output_format = rmarkdown::html_fragment(),
                    output_file ="output.html");
  invisible();
}
