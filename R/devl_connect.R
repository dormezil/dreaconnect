#' @title Connection function to DEVL database
#' @description This function connects to the devl database according to DEVL schema
#'
#' @return A String connection to Microsoft SQL Server
#' @export
#'
#' @examples
#' devl_connect()
devl_connect <- function(){
  DBI::dbConnect(odbc::odbc(), "DREA_DEVL", timeout = 10)
}
