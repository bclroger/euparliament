# Function 3
# To calculate the percentage of possible seats a party got in each country
# That is the number of seats gained by Party(1) in country(a) as a percentage of total seats that country(a) has in the EU Parliament
# (Seats Party(1) in country(a))/Total seats for country(a)

percseats <- function(df, columns, keep = c("Country", "Year")){
  #The arguments are:
  #df: the dataframe with the data of the political parties
  #columns: vector of parties or political groups to be considered
  #keep: what columns of the inputed dataframe will be kept. By default, it will be "Country" and "Year"

  novvar <- as.data.frame(df[, c(keep, columns)])
  novvar[, "country_seats"] <- rowSums(df[, columns])
  # A new dataframe is created with the "keeP" columns, plus a new one that sums all values from selected columns
  # Column with the sum of all selected columns is named "country_seats"

  for (w in columns) {
    novvar[, w] <- round((novvar[, w] * 100)/novvar[, "country_seats"], 1)
  }
  # New columns are added to dataframe that calculates
  #percentage of each column compared to all selected columns


  # Warning! This function will return the percentage of each column compared to all selected columns
  # Therefore, if not all parties/political groups are selected, the function will not return
  # the percentage of all possible seats within each country
  return(novvar)
}
