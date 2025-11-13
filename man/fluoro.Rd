\name{fluoro}
\alias{fluoro}
\docType{data}
\title{The time of fluoroscopy and total radiation}
\description{
  The data give the total procedure time during \acronym{ct} fluoroscopic scanning, 
  and the radiation dose received.
}
\usage{data(fluoro)}
\format{
  A data frame with 19 observations on the following 2 variables.
  \describe{
    \item{\code{Time}}{the total procedure time (in minutes); 
                       a numeric vector}
    \item{\code{Dose}}{the total radiation dose received (in rads); 
                       a numeric vector}
  }
}
\details{
  The data are given in the Table as the 
  natural log of \code{Time} and the natural log of \code{Dose}.
  Here the data have been transformed back to the original scale.
  The source claims the purpose of the data collection was 
  ``to assess whether radiation dose could be estimated 
  by simply measuring the total \acronym{ct} fluoroscopic procedure time''.
  The procedure was performed in the abdomen.
}
\source{
  Kelly H. Zou, Kemal Tuncali, and Stuart G. Silverman (2003)
  Correlation and simple linear regression. 
  \emph{Radiology}, 
  \bold{227}, 
  617--628.

  R package GLMsData: \href{https://cran.r-project.org/web/packages/GLMsData/index.html}{https://cran.r-project.org/web/packages/GLMsData/index.html}

}
\references{
	The data were originally used,
	but not given,
	in
  S. G. Silverman, K. Tuncali, D. F. Adams, R. D. Nawfel, K. H. Zou, 
  and P. F. Judy (1999)
  \acronym{ct} fluoroscopy-guided abdominal interventions: 
  techniques, results, and radiation exposure. 
  \emph{Radiology}, 
  \bold{212}, 
  673--681.
}
\examples{
data(fluoro)
plot(fluoro)
}
\keyword{datasets}
