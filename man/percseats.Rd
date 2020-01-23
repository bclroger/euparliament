\name{percseats}
\alias{percseats}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function that calculates the percentage of possible seats per country a party has received.
}
\description{
This \code{function} calculates the percentage of possible seats a party got in each country. That is the number of seats gained by Party(1) in country(a) as a percentage of total seats that country(a) has in the EU Parliament for any given year.
}
\usage{
percseats(df, columns, keep = c("Country", "Year"))
}

\arguments{
  \item{df}{ The \code{dataframe} with the data of the political parties and the seats they hold.

}
  \item{columns}{ The \code{vector} of parties or political groups to be considered.

}
  \item{keep}{ What columns of the inputed \code{dataframe} will be kept. By default, it will be "Country" and "Year".

}
}
\details{
Warning: This function will return the percentage of each column compared to all selected columns. Therefore, if not all parties/political groups are selected, the function will not return the percentage of all possible seats within each country.
}
\value{
Returns a \code{dataframe} containing the rows from the inputted \code{dataframe} listed in \code{keep} and the
columns assigned to argument \code{columns} and returns those values as percentages of total possible seats, rather than in absolute values and an extra column "country_seats" with the total number of available seats per country (in other words, the sum of each column's values).

}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
Country <- c("Austria", "Belgium", "Bulgaria")
EPP <- c(1,2,3)
SD <- c(1,2,3)
Other <- c(1,1,1)
IN <- c(1,1,1)
df.data <- data.frame(Country, EPP, SD, Other, IN)
percseats(df.data, columns = c("EPP", "SD", "Other", "IN"), keep = "Country")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
