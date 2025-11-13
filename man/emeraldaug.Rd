\name{emeraldaug}
\alias{emeraldaug}
\docType{data}
\title{August monthly rainfall in Emerald}
\description{
  The total monthly rainfall in Emerald, Australia, 
  and the average monthly \acronym{soi}
}
\usage{data(emeraldaug)}
\format{
  A data frame with 114 observations on the following 3 variables.
  \describe{
    \item{\code{Year}}{the year; 
                       a numeric vector}
    \item{\code{Rain}}{the total monthly rainfall in August of the given year; 
                       a numeric vector}
    \item{\code{SOI}}{the monthly average southern oscillation index (\acronym{soi}); 
                      a numeric vector}
    \item{\code{Phase}}{the \acronym{soi} phase (see Stone and Auliciems, 1992); 
                        a factor with these values:
                        \code{1} (consistently negative),
                        \code{2} (consistently positive),
                        \code{3} (rapidly falling),
                        \code{4} (rapidly rising), or
                        \code{5} (consistently near zero)}
  }
}
\details{
  The data give the total monthly rainfall and monthly in Emerald,
  Queensland, Australia, from 1889 to 2002,
  and the average \acronym{soi} for the corresponding month.
}
\references{
	R. C. Stone and A. Auliciems (1992)
	\acronym{soi} phase relationships with rainfall in eastern Australia,
	\emph{International Journal of Climatology},
	\bold{12}, 
   625--636.
}
\source{
  Data obtained from the Australian
  Bureau of Meteorology
  (\url{http://www.bom.gov.au})
  and
  \acronym{iri}/\acronym{ldeo} Climate Data Library
  (http://www.longpaddock.qld.gov.au/seasonalclimateoutlook/southernoscillationindex/soidatafiles/index.php)
  on 21 December 2010,
  then compiled.

  R package GLMsData: \href{https://cran.r-project.org/web/packages/GLMsData/index.html}{https://cran.r-project.org/web/packages/GLMsData/index.html}

}
\examples{
data(emeraldaug)
plot(emeraldaug)
}
\keyword{datasets}
