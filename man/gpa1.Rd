\name{gpa1}
\alias{gpa1}
\docType{data}

\title{GPA and Student Characteristics Dataset}

\description{
A classic dataset in educational economics and econometric teaching, containing 141 observations on 29 student characteristics collected at Michigan State University (MSU) in 1994.
}

\usage{
data(gpa1)
}

\format{
A data frame with 141 observations on 29 variables:
\describe{
  \item{age}{age in years}
  \item{soph}{equals 1 if sophomore}
  \item{junior}{equals 1 if junior}
  \item{senior}{equals 1 if senior}
  \item{senior5}{equals 1 if fifth-year senior}
  \item{male}{equals 1 if male}
  \item{campus}{equals 1 if living on campus}
  \item{business}{equals 1 if business major}
  \item{engineer}{equals 1 if engineering major}
  \item{colGPA}{college GPA at MSU}
  \item{hsGPA}{high school GPA}
  \item{ACT}{ACT achievement score}
  \item{job19}{equals 1 if job hours <= 19}
  \item{job20}{equals 1 if job hours >= 20}
  \item{drive}{equals 1 if drives to campus}
  \item{bike}{equals 1 if bicycles to campus}
  \item{walk}{equals 1 if walks to campus}
  \item{voluntr}{equals 1 if does volunteer work}
  \item{PC}{equals 1 if personal computer at school}
  \item{greek}{equals 1 if member of a Greek organization}
  \item{car}{equals 1 if owns a car}
  \item{siblings}{equals 1 if has siblings}
  \item{bgfriend}{equals 1 if has boyfriend or girlfriend}
  \item{clubs}{equals 1 if belongs to an MSU club}
  \item{skipped}{average number of lectures missed per week}
  \item{alcohol}{average number of days per week drinks alcohol}
  \item{gradMI}{equals 1 if Michigan high school graduate}
  \item{fathcoll}{equals 1 if father is a college graduate}
  \item{mothcoll}{equals 1 if mother is a college graduate}
}
}

\details{
This dataset is commonly used to demonstrate linear regression modeling, hypothesis testing, and variable selection. It examines how academic background (high school GPA, ACT), demographics (gender, class standing), lifestyle choices (work hours, commuting, alcohol consumption), and family education relate to college GPA.
}

\source{
Originally from Wooldridge (2019), \emph{Introductory Econometrics}. Also available in the \pkg{Wooldridge} R package.
}

\references{
Wooldridge, J. M. (2019). \emph{Introductory Econometrics: A Modern Approach} (7th ed.). Cengage.
}

\examples{
data(gpa1)

gpa_model <- lm(colGPA ~ hsGPA + ACT, data = gpa1)
summary(gpa_model)

plot(gpa1$hsGPA, gpa1$colGPA,
     xlab = "High School GPA",
     ylab = "College GPA",
     main = "College GPA vs. High School GPA   ")
}

\keyword{datasets}
