\name{get_map}
\alias{get_map}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Creates a map that shows which is the most voted political group within each contry.
}
\description{
Creates a categorical map based on the \code{dataframe} assigned to argument \code{data} and the \code{column} asigned to \code{fill_by}. The map uses projection epsg:3035, so the map is already focused to the region of the European Union using an equal area Azimuthal projection.
}
\usage{
get_map(data, fill_by = NULL, legend = "", title = "")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{ The \code{dataframe} with the polygon data and other data.

}
  \item{fill_by}{ The \code{column} that with the desired categories.

}
  \item{legend}{ The \code{string} to be used as legend of the map.

}
  \item{title}{ The \code{string} to be used as title of map.

}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Plots a  categorical map using epsg: 3035 as a projection (Azimuthal equal area focused on the European Union) showing the values of the selected \code{column} from the selected \code{dataframe}.
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

Country <- c("Austria", "Belgium", "Bulgaria", "Croatia")
EPP <- c(1,2,3,4)
SD <- c(4,1,2,3)
Other <- c(3,4,1,2)
IN <- c(2,3,4,1)
Bias <- c("SD", "Other", "IN", "EPP")
df.data <- data.frame(Country, EPP, SD, Other, IN, Bias)
library("rnaturalearth")
library("rnaturalearthdata")
library("ggplot2")
world <- ne_countries(scale = "medium", returnclass = "sf")

t_world <- merge(world, df.data, by.x="name_long", by.y="Country")

get_map(t_world, t_world$Bias, legend = "Sample Legend", title = "Major Parties")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
