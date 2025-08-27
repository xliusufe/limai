\name{MBI}
\alias{MBI}
\docType{data}
\title{MBI Dataset}

\description{
A dataset containing gender, height and weight measurements for individuals. }

\usage{data(MBI)}

\arguments{
  A data frame object containing 10000 samples entries with the following 3 variables: 
                  "Gender",
                "Height",
                "Weight"
\tabular{lll}{
   \strong{Name}      \tab \strong{Type}                 \cr
   \code{Weight}          \tab integer          \cr
   \code{Height}         \tab integer        \cr
   \code{Gender}      \tab character                \cr
    }
}


\examples{
data(MBI)

cor(MBI$Weight, MBI$Height, use = "complete.obs")

}

\keyword{datasets}