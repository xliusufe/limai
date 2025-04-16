# limai
R package "limai" includes data sets used in the book "Linear modeling and AI decision-making", see details in Liu and You (2025).

# Installation

    #install.packages("devtools")
    library(devtools)
    install_github("xliusufe/limai")

    # or
    #install.packages("remotes")
    library(remotes)
    remotes::install_github("xliusufe/limai") 

# Usage

- [x] [limai-manual.pdf](https://github.com/xliusufe/ailm/inst/limai-manual.pdf) ------------ Details of the usage of the package.

# Example
    library(glmnet)
    library(limai)
 
    data(breastcancer)
    dna = breastcancer$dna[breastcancer$chrom==21,]
	rna = breastcancer$rna[which(breastcancer$genechr==21),]
	y = dna[1,]
	x = t(rna)
	set.seed(100)
	fit_ridge = cv.glmnet(x,y,alpha = 0)
	coef(fit_ridge, s = "lambda.min")
	fit_lasso = cv.glmnet(x,y,alpha = 1)
	coef(fit_lasso, s = "lambda.min")


# References
Chin, K., DeVries, S., et al. (2006). Genomic and transcriptional aberrations linked to breast cancer pathophysiologies. Cancer cell, 10(6), 529-541.

Liu, X. and You, J. (2025). Linear modeling and AI decision-making. Higher Education Press (China).





