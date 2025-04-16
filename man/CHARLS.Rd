\name{CHARLS}
\alias{CHARLS}
\docType{data}
\title{China Health and Retirement Longitudinal Study (CHARLS) data of Hebei, Shandong, and Fujian provinces.}
\description{
    The dataset contains the CHARLS data collected in Hebei, Shandong, and Fujian provinces.
}
\usage{
    data(CHARLS)
}
\format{
    A list object containing the following 3 variables:
\tabular{lll}{
  \strong{Name}      \tab \strong{Type}     \tab \strong{Description}                                                         \cr
  \code{hebei}       \tab matrix           \tab The CHARLS data of Hebei province. \cr
                     \tab                  \tab A matrix with 257 rows and 50 columns including  y and  49 covariates v1,...,v49. \cr
  \code{shandong}    \tab matrix           \tab The CHARLS data of Shandong province. \cr
                     \tab                  \tab A matrix with 413 rows and 50 columns including y and  49 covariates v1,...,v49. \cr
  \code{fujian}      \tab matrix           \tab The CHARLS data of Fujian province. \cr
                     \tab                  \tab A matrix with 167 rows and 50 columns including y and  49 covariates v1,...,v49. \cr
}
}
\details{
  Each matrix containing \code{y}, \code{v1}-\code{v49} variables:
  \tabular{ll}{
    \strong{Name} \tab \strong{Description} \cr
    \code{y}      \tab Annual support income of elderly people. \cr
    \code{v1}     \tab Gender: \code{1 = male}, \code{0 = female}. \cr
    \code{v2}     \tab Age. \cr
    \code{v3}     \tab Education level: \code{1 = primary}, \code{2 = junior high}, \code{3 = high school}, \code{4 = other}. \cr
    \code{v4}     \tab Marital status: \code{1 = married}, \code{0 = unmarried}. \cr
    \code{v5}     \tab Live alone: \code{1 = yes}, \code{0 = no}. \cr
    \code{v6}     \tab Live with a spouse: \code{1 = yes}, \code{0 = no}. \cr
    \code{v7}     \tab Live with children: \code{1 = yes}, \code{0 = no}. \cr
    \code{v8}     \tab Live with other members (e.g., parents): \code{1 = yes}, \code{0 = no}. \cr
    \code{v9}     \tab Health status: \code{1 = disability/chronic illness}, \code{0 = healthy}. \cr
    \code{v10}    \tab Pension income. \cr
    \code{v11}    \tab Whether to receive a pension: \code{1 = yes}, \code{0 = no}. \cr
    \code{v12}    \tab Number of surviving children: \code{0 = none}, \code{1 = one}, \code{2 = two or more}. \cr
    \code{v13}    \tab Wage income per household. \cr
    \code{v14}    \tab Net operating income per household. \cr
    \code{v15}    \tab Net transfer income per household. \cr
    \code{v16}    \tab Number of children with a college degree or above. \cr
    \code{v17}    \tab Number of children earning over 10,000 CNY annually. \cr
    \code{v18}    \tab Emotional comfort: \code{1 = contact children \\geq every half month}, \code{0 = otherwise}. \cr
    \code{v19}    \tab Number of household members. \cr
    \code{v20}    \tab Number of deceased biological children. \cr
    \code{v21}    \tab Number of surviving adopted children. \cr
    \code{v22}    \tab Number of surviving sons. \cr
    \code{v23}    \tab Financial support for parents. \cr
    \code{v24}    \tab Financial support for other relatives. \cr
    \code{v25}    \tab Net financial support received from other relatives. \cr
    \code{v26}    \tab Number of types of disability. \cr
    \code{v27}    \tab Chronic illness: \code{0 = no}, \code{1 = yes}, \code{2 = other}. \cr
    \code{v28}    \tab Whether to receive a retirement pension: \code{1 = yes}, \code{0 = no}. \cr
    \code{v29}    \tab Retirement pension income. \cr
    \code{v30}    \tab New rural pension income. \cr
    \code{v31}    \tab All other pension income. \cr
    \code{v32}    \tab Pension income of elderly households. \cr
    \code{v33}    \tab Total financial assets of elderly and spouses. \cr
    \code{v34}    \tab Wage income of main household members. \cr
    \code{v35}    \tab Government subsidies for individual families. \cr
    \code{v36}    \tab Government subsidies for main household members. \cr
    \code{v37}    \tab Wage income of other family members. \cr
    \code{v38}    \tab Government subsidies for other family members. \cr
    \code{v39}    \tab Total government subsidies for families. \cr
    \code{v40}    \tab Government transfer income for households. \cr
    \code{v41}    \tab Net household income excluding private transfers. \cr
    \code{v42}    \tab Net household income. \cr
    \code{v43}    \tab Net household income per capita. \cr
    \code{v44}    \tab Other net private transfer income of elderly. \cr
    \code{v45}    \tab Family shared income received by elderly. \cr
    \code{v46}    \tab Whether to complete junior high school education: \code{1 = yes}, \code{0 = no}. \cr
    \code{v47}    \tab Whether to complete high school education: \code{1 = yes}, \code{0 = no}. \cr
    \code{v48}    \tab Annual net income from other sources. \cr
    \code{v49}    \tab Financial support provided for children. \cr
  }
}

\source{The CHARLS data from \href{https://charls.charlsdata.com/pages/Data/2015-charls-wave4/zh-cn.html}{https://charls.charlsdata.com/pages/Data/2015-charls-wave4/zh-cn.html}
}
\references{
    Ren, P., Liu, X., Zhang, X., Zhan, P., & Qiu, T. (2024). 
    Integrative analysis of high-dimensional quantile regression with contrasted penalization. 
    \emph{Journal of Applied Statistics}, 1-17.
}
\examples{
library(glmnet)
data(CHARLS)
data_hebei = CHARLS$hebei
y = data_hebei$y
x = data_hebei[,-1]
x = matrix(unlist(x),nrow = nrow(x))
fit_lasso = cv.glmnet(x,y,alpha = 1)
coef(fit_lasso,s = "lambda.min")
}