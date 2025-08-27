\name{happiness}
\alias{happiness}
\docType{data}
\title{World Happiness Report Dataset (2016)}

\description{
  This dataset provides country-level measures of happiness from the World Happiness Report 2016. 
  It includes overall happiness scores, rankings, and contributing factors such as GDP, family support, life expectancy, freedom, generosity, and corruption perception. 
  The dataset enables quantitative analysis of global well-being and policy-related research.
}

\usage{
  data(happiness)
}

\arguments{
  A data frame object containing country-level records with the following 13 variables:
\tabular{ll}{
  \strong{Variable Name} \tab \strong{Variable Description} \cr
  Country                \tab Country name \cr
  Region                 \tab Region where the country is located \cr
  Rank                   \tab Ranking based on overall happiness score \cr
  Score                  \tab Happiness score in 2016 (0-10) \cr
  Economy (GDP per Capita) \tab Contribution of GDP per capita to happiness score \cr
  Family                 \tab Contribution of social support to happiness score \cr
  Health (Life Expectancy) \tab Contribution of life expectancy to happiness score \cr
  Freedom                \tab Contribution of personal freedom to happiness score \cr
  Generosity             \tab Contribution of generosity to happiness score \cr
  Trust (Government Corruption) \tab Contribution of distrust in government corruption to happiness score \cr
  Dystopia Residual      \tab Residual compared to the "dystopia" benchmark \cr
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
