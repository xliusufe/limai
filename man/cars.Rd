\name{cars}
\alias{cars}
\docType{data}
\title{Car Speed and Braking Distance Dataset}

\description{
  A classic dataset recording the relationship between car speed and corresponding braking distance for automobiles in the 1920s. 
  It contains 50 samples with two variables: one continuous feature (speed) and one continuous target variable (braking distance). 
  This dataset is widely used for exploring linear relationships between two continuous variables, particularly in introductory linear regression analysis and statistical modeling tutorials.
}

\usage{
data(cars)
}

\arguments{
  A data frame object containing 50 observations with the following 2 variables:
\tabular{lll}{
  \strong{Variable Name}  \tab \strong{Variable Description} \cr
   speed           \tab  Car speed (measured in miles per hour; feature variable) \cr
   dist            \tab  Braking distance (measured in feet; target variable) \cr
}
}

\details{
  The dataset captures real-world measurements of automobile performance, focusing on how braking distance increases with speed. 
  Each sample represents a unique observation of a car's speed and the distance required to come to a complete stop. 
  It is particularly useful for demonstrating basic linear regression concepts (e.g., fitting a linear model to predict distance from speed) and visualizing bivariate relationships (e.g., scatter plots with regression lines). 
  The simplicity of the dataset (two variables, no missing values) makes it ideal for teaching introductory statistics and machine learning.
}

\source{
  Built-in dataset in R's base datasets package (included with base R)
}

\references{
  McNeil, D. R. (1977). \emph{Interactive Data Analysis}. Wiley.  \cr
  Venables, W. N., & Ripley, B. D. (2002). \emph{Modern Applied Statistics with S}. Springer. 
}

\examples{
data(cars)

speed_dist_model <- lm(dist ~ speed, data = cars)
summary(speed_dist_model)

plot(cars$speed, cars$dist,
     xlab = "Speed (mph)",
     ylab = "Braking Distance (ft)",
     main = "Speed vs. Braking Distance")
abline(speed_dist_model, col = "red", lwd = 2)
}
\keyword{datasets}
