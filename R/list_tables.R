#' @title List EDW Tables
#'
#' @description This function list edw tables
#'
#' @param database
#'
#' @return Print list of tables in edw
#'
#' @export
#'
#' @examples
#' list_tables()
list_tables <- function(database = "edw"){
  connection <- edw_connect()
  print(DBI::dbListTables(connection, schema = "sdm"))
  DBI::dbDisconnect(connection)
}
