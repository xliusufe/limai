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
   Each matrix containing y, v1-v49 variables:
    \tabular{ll}{
    \strong{Name} \tab \strong{Description} \cr
    \code{y}      \tab Annual support income of elderly people. \cr
    \code{v1}     \tab Gender. \cr
    \code{v2}     \tab Age. \cr
    \code{v3}     \tab Marital status. \cr
    \code{v4}     \tab Live alone (indicator). \cr
    \code{v5}     \tab Live with a spouse (indicator). \cr
    \code{v6}     \tab Live with children (indicator). \cr
    \code{v7}     \tab Live with other members (e.g., parents). \cr
    \code{v8}     \tab Health status. \cr
    \code{v9}     \tab Pension income. \cr
    \code{v10}    \tab Whether to receive a pension. \cr
    \code{v11}    \tab The number of surviving children. \cr
    \code{v12}    \tab Wage income per household. \cr
    \code{v13}    \tab Net operating income per household. \cr
    \code{v14}    \tab Net transfer income per household. \cr
    \code{v15}    \tab The number of children with a college degree or above. \cr
    \code{v16}    \tab The number of children earning over 10000 CNY each year. \cr
    \code{v17}    \tab Emotional comfort. \cr
    \code{v18}    \tab The number of household members. \cr
    \code{v19}    \tab The number of deceased biological children. \cr
    \code{v20}    \tab The number of surviving adopted children. \cr
    \code{v21}    \tab The number of surviving sons. \cr
    \code{v22}    \tab Financial support provided for parents. \cr
    \code{v23}    \tab Financial support provided for other relatives. \cr
    \code{v24}    \tab Net financial support received from other relatives. \cr
    \code{v25}    \tab The number of types of disability. \cr
    \code{v26}    \tab Have a chronic illness (indicator). \cr
    \code{v27}    \tab Whether to receive a retirement pension. \cr
    \code{v28}    \tab Retirement pension income. \cr
    \code{v29}    \tab New rural pension income. \cr
    \code{v30}    \tab All other pension income. \cr
    \code{v31}    \tab Pension income of elderly households. \cr
    \code{v32}    \tab The total financial assets of the elderly and their spouses. \cr
    \code{v33}    \tab The wage income of the main household members. \cr
    \code{v34}    \tab Government subsidies for individual families in the past year. \cr
    \code{v35}    \tab Government subsidies for the main household members. \cr
    \code{v36}    \tab The wage income of other family members in the past year. \cr
    \code{v37}    \tab Government subsidies for other family members. \cr
    \code{v38}    \tab Total government subsidies for families. \cr
    \code{v39}    \tab Government transfer income for households. \cr
    \code{v40}    \tab Net household income excluding private transfer income. \cr
    \code{v41}    \tab Net household income. \cr
    \code{v42}    \tab Net household income per capita. \cr
    \code{v43}    \tab Other net private transfer income of the elderly. \cr
    \code{v44}    \tab The family shared income received by the elderly. \cr
    \code{v45}    \tab Whether to complete high school education (indicator). \cr
    \code{v46}    \tab Annual net income from other sources. \cr
    \code{v47}    \tab Financial support provided for children. \cr
    \code{v48}    \tab (Additional covariate if any). \cr
    \code{v49}    \tab (Additional covariate if any). \cr
     }
    For a detailed explanation of this dataset, please refer to Ren et al. (2006).
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