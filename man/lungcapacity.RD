\name{lungcapacity}
\alias{lungcapacity}
\docType{data}
\title{Children's Lung Capacity Dataset}

\description{
  This dataset contains measurements of lung capacity in children and adolescents aged 3 to 19 years. It includes physiological measurements, demographic information, and health-related factors that may influence respiratory development.
}

\usage{data(lungcapacity)}

\arguments{
  A data frame with 725 observations and the following 6 variables:
\tabular{lll}{
   \strong{Variable}  \tab \strong{Type}     \tab \strong{Description}                                                         \cr
   \code{LungCap}     \tab numeric        \tab Lung capacity measurement (liters)                               \cr
   \code{Age}         \tab integer        \tab Age of child in years (3-19)                                \cr
   \code{Height}      \tab numeric        \tab Height in inches (45.3-81.8)                  \cr
   \code{Smoke}       \tab character      \tab Smoking habit (no/yes)                        \cr
   \code{Gender}      \tab character      \tab Gender (male/female)                      \cr
   \code{Caesarean}   \tab character      \tab Born by Caesarean section (no/yes) \cr
 }
}

\source{
  The dataset from Kaggle website
  \href{https://www.kaggle.com/datasets/jacopoferretti/lung-capacity-of-kids}{https://www.kaggle.com/datasets/jacopoferretti/lung-capacity-of-kids}
}

\examples{
data(lungcapacity)

# Basic summary statistics
summary(lungcapacity)

# Compare lung capacity between smokers and non-smokers
boxplot(LungCap ~ Smoke, data = lungcapacity,
        main = "Lung Capacity by Smoking Status",
        xlab = "Smoker", ylab = "Lung Capacity (liters)")

}

\keyword{datasets}