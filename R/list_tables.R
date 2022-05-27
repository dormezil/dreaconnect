#' @title List EDW Tables
#'
#' @description This function list edw and devl tables. Defaults to edw.
#'
#' @param database SQL database connection string
#'
#' @return Tibble of table list
#'
#' @export
#'
#' @examples
#' list_tables()
#' list_tables("devl")
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
    devl_table_list <- DBI::dbListTables(connection, schema = "dbo")
    devl_table_list <- devl_table_list %>% tibble::tibble()
    colnames(devl_table_list) <- "devl_tables"
    DBI::dbDisconnect(connection)
    return(devl_table_list)
  }
}
