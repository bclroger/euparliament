\name{euparliament}
\alias{euparliament}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
EU Parliament elections of 2014 and 2019 Rpackage.
}
\description{
The package contains a set of seven functions, one dataset and one vignette with an analysis of the European Unions Parliament election results of 2014 and 2019. The analysis in the vignette presents how many seats of the EU Parliament have been awarded to each political party in each country and election, and then regroups parties with similar characteristics into larger political groups, making it easier to visualize and understand the changes in the balance of power between the two elections.

The dataset itself contains the number of seats awarded to each party in each country after each election and the functions listed in this Rpackage are all used in the vignette to transform the data as needed or to plot maps of the EU displaying the elections results and its changes.
}
\usage{

In order to visualize the vignette with the analysis of the election results for the EU Parliament,
execute the following command:

\code{browseVignettes("euparliament")}
}

\arguments{
  \item{\code{elections_eu}:}{ Dataframe containing the European Union's Parliament election results for 2014 and 2019 by number of parliament seats awarded to each party in each country.
}

  \item{\code{newpoligroup}:}{ Function that sums several columns into a single one and then renames it.

}
  \item{\code{newgroupby}:}{ Function that creates a data frame with political groups created by using function newpoligroup.
}
  \item{\code{(percseats)}:}{ Function that calculates the percentage of possible seats per country a party has received.
}
  \item{\code{percchange}:}{ Function that when given the total number of seats, it calculates the percentage of possible seats per country a party has received.
}
  \item{\code{get_map}:}{ Function that creates a map that shows which is the most voted political group within each contry.
}
  \item{\code{get_density_map}:}{ Function that creates a map with a gradient scale.
}
  \item{\code{get_density_map2}:}{ Function that creates a map with two gradients in the same scale.

}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
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
Bruno Carvalho Lopes Rogerio
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
library(euparliament)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
