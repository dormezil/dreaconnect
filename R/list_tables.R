#' @title List EDW Tables
#'
#' @description This function list edw tables
#'
#' @param database SQL database connection string
#'
#' @return Print list of tables in edw
#'
#' @export
#'
#' @examples
#' list_tables()
list_tables <- function(database = "edw"){
  if(database == "edw"){
    connection <- edw_connect()
    print(DBI::dbListTables(connection, schema = "sdm"))
    DBI::dbDisconnect(connection)
  }else if(database == "devl"){
    connection <- devl_connect()
    print(DBI::dbListTables(connection, schema = "dbo"))
    DBI::dbDisconnect(connection)
  }
}
