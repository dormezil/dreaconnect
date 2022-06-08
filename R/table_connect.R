#' @title Function to connect to table
#'
#' @description This function helps connect to tables
#'
#' @param table_name String of table to connect to
#' @param con String to previously made odbc connection
#' @param database Database to connect to. Options include "edw" and "devl"
#'
#' @return A string connection to the table.
#' @export
#'
#' @examples
#' \dontrun{location_dim_db <- table_connect("location_dim")}
#'
#' @section Last Updated By:
#' Stevens Dormezil
#' @section Last Update Date:
#'  2022/06/08
table_connect <- function(con, table_name ="stu_indic_fact", database = "edw"){
  if(database == "edw") {
    dplyr::tbl(con, dbplyr::in_schema("sdm", table_name))
  }
  else if(database == "devl") {
    dplyr::tbl(con, dbplyr::in_schema("dbo", table_name))
  }
}
