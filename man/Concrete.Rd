\name{Concrete}
\alias{Concrete}
\docType{data}
\title{
 Concrete Slump Test Dataset
}

\description{
  A classic dataset in materials science and civil engineering for studying the relationship between concrete mix proportions and its workability/mechanical properties.
  It contains 103 concrete samples, recording 7 raw material proportions and 3 key performance indicators.
  Widely used in multi-target regression modeling and material performance prediction research, as the three response variables (SLUMP, FLOW, and Compressive.Strength) need to be considered simultaneously in engineering practice and have inherent physical connections and trade-offs.
}

\usage{
data(Concrete)
}

\arguments{
  A data frame containing 103 observations with the following 10 variables:

  \tabular{ll}{
    \strong{Name} \tab \strong{Description} \cr
    Cement              \tab Cement content (kg/\eqn{m^3}; main cementitious material in concrete) \cr
    Slag                \tab Slag content (kg/\eqn{m^3}; industrial by-product used as admixture) \cr
    Fly.ash             \tab Fly ash content (kg/\eqn{m^3}; improves workability and durability) \cr
    Water               \tab Water content (kg/\eqn{m^3}; affects workability and strength) \cr
    SP                  \tab Superplasticizer content (kg/\eqn{m^3}; enhances concrete fluidity) \cr
    Coarse.Aggr.        \tab Coarse aggregate content (kg/\eqn{m^3}; primary skeleton material in concrete) \cr
    Fine.Aggr.          \tab Fine aggregate content (kg/\eqn{m^3}; fills voids between coarse aggregates) \cr
    SLUMP               \tab Slump (cm; indicator of fresh concrete fluidity) \cr
    FLOW                \tab Flow (cm; final spread diameter of fresh concrete) \cr
    Compressive.Strength \tab 28-day compressive strength (MPa; strength of hardened concrete) \cr
  }
}



\details{
  The dataset focuses on quantifying how the proportions of raw materials (cement, slag, fly.ash, water, superplasticizer, aggregates) influence concrete's workability (measured by SLUMP and FLOW) and mechanical strength (Compressive.Strength). 
  These three response variables are interconnected in engineering: fluidity (SLUMP, FLOW) affects construction efficiency, while compressive.strength determines structural performance, and there are often trade-offs between workability and strength.
  This makes the dataset ideal for multi-response regression analysis, where multiple target variables are modeled simultaneously to capture their joint variation and inherent physical relationships.
}

\source{
  UCI Machine Learning Repository: \href{https://archive.ics.uci.edu/ml/datasets/Concrete+Slump+Test}{https://archive.ics.uci.edu/ml/datasets/Concrete+Slump+Test}
}

\references{
  Yeh, I.-C. (2007). Modeling of strength of high-performance concrete using artificial neural networks. \emph{Cement and Concrete Research}, 37(12), 1797-1808. 
}

\examples{

data(Concrete)

## Fit a simple linear regression model for SLUMP using Water content
fit_slump <- lm(SLUMP ~ Water, data = Concrete)
summary(fit_slump)

## Visualization: Slump vs. Water Content
plot(Concrete$Water, Concrete$SLUMP,
    xlab = "Water Content (kg/m^3)",
     ylab = "Slump (cm)",
     main = "Slump vs. Water Content")

abline(fit_slump, lwd = 2)

}

\keyword{datasets}