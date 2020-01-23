\name{get_density_map}
\alias{get_density_map}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Creates a map with a gradient scale.
}
\description{
This \code{function} creates a map based on the \code{dataframe} assigned to argument \code{data} that creates a map showing the values of the \code{column} assigned to the \code{fill_by} argument with a gradient scale.
}
\usage{
get_density_map(data, fill_by, legend = "", title = "", gradmin = 0, gradmax = 100, gradnum = 4, colors = c("#FFFFFF", "#224d77"))
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
  \item{gradmin}{ Lowest value shown in the gradient scale. Default: 0.

}
  \item{gradmax}{ Highest value shown in the gradient scale. Default: 100.

}
  \item{gradnum}{ Number of intervals shown in the gradient scale. Default: 4.

}
  \item{colors}{ The color gradient of "fill_by" info. Default: "#FFFFFF","#224d77".

}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Plots a  map with a gradient scale using epsg: 3035 as a projection (Azimuthal equal area focused on the European Union) showing the values of the selected \code{column} from the selected \code{dataframe}.
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
EPP <- c(7,22,31,48)
SD <- c(41,15,28,33)
Other <- c(35,42,10,5)
IN <- c(25,34,42,14)
df.data <- data.frame(Country, EPP, SD, Other, IN)
library("rnaturalearth")
library("rnaturalearthdata")
library("ggplot2")
world <- ne_countries(scale = "medium", returnclass = "sf")

t_world <- merge(world, df.data, by.x="name_long", by.y="Country")


get_density_map(t_world, t_world$EPP, legend="Seats", title= "Seats Held by EPP", gradmax=50, gradnum =5)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
