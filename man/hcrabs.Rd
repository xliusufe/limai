\name{hcrabs}
\alias{hcrabs}
\docType{data}
\title{Males attached to female horseshoe crabs}
\description{
  The number of male crabs attached to female horseshoe crabs
}
\usage{data(hcrabs)}
\format{
  A data frame with 173 observations on the following 5 variables.
  \describe{
    \item{\code{Col}}{the color of the female; 
                      a factor with levels \code{LM} (light medium), 
                      \code{M} (medium), \code{DM} (dark medium) or \code{D} (dark)}
    \item{\code{Spine}}{the spine condition; 
                        a factor with levels \code{BothOK}, 
                        \code{OneOK} or \code{NoneOK}}
    \item{\code{Width}}{the carapace width of the female crab in cm; 
                        a numeric vector}
    \item{\code{Wt}}{the weight of the female crab in grams; 
                     a numeric vector}
    \item{\code{Sat}}{the number of male crabs attached to the female (`satellites');
                      a numeric vector}
  }
}
\details{
  The data come from an observational study of nesting horseshoe crabs:
  \dQuote{The study was conducted at two beaches on the Delaware shore,
  Breakwater Harbor at Cape Henlopen Park in Lewes and Fowler's Beach,
  32 km north on the same shoreline (Sussex County, Delaware, \acronym{usa}).
  In 1991
  observations were made from 7 to 17 June, 
  in1992 from 28 May to 3 June and from 11 to 14 June,
  and in 1993 from 18 May to 11 June.
  At these sites the crabs were most active on the higher of the two daily high tides
  (which at this time of year are at night between 1700 and 0200 h \acronym{est})}
  (Brockmann, 1996; p. 4).
}

\source{
	H. J. Brockmann (1996)
	Satellite male groups in horseshoe crabs, 
	\emph{Limulus polyphemus}.
	\emph{Ethology},
	\bold{102}(1), 1--21.

    R package GLMsData: \href{https://cran.r-project.org/web/packages/GLMsData/index.html}{https://cran.r-project.org/web/packages/GLMsData/index.html}

}
\examples{
data(hcrabs)
plot(Sat ~ Wt, data=hcrabs)
}
\keyword{datasets}
