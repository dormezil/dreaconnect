#' @title Function to connect to table
#'
#' @description This function helps connect to tables
#'
#' @param table_name String of table to connect to
#' @param con String to previously made odbc connection
#'
#' @return A string connection to the table.
#' @export
#'
#' @examples
#' \dontrun{location_dim_db <- table_connect("location_dim")}
table_connect <- function(con, table_name ="stu_indic_fact"){
  dplyr::tbl(con, dbplyr::in_schema("sdm", table_name))
}
