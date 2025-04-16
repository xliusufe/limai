\name{game}
\alias{game}
\docType{data}
\title{Online Gaming Behavior Dataset}

\description{
  This dataset captures comprehensive metrics and demographics related to player behavior in online gaming environments. It includes variables such as player demographics, game-specific details, engagement metrics, and a target variable reflecting player retention.
}

\usage{data(game)}

\arguments{
  A data frame object containing 200 player entries with the following 13 variables:
\tabular{lll}{
   \strong{Name}      \tab \strong{Type}     \tab \strong{Description}                                                         \cr
   \code{ID}          \tab integer        \tab  Unique identifier for each player                               \cr
   \code{age}         \tab integer          \tab Age of the player                                \cr
   \code{gender}      \tab character           \tab   Gender of the player                  \cr
   \code{location}    \tab character        \tab   Geographic location of the player                        \cr
   \code{genre}       \tab character           \tab Genre of the game the player is engaged in                      \cr
   \code{time}        \tab numeric          \tab Average hours spent playing per session \cr
   \code{inbuy}       \tab integer          \tab Indicates whether the player makes in-game purchases (0 = No, 1 = Yes)                      \cr
   \code{difficulty}  \tab character    \tab Difficulty level of the game          \cr
   \code{session}     \tab integer          \tab Number of gaming sessions per week              \cr
   \code{sesslong}    \tab integer          \tab Average duration of each gaming session in minutes             \cr
   \code{level}       \tab integer          \tab Current level of the player in the game                \cr
   \code{achievement} \tab integer          \tab Number of achievements unlocked by the player                    \cr
   \code{engagement}  \tab character           \tab Categorized engagement level reflecting player retention ('High', 'Medium', 'Low')            \cr
 }
}

\details{
  The data provides information on various aspects of online gaming behavior for 200 players, including player identifiers, demographic details, gaming - related metrics. }

\source{
  The dataset from Kaggle website \href{https://www.kaggle.com/datasets/rabieelkharoua/predict-online-gaming-behavior-dataset/data}{https://www.kaggle.com/datasets/rabieelkharoua/predict-online-gaming-behavior-dataset/data}
}

\examples{
data(game)

# Check the relationship between in - game purchases and session length
cor(game$inbuy, game$sesslong, use = "complete.obs")

# Count the number of players in each game genre
genre_counts <- table(game$genre)
barplot(genre_counts, 
        main = "Number of Players in Each Game Genre",
        xlab = "Game Genre", 
        ylab = "Number of Players")
}

\keyword{datasets}