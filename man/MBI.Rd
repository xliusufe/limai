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
   \strong{Name}      \tab \strong{Type}        \cr
   \code{Weight}          \tab integer          \cr
   \code{Height}         \tab integer        \cr
   \code{Gender}      \tab character         \cr
    }
}

\details{
The dataset contains 10000 samples with three variables. We can use this dataset to explore the relationship between height and weight. And cauculate MBI (Mass Body Index) = weight/height.
}

\source{
  Data from Kaggle: \href{https://www.kaggle.com/datasets/mustafaali96/weight-height/data}{https://www.kaggle.com/datasets/mustafaali96/weight-height/data}
}


\examples{
data(MBI)

cor(MBI$Weight, MBI$Height, use = "complete.obs")

}

\keyword{datasets}