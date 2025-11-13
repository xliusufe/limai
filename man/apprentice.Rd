\name{apprentice}
\alias{apprentice}
\docType{data}
\title{Apprentice migration to Edinburgh}
\description{
   The number of apprentices migrating to Edinburgh
}
\usage{data(apprentice)}
\format{
  A data frame with 33 observations on the following 5 variables.
  \describe{
    \item{\code{Dist}}{the distance from Edinburgh (unit unknown, presumably miles); 
                           a numeric vector}
    \item{\code{Apps}}{the number of apprentices moving to Edinburgh from the given county (given in row labels); 
                              a numeric vector}
    \item{\code{Pop}}{the population (in thousands) of the given county; 
                             a numeric vector}
    \item{\code{Urban}}{the degree of urbanization as measured by the percentage 
                               of the population living in urban settlements; 
                               a numeric vector}
    \item{\code{Locn}}{the location of the county relative to Edinburgh; 
                           a factor with levels \code{North}, 
                           \code{South} and \code{West}}
  }
}
\details{
  The data record the number of apprentices moving to Edinburgh
  between 1775 and 1799 from other Scottish counties.
}
\source{
  Andrew Lovett and Robin Flowerdew (1989)
  Analysis of count data using Poisson regression.
  \emph{Professional Geographer}, 
  \bold{4}1(2), 
  190--198.

    R package GLMsData: \href{https://cran.r-project.org/web/packages/GLMsData/index.html}{https://cran.r-project.org/web/packages/GLMsData/index.html}

}
\examples{
data(apprentice)
summary(apprentice)
}
\keyword{datasets}
