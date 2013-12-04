.onAttach <- function(libname, pkgname) {
  op <- options()
  op.dplyr <- list(
    dplyr.show_sql = FALSE,
    dplyr.explain_sql = FALSE,
    dplyr.strict_sql = FALSE,
    dplyr.max_print = 10L
  )
  toset <- !(names(op.dplyr) %in% names(op))
  if(any(toset)) options(op.dplyr[toset])

  invisible()
}
