\name{percchange}
\alias{percchange}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Given the total number of seats, it calculates the percentage of possible seats per country a party has received.
}
\description{
This \code{function} is similar to \code{percseats}, but it calculates percentage of held seats by each party in each country by using the value from a "Total" \code{column} that has the total number of seats available per country. As a result, this function works even if the sum of all columns do not equal the total value of seats.
}
\usage{
percchange(df, columns, keep = c("Country", "Total"))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df}{ The \code{dataframe} with the data on the seats held by the political parties.

}
  \item{columns}{ The \code{vector} of parties or political groups to be considered.

}
  \item{keep}{ What \code{columns} of the inputed dataframe will be kept. By default, it will be "Country" and "Total".

}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a \code{dataframe} containing the rows from the inputted \code{dataframe} listed in \code{keep} and the
columns assigned to argument \code{columns} and returns those values as percentages of total possible seats, rather than in absolute values.

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
Total <- c(4,6,8)
df.data <- data.frame(Country, EPP, SD, Other, IN, Total)
percchange(df.data, columns = c("EPP", "SD", "Other", "IN"))

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
