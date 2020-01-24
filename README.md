# euparliament R.package

## How to Install:

In order to instsll the euparliament package, execute the following command in the command prompt of RStudio or of the console:

```r
install.packages("https://github.com/bclroger/euparliament/raw/master/package/euparliament_1.0.0.tar.gz", repos=NULL, type="source")
```

## Package Overview:

The package contains a set of seven functions, one dataset and one vignette with an analysis of the European Union's Parliament election results of 2014 and 2019. The analysis in the vignette presents how many seats of the EU Parliament have been awarded to each political party in each country and election, and then regroups parties with similar characteristics into larger political groups, making it easier to visualize and understand the changes in the balance of power between the two elections.

The dataset itself contains the number of seats awarded to each party in each country after each election and the functions listed in this Rpackage are all used in the vignette to transform the data as needed or to plot maps of the EU displaying the elections results and its changes.

## How to Use:

This package contains several objects. Here is a short description of them and examples of how to use them.

All files are available for inspection in this GitHub page.

Before running the commands in this guide, the following libraries are required:

- ggplot2
- rgeos
- rnaturalearth
- rnaturalearthdata

For installing those libraries, run the commands:
```r
install.packages("ggplot2")
install.packages("rgeos")
install.packages("rnaturalearth")
install.packages("rnaturalearthdata")
```
The package can be loaded by executing the following command:
```r
library("euparliament")
```
The dataframe that contains the EU Parliament election results of 2014 and 2019, elections_eu, can be called through the code below:
```r
library("euparliament")
elections_eu
```
In order to visualize the vignette with the analysis of the election results for the EU Parliament, execute the following command:
```r
library("euparliament")
browseVignettes("euparliament")
```
The "newpoligroup" function creates a new political group within EU Parliament that is a combination of other parties. This is done by summing the values in each line of several listed columns and then renames the column. The example below shows how to use the newpoligroup function.
```r
library("euparliament")
Country <- c("Austria", "Belgium", "Bulgaria")
EPP <- c(1,2,3)
SD <- c(1,2,3)
Other <- c(1,1,1)
IN <- c(1,1,1)
df.data <- data.frame(Country, EPP, SD, Other, IN)
newpoligroup(df.data, chosenparties = c("EPP", "SD"), "traditional", keep = "Country")
```
The "newgroupby" function creates new dataframe with political groups as a result of aggregating selected parties. The example below shows how to use the newgroupby function.
```r
library("euparliament")
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
The "percseats" function calculates the percentage of possible seats a party got in each country. That is the number of seats gained by Party(1) in country(a) as a percentage of total seats that country(a) has in the EU Parliament for any given year. The example below shows how to use the percseats function.
```r
library("euparliament")
Country <- c("Austria", "Belgium", "Bulgaria")
EPP <- c(1,2,3)
SD <- c(1,2,3)
Other <- c(1,1,1)
IN <- c(1,1,1)
df.data <- data.frame(Country, EPP, SD, Other, IN)
percseats(df.data, columns = c("EPP", "SD", "Other", "IN"), keep = "Country")
```
The "percchange" function is similar to percseats, but it calculates percentage of held seats by each party in each country by using the value from a "Total" column that has the total number of seats available per country. As a result, this function works even if the sum of all columns do not equal the total value of seats.The example below shows how to use the percchange function.
```r
library("euparliament")
Country <- c("Austria", "Belgium", "Bulgaria")
EPP <- c(1,2,3)
SD <- c(1,2,3)
Other <- c(1,1,1)
IN <- c(1,1,1)
Total <- c(4,6,8)
df.data <- data.frame(Country, EPP, SD, Other, IN, Total)
percchange(df.data, columns = c("EPP", "SD", "Other", "IN"))
```
The "get_map" function creates a categorical map with its projection centered on the European Union. The example below shows how to use get_map, even for a reduced dataset that covers only some of the countries within the EU.
```r
library("euparliament")
library("rnaturalearth")
library("rnaturalearthdata")
library("ggplot2")
Country <- c("Austria", "Belgium", "Bulgaria", "Croatia")
EPP <- c(1,2,3,4)
SD <- c(4,1,2,3)
Other <- c(3,4,1,2)
IN <- c(2,3,4,1)
Bias <- c("SD", "Other", "IN", "EPP")
df.data <- data.frame(Country, EPP, SD, Other, IN, Bias)
world <- ne_countries(scale = "medium", returnclass = "sf")

t_world <- merge(world, df.data, by.x="name_long", by.y="Country")

get_map(t_world, t_world$Bias, legend = "Sample Legend", title = "Major Parties")
```
If the result does not display immediately, check if the map is present under the "Plots" window in RStudio.

The "get_density_map" function creates a map with a gradient scale. Its projection also is centered on the European Union. The example below shows how to use get_density_map, even for a reduced dataset that covers only some of the countries within the EU.
```r
library("euparliament")
library("rnaturalearth")
library("rnaturalearthdata")
library("ggplot2")
Country <- c("Austria", "Belgium", "Bulgaria", "Croatia")
EPP <- c(7,22,31,48)
SD <- c(41,15,28,33)
Other <- c(35,42,10,5)
IN <- c(25,34,42,14)
df.data <- data.frame(Country, EPP, SD, Other, IN)
world <- ne_countries(scale = "medium", returnclass = "sf")

t_world <- merge(world, df.data, by.x="name_long", by.y="Country")

get_density_map(t_world, t_world$EPP, legend="Seats", title= "Seats Held by EPP", gradmax=50, gradnum =5)
```
If the result does not display immediately, check if the map is present under the "Plots" window in RStudio.

The "get_density_map2" is a very similar function to "get_density_map", but this one plots a similar map with two gradients in the same scale with a break set to the value zero. The example below shows how to use get_density_map2, even for a reduced dataset that covers only some of the countries within the EU.
```r
library("euparliament")
library("rnaturalearth")
library("rnaturalearthdata")
library("ggplot2")
Country <- c("Austria", "Belgium", "Bulgaria", "Croatia")
EPP <- c(7,22,31,-27)
SD <- c(41,-15,28,-30)
Other <- c(35,22,-10,-5)
IN <- c(-25,34,42,-14)
df.data <- data.frame(Country, EPP, SD, Other, IN)
world <- ne_countries(scale = "medium", returnclass = "sf")

t_world <- merge(world, df.data, by.x="name_long", by.y="Country")

get_density_map2(t_world, t_world$SD, legend="Gains/Losses", title= "Seats Gained or Lost by SD")
```
If the result does not display immediately, check if the map is present under the "Plots" window in RStudio.
## References:

https://www.bbc.com/news/topics/c7zzdg3pmgpt/european-elections-2019#eu-parliament-scoreboard

https://www.eppgroup.eu/about-us

https://www.socialistsanddemocrats.eu/who-we-are

https://www.aldeparty.eu/about/the-alde-party

https://efa.greens-efa.eu/en/our-group/presentation/

https://ecrgroup.eu/about

https://en.wikipedia.org/wiki/Europe_of_Nations_and_Freedom

https://en.wikipedia.org/wiki/Europe_of_Freedom_and_Democracy

https://www.guengl.eu/about-the-group/
