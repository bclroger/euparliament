\name{newgroupby}
\alias{newgroupby}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{

Function that creates a data frame with political groups created by using function newpoligroup.

%%  ~~function to do ... ~~
}
\description{

This function creates new dataframe with political groups as a result of aggregating selected parties.

}
\usage{
newgroupby(df, groups, keep)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df}{ The \code{dataframe} with the data of the political parties.
   }
  \item{groups}{ List with the desired groups with the \code{dataframe} columns for performing the groupings.
   }
  \item{keep}{ What columns of the inputted \code{dataframe} will be kept. By default, it will be "Country" and "Year".
   }
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{

Returns a \code{dataframe} containing the rows from the inputted \code{dataframe} listed in \code{keep} and the columns in the \code{list} inputted under groups.

%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
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
groups <- groups <- list(
  "traditional" = c("EPP", "SD"),
  "non_attached" = c("IN", "Other"))

newgroupby(df.data, groups, "Country")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
