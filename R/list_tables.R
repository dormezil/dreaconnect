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
    edw_table_list <- DBI::dbListTables(connection, schema = "sdm")
    edw_table_list <- edw_table_list %>% tibble::tibble()
    colnames(edw_table_list) <- "edw_tables"
    DBI::dbDisconnect(connection)
    return(edw_table_list)
  }else if(database == "devl"){
    connection <- devl_connect()
    print(DBI::dbListTables(connection, schema = "dbo"))
    DBI::dbDisconnect(connection)
  }
}
