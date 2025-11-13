\name{Energy}
\alias{Energy}
\docType{data}
\title{Energy Efficiency Dataset}
\description{
  A classic multi-response regression dataset for building energy consumption prediction, sourced from the UCI Machine Learning Repository. 
  It contains 768 samples with 10 attributes: 8 independent variables describing building physical parameters (e.g., compactness, surface area) and 2 continuous target variables (Heating Load and Cooling Load) for simultaneous prediction. 
  This dataset is widely used in validating multi-response linear regression models in building energy efficiency research.
}

\usage{
data(Energy)
}

\arguments{
  A data frame object containing 768 observations with the following 10 variables:

  \tabular{lll}{
    \strong{Name} \tab \strong{Type}      \tab \strong{Description} \cr
    X1            \tab continuous         \tab Relative Compactness (core indicator of building compactness) \cr
    X2            \tab continuous         \tab Surface Area (total building surface area, unit: m\eqn{^2}) \cr
    X3            \tab continuous         \tab Wall Area (total building wall area, unit: m\eqn{^2}) \cr
    X4            \tab continuous         \tab Roof Area (total building roof area, unit: m\eqn{^2}) \cr
    X5            \tab continuous         \tab Overall Height (total building height, unit: m) \cr
    X6            \tab integer            \tab Orientation (building orientation, 1–4 representing directions) \cr
    X7            \tab continuous         \tab Glazing Area (proportion of glass area to total wall area) \cr
    X8            \tab integer            \tab Glazing Area Distribution (glass layout pattern, 1–4) \cr
    Y1            \tab continuous         \tab Heating Load (annual heating energy, kWh/m\eqn{^2}; target) \cr
    Y2            \tab continuous         \tab Cooling Load (annual cooling energy, kWh/m\eqn{^2}; target) \cr
  }
}


\details{
  The dataset focuses on quantifying relationships between building design features and energy consumption, providing a foundation for energy-efficient building design and HVAC system optimization. 
  Each sample represents a unique building configuration, enabling simultaneous prediction of heating and cooling demands—two key metrics for evaluating building energy performance. 
  It supports academic research (e.g., multi-response regression, feature importance analysis) and industrial applications (e.g., pre-design energy forecasting, energy audit).
}


\source{
  UCI Machine Learning Repository: \href{https://archive.ics.uci.edu/ml/datasets/Energy+Efficiency}{https://archive.ics.uci.edu/ml/datasets/Energy+Efficiency}
}

\references{
  Tsanas, A., & Xifara, A. (2012). Accurate quantitative estimation of energy performance of residential buildings using statistical machine learning tools. \emph{Energy and Buildings}, 49, 560-567.
}

\examples{

data(Energy)

## Fit two separate linear regression models
fit_Y1 <- lm(Y1 ~ X1 + X2 + X3 + X4 + X5 + X6 + X7 + X8, data = Energy)
fit_Y2 <- lm(Y2 ~ X1 + X2 + X3 + X4 + X5 + X6 + X7 + X8, data = Energy)

summary(fit_Y1)
summary(fit_Y2)

## Simple visualization: Cooling Load vs. Glazing Area
plot(Energy$X7, Energy$Y2,
     xlab = "Glazing Area",
     ylab = "Cooling Load",
     main = "Cooling Load vs. Glazing Area")

abline(lm(Y2 ~ X7, data = Energy), lwd = 2)

}

\keyword{datasets}


