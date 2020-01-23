# Function 2
# This function creates new dataframe with political groups as a result of aggregating selected parties

newgroupby <- function(df, groups, keep = c("Country", "Year")){
  #The arguments are:
  #df: the dataframe with the data of the political parties
  #groups: list with the desired groups with the data frame columns for performing the groupings
  #keep: what columns of the inputed dataframe will be kept. By default, it will be "Country" and "Year"

  group_names <- names(groups)
  #Extract the group names from the list

  groups.df <- as.data.frame(df[, keep])
  colnames(groups.df) <- keep
  #A new data frame is created with the columns listed by argument "keep"

  for(gn in group_names){
    groups.df[ ,gn] <- newpoligroup(df, groups[[gn]] , gn, keep=NULL)
  }
  #For each group name in the "groups"list, it extracts the
  # column's names (with the parties) from the "groups" list
  # and calls function "newpoligroup" to sum the selected columns


  return(groups.df)
}
