\name{socialmedia}
\alias{socialmedia}
\docType{data}
\title{Students' Social Media Addiction}

\description{
  This dataset contains anonymized records of students' social media behaviors and related life outcomes. Spanning multiple countries and academic levels, it captures key dimensions including usage intensity, platform preferences, and relationship dynamics. 
}

\usage{data(socialmedia)}

\arguments{
  A data frame with configurable observations (typically 100-1000) and the following 13 variables:
\tabular{lll}{
   \strong{Variable}         & \strong{Type}    & \strong{Description}                                                         \cr
   \code{id}                 & integer       & Unique student identifier                                                       \cr
   \code{age}                & integer       & Age in years (16-25)                                                           \cr
   \code{gender}             & character     & Gender identity (Male/Female)                                                  \cr
   \code{academic}           & character     & Academic level (High School/Undergraduate/Graduate)                            \cr
   \code{country}            & character     & Country of residence (Bangladesh, India, USA, UK, etc.)                       \cr
   \code{usage}              & numeric       & Average daily social media usage in hours                                      \cr
   \code{platform}           & character     & Most frequently used platform (Instagram, Facebook, TikTok, etc.)             \cr
   \code{affects\_academic}  & character     & Self-reported academic impact (Yes/No)                                        \cr
   \code{sleep}              & numeric       & Average nightly sleep duration in hours                                        \cr
   \code{health}             & integer       & Self-rated mental health score (1 = poor to 10 = excellent)                   \cr
   \code{relationship}       & character     & Relationship status (Single/In Relationship/Complicated)                      \cr
   \code{conflicts}          & integer       & Number of relationship conflicts attributed to social media                   \cr
   \code{addiction}          & integer       & Social media addiction score (1 = low to 10 = high)                          \cr
 }
}

\source{
  The dataset is taken from an open source on Kaggle website
  \href{https://www.kaggle.com/datasets/adilshamim8/social-media-addiction-vs-relationships}{https://www.kaggle.com/datasets/adilshamim8/social-media-addiction-vs-relationships}
}

\examples{
data(socialmedia)

# Visualize addiction scores by platform
boxplot(addiction ~ platform, data = socialmedia,
        main = "Addiction Scores by Social Media Platform",
        xlab = "Platform", ylab = "Addiction Score")
}


\keyword{datasets}