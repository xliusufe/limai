\name{pollution}
\alias{pollution}
\docType{data}
\title{Air Quality Index (AQI)  for Chinese Cities (2022)}

\description{
  A multidimensional dataset containing weekly Air Quality Index (AQI), meteorological parameters, 
  and socioeconomic indicators for 173 Chinese cities in 2022. 
}

\usage{data(pollution)}


\arguments{
  A list object containing 173 city entries with the following 10 variables:
\tabular{lll}{
   \strong{Name}      \tab \strong{Type}     \tab \strong{Description}                                                         \cr
   \code{AQI}         \tab matrix           \tab Air Quality Index, a matrix with 173 rows (cities) and 51 columns (weekly AQI values).            \cr
                       \tab                  \tab Higher values indicate poorer air quality. \cr
   \code{city}        \tab character        \tab City names vector (length 173).                                               \cr
   \code{temp}        \tab numeric          \tab Annual mean air temperature in °C.                                            \cr
   \code{dew}         \tab numeric          \tab Annual mean dew point temperature in °C.                                      \cr
   \code{windD}       \tab numeric          \tab Wind direction in degrees (0-360).                                            \cr
   \code{windS}       \tab numeric          \tab Annual mean wind speed in m/s.                                                \cr
   \code{pres}        \tab numeric          \tab Annual mean atmospheric pressure in hPa.                                      \cr
   \code{pop}         \tab numeric          \tab Household resident population (unit: 10,000).                                 \cr
  \code{green}       \tab numeric          \tab Green Covered Area as percentage of Completed Area (0-100).                    \cr
   \code{second}      \tab numeric          \tab Secondary Industry as Percentage to GRP (0-100).                              \cr
 }
}

\details{
  The data provides AQI data for 173 Chinese cities for the 51 weeks of 2022 and economic and meteorological related annual average data.
}

\source{
  \itemize{
    \item Air Quality Index form China National Environmental Monitoring Center(\href{https://air.cnemc.cn:18007/}{https://air.cnemc.cn:18007/})
    \item Meteorological Data from NOAA National Centers for Environmental Information (\href{https://www.ncei.noaa.gov/}{https://www.ncei.noaa.gov/})
    \item Socioeconomic data from China City Statistical Yearbook (\href{https://www.stats.gov.cn/}{https://www.stats.gov.cn/})
  }
}

\references{
 Guan, X., Li, Y., Liu, X., & You, J. (2025). Subgroup learning in functional regression models under the RKHS framework. \emph{arXiv preprint arXiv:2503.01515}.
}

\examples{
data(pollution)

# Explore AQI distribution for Beijing
bj_aqi <- as.numeric(pollution$AQI[pollution$city == "Beijing", ])
plot(bj_aqi, 
     type = "l", 
     main = "Weekly AQI in Beijing (2022)",
     xlab = "Week", 
     ylab = "AQI")

# Correlation analysis
cor(pollution$temp, rowMeans(pollution$AQI, na.rm = TRUE))
}

\keyword{datasets}