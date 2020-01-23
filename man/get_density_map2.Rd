\name{get_density_map2}
\alias{get_density_map2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Creates a map with two gradients in the same scale.
}
\description{
This is a very similar \code{function} to \code{get_density_map}, but this one plots a similar map with two gradients in the same scale with a break set to the value zero and changes the default values of the arguments \code{gradmin} and \code{gradmax}.

This \code{function} creates a map based on the \code{dataframe} assigned to argument \code{data} that creates a map showing the values of the \code{column} assigned to the \code{fill_by} argument with two gradients in the same scale.


}
\usage{
get_density_map2(data, fill_by, legend = "", title = "", gradmin = -32, gradmax = 42, gradnum = 4, colors = c("#a32424", "#FFFFFF", "#224d77"))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{ The \code{dataframe} with the polygon data and other data.

}
  \item{fill_by}{ The \code{column} that with the desired info to be shown in the map.

}
  \item{legend}{ The \code{string} to be used as legend of the map.

}
  \item{title}{ The \code{string} to be used as title of map.

}
  \item{gradmin}{ Lowest value shown in the gradient scale. Default: -32.

}
  \item{gradmax}{ Highest value shown in the gradient scale. Default: 42.

}
  \item{gradnum}{ Number of intervals shown in the gradient scale. Default: 4.

}
  \item{colors}{ The color gradient of "fill_by" info. Default: "#a32424",#FFFFFF","#224d77".

}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Plots a  map with two gradients in the same scale with a break around zero. The map uses epsg: 3035 as a projection (Azimuthal equal area focused on the European Union) showing the values of the selected \code{column} from the selected \code{dataframe}.
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
EPP <- c(7,22,31,-27)
SD <- c(41,-15,28,-30)
Other <- c(35,22,-10,-5)
IN <- c(-25,34,42,-14)
df.data <- data.frame(Country, EPP, SD, Other, IN)
library("rnaturalearth")
library("rnaturalearthdata")
library("ggplot2")
world <- ne_countries(scale = "medium", returnclass = "sf")

t_world <- merge(world, df.data, by.x="name_long", by.y="Country")

get_density_map2(t_world, t_world$SD, legend="Gains/Losses", title= "Seats Gained or Lost by SD")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
