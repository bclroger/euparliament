# Function 1
# Grouping political parties according to the user's request

#This function creates a new political group within EU Parliament that is
# a combination of other parties

newpoligroup <- function(df, chosenparties, poligroupname, keep=c("Country", "Year")){
  # The arguments are:
  #df: the dataframe with the data of the political parties to be joined
  #chosenparties: The parties that will be joined together
  #poligroupname: The string that will give a name to the new group
  #Keep: what columns of the inputed dataframe will be kept. By default, it will be "Country" and "Year"

  novvar <- as.data.frame(df[, keep])
  colnames(novvar) <- c(keep)
  #A new dataframe under the internal name of novvar is created with the column names listed by argument "keep"

  novvar[, poligroupname] <- data.frame(rep(0, nrow(df)))
  for (party in chosenparties) {
    novvar[, poligroupname] <- novvar[, poligroupname] + df[, party]
  }
  #A new column is added with values of zero to the novvar dataframe with the new political group name as a header
  #The value of seats of each party is added one at a time to the new "poligroupname"column of the new dataframe

  return(novvar)
}
