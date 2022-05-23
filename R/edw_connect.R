#' @title EDW Connection Function
#'
#' @description This function connects to the edw database
#'
#' @return A string connection to Microsoft SQL Server
#' @export
#'
#' @examples
#' edw_connect()
edw_connect <- function(){
  DBI::dbConnect(odbc::odbc(), "SDM_MSSQL", timeout = 10)
}
