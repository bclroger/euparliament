\name{newpoligroup}
\alias{newpoligroup}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{

Function that sums several columns into a single one and then renames it.

}
\description{

This function creates a new political group within EU Parliament that is a combination of other parties. This is done by summing the values in each line of several listed columns and then renames the column.

}
\usage{
newpoligroup(df, chosenparties, poligroupname, keep = c("Country", "Year"))
}

\arguments{
  \item{df}{ The \code{dataframe} with the data of the political parties to be joined.

}
  \item{chosenparties}{ The \code{vector} with the party names that will be joined together.

}
  \item{poligroupname}{ The \code{string} that will give a name to the new group.

}
  \item{keep}{ The columns of the inputted \code{dataframe} that will be kept. By default, it will be "Country" and "Year".

}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a \code{dataframe} with the columns inputted from argument \code{keep} and an extra column with the sum of the columns listed in \code{chosenparties}.
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
newpoligroup(df.data, chosenparties = c("EPP", "SD"), "traditional", keep = "Country")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
