\name{elections_eu}
\alias{elections_eu}
\docType{data}
\title{
European Union's Parliament election results for 2014 and 2019.
}
\description{
This is a \code{dataframe} containing the results of the EU Parliament election results of 2014 and 2019. It shows country by country, for both election years, how many seats were captured by each political party within the EU Parliament.
The data comes from a BBC article. The source can be found under the reference section of this help page.
}
\usage{elections_eu}
\format{
  A data frame with 56 observations on the following 13 variables.
  \describe{
    \item{\code{Country}}{a factor with levels \code{Austria}, \code{Belgium}, \code{Bulgaria}, \code{Croatia}, \code{Cyprus}, \code{Czech Republic}, \code{Denmark}, \code{Estonia}, \code{Finland}, \code{France}, \code{Germany}, \code{Greece}, \code{Hungary}, \code{Ireland}, \code{Italy}, \code{Latvia}, \code{Lithuania}, \code{Luxembourg}, \code{Malta}, \code{Netherlands}, \code{Poland}, \code{Portugal}, \code{Romania}, \code{Slovakia}, \code{Slovenia}, \code{Spain}, \code{Sweden} and \code{United Kingdom}}
    \item{\code{Year}}{a factor with levels \code{2014} and \code{2019}}
    \item{\code{Total}}{a numeric vector. Total number of EU Parliament Seats.}
    \item{\code{EPP}}{a numeric vector. Number of seats gained by party.}
    \item{\samp{S&D}}{a numeric vector. Number of seats gained by party.}
    \item{\code{ALDE}}{a numeric vector. Number of seats gained by party.}
    \item{\code{EFA}}{a numeric vector. Number of seats gained by party.}
    \item{\code{ECR}}{a numeric vector. Number of seats gained by party.}
    \item{\code{ENF}}{a numeric vector. Number of seats gained by party.}
    \item{\code{EFD}}{a numeric vector. Number of seats gained by party.}
    \item{\code{GUE}}{a numeric vector. Number of seats gained by party.}
    \item{\code{IN}}{a numeric vector. Number of seats gained by party.}
    \item{\code{Other}}{a numeric vector. Number of seats gained by party.}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~

- \code{\strong{EPP}} (European Peoples Party)

The Group of the European Peoples Party (EPP) is the oldest and largest political group within the European Parliament, currently holding 178 of all 751 available seats. This group holds center right views and policies and has the stated goals is the creation of a more competitive and democratic European Union, providing its citizens the necessary freedoms to live according to their desires while providing safety nets for those who are worse off.
Source: https://www.eppgroup.eu/about-us


- \code{\strong{S&D}} (Socialists and Democrats)

The political group Socialists and Democrats (S&D) of the European Parliament is the second largest political group within the EU currently holding 149 seats. Both the S&D and the EPP have historically the main political groups within the European Parliament. S&D is a center left political group that states its goals as the creation of inclusive European society based on the five principles of: solidarity, diversity, fairness, freedom and equality.
Source: https://www.socialistsanddemocrats.eu/who-we-are


- \code{\strong{ALDE}} (Alliance of Liberals and Democrats for Europe)

The Alliance of Liberals and Democrats for Europe (or ALDE), as the name suggests, is a group of liberal-leaning parties. As a pro-European Union group, ALDE believes in what it calls the four freedoms of the EU: freedom of movement of people, goods, services and capital. Its stated beliefs are freedom, tolerance, solidarity, human rights democracy and the rule of law.
Source: https://www.aldeparty.eu/about/the-alde-party


- \code{\strong{EFA}} (Greens)

The Greens, also known as the European Free Alliance (EFA), are a political group that has as its priorities environmental and sustainable policies, while also concerning itself with issues to end racism, xenophobia and also fights for representation of stateless nations within the European Union such as Scotland and Catalonia.
Source: https://efa.greens-efa.eu/en/our-group/presentation/


- \code{\strong{ECR}} (European Conservatives and Reformists)

The ECR is a conservative political group within the European Parliament better known for their anti-European Union position, which they call Eurorealist. This particular group states that there are indeed areas of cooperation for all member-States within the European Union, but aims for a more narrow and restricted role for the European Union. Its state beliefs are guiding the EU to a new direction, using common sense and creating an alternative agenda for the EU.
Source: https://ecrgroup.eu/about


- \code{\strong{ENF}} (Europe of Nations and Freedom)

The ENF is a new political group within the EU parliament created in 2015 and as a result, had no seats in parliament in the 2014 European elections, which is represented in the data in this report. Although new, this group has currently been replaced by another political group with similar positions called the Identity and Democracy group. This analysis will use the ENF instead of the ID group, as it better reflects the results of the European election of 2019 at the time it took place. The ENF (and the ID group, for that matter), is notorious for its anti-European and nationalist views.
Source: https://en.wikipedia.org/wiki/Europe_of_Nations_and_Freedom


- \code{\strong{EFD}} (Europe of Freedom and Democracy)

Much like the ENF, the EFD is yet another Euroskeptic political group within the European parliament. This group also has strong nationalistic views and has seen gains in the number of parliament seats it holds between the 2014 and 2019 elections.
Source: https://en.wikipedia.org/wiki/Europe_of_Freedom_and_Democracy


- \code{\strong{GUE}}\strong{/NGL} (European United Left/Nordic Green Left)

This political group within the European Parliament is the result of the alliance between the Group of the European United Left and the Nordic Green Left. Throughout this report, for the sake of simplicity, this group will only be referenced as GUE. This left-leaning political group states as its main objective is to make sure that the EU is not a project for the elites and they fight for equal rights, civil and human rights. They also have an anti-fascism and anti-racism agenda.
Source: https://www.guengl.eu/about-the-group/


- \code{\strong{Others}} and \code{\strong{IN}} (Independents)

There are other seats within the European Parliament in the used dataset being held by Others and IN (Independents). These seats are held respectively by smaller political groups that do not hold many seats individually and political candidates that do not affiliate themselves to any specific political group within the European Parliament.


}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
https://www.bbc.com/news/topics/c7zzdg3pmgpt/european-elections-2019#eu-parliament-scoreboard

https://www.eppgroup.eu/about-us

https://www.socialistsanddemocrats.eu/who-we-are

https://www.aldeparty.eu/about/the-alde-party

https://efa.greens-efa.eu/en/our-group/presentation/

https://ecrgroup.eu/about

https://en.wikipedia.org/wiki/Europe_of_Nations_and_Freedom

https://en.wikipedia.org/wiki/Europe_of_Freedom_and_Democracy

https://www.guengl.eu/about-the-group/

}
\examples{
elections_eu
}
\keyword{datasets}
