\name{personality}
\alias{personality}
\docType{data}
\title{Extrovert vs. Introvert Personality Traits Dataset}

\description{
Dive into the Extrovert vs. Introvert Personality Traits Dataset, a rich collection of behavioral and social data designed to explore the spectrum of human personality. This dataset captures key indicators of extroversion and introversion, making it a valuable resource for psychologists, data scientists, and researchers studying social behavior, personality prediction, or data preprocessing techniques.}

\usage{data(personality)}

\arguments{
  A data frame with 2,900 observations and the following 8 variables:
\tabular{lll}{
   \strong{Variable}  \tab \strong{Type}     \tab \strong{Description}                                                         \cr
   \code{AloneTime}   \tab numeric        \tab Daily hours spent alone (0-11 hours)                               \cr
   \code{StageFear}   \tab character      \tab Presence of stage fright (Yes/No)                                \cr
   \code{SocialEvents}\tab numeric        \tab Frequency of social events attended (0-10 scale)                  \cr
   \code{GoOut}       \tab numeric        \tab Frequency of going outside (0-7 days/week)                        \cr
   \code{Drained}     \tab character      \tab Feeling drained after socializing (Yes/No)                      \cr
   \code{Friends}     \tab numeric        \tab Number of close friends (0-15 people) \cr
   \code{PostFreq}    \tab numeric        \tab Social media post frequency (0-10 scale)                      \cr
   \code{Personality} \tab character      \tab Target personality classification (Extrovert/Introvert)            \cr
 }
}

\source{
    The dataset is taken from an open source on Kaggle website
  \href{https://www.kaggle.com/datasets/example/personality-traits}{https://www.kaggle.com/datasets/example/personality-traits}
}

\examples{
data(personality)

# Examine relationship between social events and friends count
cor(personality$SocialEvents, personality$Friends, use = "complete.obs")

# Plot distribution of social engagement
barplot(table(personality$SocialEvents),
        main = "Distribution of Social Event Attendance",
        xlab = "Attendance Frequency",
        ylab = "Number of Individuals")
}

\keyword{datasets}