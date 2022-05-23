#' @title Title
#' @description This function connects to the devl database
#'
#' @return A String connection to Microsoft SQL Server
#' @export
#'
#' @examples
#' devl_connect()
devl_connect <- function(){
  DBI::dbConnect(odbc::odbc(), "DREA_DEVL", timeout = 10)
}
