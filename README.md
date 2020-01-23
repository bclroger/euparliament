# euparliament R.package

## How to Install:


## How to Use:


```r
elections_eu
```

```r
Country <- c("Austria", "Belgium", "Bulgaria")
EPP <- c(1,2,3)
SD <- c(1,2,3)
Other <- c(1,1,1)
IN <- c(1,1,1)
df.data <- data.frame(Country, EPP, SD, Other, IN)
newpoligroup(df.data, chosenparties = c("EPP", "SD"), "traditional", keep = "Country")
```

```r
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
```


```r
Country <- c("Austria", "Belgium", "Bulgaria")
EPP <- c(1,2,3)
SD <- c(1,2,3)
Other <- c(1,1,1)
IN <- c(1,1,1)
df.data <- data.frame(Country, EPP, SD, Other, IN)
percseats(df.data, columns = c("EPP", "SD", "Other", "IN"), keep = "Country")
```

```r
Country <- c("Austria", "Belgium", "Bulgaria")
EPP <- c(1,2,3)
SD <- c(1,2,3)
Other <- c(1,1,1)
IN <- c(1,1,1)
Total <- c(4,6,8)
df.data <- data.frame(Country, EPP, SD, Other, IN, Total)
percchange(df.data, columns = c("EPP", "SD", "Other", "IN"))
```

```r
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

```

```r
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
```

```r
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
```


## Package Overview:

The package contains a set of seven functions, one dataset and one vignette with an analysis of the European Unions Parliament election results of 2014 and 2019. The analysis in the vignette presents how many seats of the EU Parliament have been awarded to each political party in each country and election, and then regroups parties with similar characteristics into larger political groups, making it easier to visualize and understand the changes in the balance of power between the two elections.

The dataset itself contains the number of seats awarded to each party in each country after each election and the functions listed in this Rpackage are all used in the vignette to transform the data as needed or to plot maps of the EU displaying the elections results and its changes.

## References:

-https://www.bbc.com/news/topics/c7zzdg3pmgpt/european-elections-2019#eu-parliament-scoreboard
-https://www.eppgroup.eu/about-us
-https://www.socialistsanddemocrats.eu/who-we-are
-https://www.aldeparty.eu/about/the-alde-party
-https://efa.greens-efa.eu/en/our-group/presentation/
-https://ecrgroup.eu/about
-https://en.wikipedia.org/wiki/Europe_of_Nations_and_Freedom
-https://en.wikipedia.org/wiki/Europe_of_Freedom_and_Democracy
-https://www.guengl.eu/about-the-group/
