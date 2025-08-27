\name{insurance}
\alias{insurance}
\docType{data}
\title{Medical Insurance Expenditure Dataset}

\description{
  This dataset contains annual medical charges for insured individuals in the United States, 
  along with demographic and lifestyle-related predictors. 
  It is commonly used for building predictive models (e.g., regression) to estimate future medical costs, 
  which supports actuarial pricing and risk stratification.
}

\usage{
  data(insurance)
}

\arguments{
  A data frame with 1,338 observations of insured individuals (aged 18–64), 
  with the following 7 variables:
  \tabular{lll}{
   \strong{Name}   \tab \strong{Type}    \tab \strong{Description} \cr
   \code{age}      \tab integer          \tab Age of the primary beneficiary (18–64 years) \cr
   \code{sex}      \tab character        \tab Gender of the insured (female/male) \cr
   \code{bmi}      \tab numeric          \tab Body mass index (kg/m^2) \cr
   \code{children} \tab integer          \tab Number of children/dependents covered by insurance \cr
   \code{smoker}   \tab character        \tab Smoking status (yes/no) \cr
   \code{region}   \tab character        \tab Residential region (northeast/southeast/southwest/northwest) \cr
   \code{charges}  \tab numeric          \tab Annual medical expenditure (in USD) \cr
  }
}

\details{
  The dataset was simulated based on U.S. Census Bureau data 
  and introduced in Chapter 6 of 
  \emph{Machine Learning with R}. 
  It is widely used for regression modeling to estimate healthcare costs 
  and to demonstrate how demographic and lifestyle variables influence expenditures.
}

\source{
  Original dataset from GitHub: 
  \href{https://github.com/stedy/Machine-Learning-with-R-datasets}{https://github.com/stedy/Machine-Learning-with-R-datasets}
}

\examples{
data(insurance)

# Display first rows
head(insurance)

# Fit a linear regression model: charges ~ age + bmi + children + smoker + region
model <- lm(charges ~ age + bmi + children + smoker + region,
            data = insurance)

summary(model)
}

\keyword{datasets}
