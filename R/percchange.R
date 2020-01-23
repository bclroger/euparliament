# Function 4 is the same as function 3, but works for "gainloss.df" because it calculates
# percentage by using the value from the "Total" column. As a result, it is less flexible

percchange <- function(df, columns, keep = c("Country", "Total")){
  #The arguments are:
  #df: the dataframe with the data of the political parties
  #columns: vector of parties or political groups to be considered
  #keep: what columns of the inputed dataframe will be kept. By default, it will be "Country" and "Total"

  novvar <- as.data.frame(df[, c(keep, columns)])
  # A new dateframe is created with the columns assigned from "Keep" and "columns"

  for (w in columns) {
    novvar[, w] <- round((novvar[, w] * 100)/novvar[, "Total"], 1)
    # For each column assigned in the argument "columns" the percentage value of the column
    # in respect to the total number of seats as set in the "Total" column is calculated
  }

  return(novvar)
}
