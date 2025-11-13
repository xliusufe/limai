\name{wage1}
\alias{wage1}
\docType{data}

\title{Wage Determinants Dataset (1976 U.S. CPS)}

\description{
A classic dataset in econometrics for analyzing wage determinants, derived from the 1976 U.S. Current Population Survey (CPS). 
It contains 526 observations on 24 variables related to workers' education, experience, demographic characteristics, and hourly wages.
This dataset is widely used in teaching and research on labor economics, particularly for estimating linear regression models of wage determination.
}

\usage{
data(wage1)
}

\format{
A data frame with 526 observations on 24 variables:
\describe{
  \item{wage}{average hourly earnings}
  \item{educ}{years of education}
  \item{exper}{years of potential labor market experience}
  \item{tenure}{years with current employer}
  \item{nonwhite}{equals 1 if nonwhite}
  \item{female}{equals 1 if female}
  \item{married}{equals 1 if married}
  \item{numdep}{number of dependents}
  \item{smsa}{equals 1 if living in a Standard Metropolitan Statistical Area}
  \item{northcen}{equals 1 if living in the north central U.S.}
  \item{south}{equals 1 if living in the southern region}
  \item{west}{equals 1 if living in the western region}
  \item{construc}{equals 1 if working in the construction industry}
  \item{ndurman}{equals 1 if in nondurable manufacturing}
  \item{trcommpu}{equals 1 if in transportation, communication, or public utilities}
  \item{trade}{equals 1 if in wholesale or retail trade}
  \item{services}{equals 1 if in the services industry}
  \item{profserv}{equals 1 if in professional services}
  \item{profocc}{equals 1 if in a professional occupation}
  \item{clerocc}{equals 1 if in a clerical occupation}
  \item{servocc}{equals 1 if in a service occupation}
  \item{lwage}{log of hourly wage}
  \item{expersq}{square of \code{exper}}
  \item{tenursq}{square of \code{tenure}}
}
}

\details{
This dataset focuses on how individual attributes influence labor market outcomes, with an emphasis on wage determination. 
It includes both continuous variables (e.g., education, experience) and binary indicators (e.g., marital status, region), making it suitable for estimating Mincer earnings functions—a foundational model in labor economics that relates log wages to human capital variables.
The rich mix of socioeconomic and demographic characteristics enables analyses of wage differentials, returns to education, and experience effects.
}

\source{
Originally from the 1976 U.S. Current Population Survey (CPS). 
Also available in the \pkg{Wooldridge} R package.
}

\references{
Wooldridge, J. M. (2020). \emph{Introductory Econometrics: A Modern Approach} (7th ed.). Cengage.

Farber, H. S. (1981). The determination of the elasticity of substitution between workers in production. 
\emph{Review of Economics and Statistics}, 63(4), 505–512.
}

\examples{
data(wage1)

wage_model <- lm(wage ~ educ + exper + tenure + married + smsa, data = wage1)
summary(wage_model)

coef(wage_model)["educ"]

plot(wage1$educ, wage1$wage,
     xlab = "Years of Education",
     ylab = "Hourly Wage (USD)",
     main = "Wage vs. Education Level")

abline(lm(wage ~ educ, data = wage1), col = "green", lwd = 2)
}

\keyword{datasets}
