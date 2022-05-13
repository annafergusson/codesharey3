#' @export
rmdtext <- function(text){
  writeLines(text, con="input.Rmd");
  rmarkdown::render("input.Rmd", 
                    output_format = rmarkdown::html_fragment(df_print = 'kable'),
                    output_file ="output.html");
  invisible();
}