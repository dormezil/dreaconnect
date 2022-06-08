#' Title List All Variables in Table Dictionary
#'
#' @description This function list of all edw tables and their variables
#'
#' @return Tibble of edw dictionary list
#' @export
#'
#' @examples
#' edw_dictionary()
#'
#' @section Last Updated By:
#' Stevens Dormezil
#' @section Last Update Date:
#'  2022/06/08
edw_dictionary <- function(){
  devl_connect <- devl_connect()
  edw_table_dictionary_db <- table_connect(devl_connect,
                                           "edw_dictionary",
                                           "devl")
  edw_table_dictionary_tb <- edw_table_dictionary_db %>% dplyr::collect()
  DBI::dbDisconnect(devl_connect)
  return(edw_table_dictionary_tb)
}
