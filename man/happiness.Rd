\name{happiness}
\alias{happiness}
\docType{data}
\title{World Happiness Report Dataset (2016)}

\description{
  This dataset provides country-level measures of happiness from the World Happiness Report 2016. 
  It includes overall happiness scores, rankings, and contributing factors such as GDP, family support, life expectancy, freedom, generosity, and corruption perception. 
  The dataset enables quantitative analysis of global well-being and policy-related research.
}

\usage{data(happiness)}

\format{
  A data frame object containing country-level records with the following 13 variables:
  \tabular{lll}{
   \strong{Name}       \tab \strong{Type}    \tab \strong{Description} \\ \hline
   \code{country}      \tab character        \tab Name of the country \cr
   \code{region}       \tab character        \tab Geographic region of the country \cr
   \code{happ_rank}    \tab integer          \tab Overall rank based on the happiness score \cr
   \code{happ_score}   \tab numeric          \tab Happiness score (0–10 scale) for 2016 \cr
   \code{lower_ci}     \tab numeric          \tab Lower bound of the confidence interval of the score \cr
   \code{upper_ci}     \tab numeric          \tab Upper bound of the confidence interval of the score \cr
   \code{economy}      \tab numeric          \tab Contribution of GDP per capita to the happiness score \cr
   \code{family}       \tab numeric          \tab Contribution of social/family support \cr
   \code{health}       \tab numeric          \tab Contribution of life expectancy \cr
   \code{freedom}      \tab numeric          \tab Contribution of personal freedom \cr
   \code{trust}        \tab numeric          \tab Contribution of trust in government / corruption perception \cr
   \code{generosity}   \tab numeric          \tab Contribution of generosity \cr
   \code{dystopia}     \tab numeric          \tab Dystopia residual ensuring positivity of all subcomponents \cr
  }
}

\details{
  The World Happiness Report dataset is based on Gallup World Poll survey results, 
  evaluating happiness scores across countries.
  The dataset allows exploration of how economic, social, and political factors contribute to happiness. 
}

\source{
  Data from Kaggle: \href{https://www.kaggle.com/datasets/unsdsn/world-happiness}{https://www.kaggle.com/datasets/unsdsn/world-happiness}
}

\examples{
data(happiness)

hist(happiness$happ_score,
     main = "Distribution of Happiness Scores (2016)",
     xlab = "Happiness Score", 
     ylab = "Frequency")
}
\keyword{datasets}
