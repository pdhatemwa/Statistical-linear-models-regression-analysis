# Statistical Linear Models Using the `mtcars` Dataset in R

## Project Overview

This project presents a multiple linear regression analysis conducted entirely in the R programming language using the built in `mtcars` dataset. The objective was to model vehicle fuel efficiency (`mpg`) using vehicle weight (`wt`) and horsepower (`hp`) as predictor variables.

The project further evaluates the validity of the fitted regression model through statistical testing, regression diagnostics, assumption checking, and influential case analysis.

---

# Objectives

The project addressed the following statistical tasks:

i. Fit a multiple linear regression model using `mpg` as the dependent variable and `wt` and `hp` as independent variables.

ii. Determine whether the fitted regression model is statistically significant at the 5% significance level.

iii. Interpret the estimated regression coefficients.

iv. Explain the meaning of Multiple R-squared and Adjusted R-squared.

v. Assess the classical linear regression assumptions:
   - Linearity
   - Independence of errors
   - Homoscedasticity
   - Normality of residuals
   - Multicollinearity

vi. Perform regression case diagnostics using:
   - Standardized residuals
   - Cook’s Distance
   - Leverage
   - Covariance Ratio

---

# Dataset

The analysis used the built in `mtcars` dataset available in R.

The dataset contains automobile design and performance characteristics for 32 vehicles.

Key variables used:

| Variable | Description |
|---|---|
| mpg | Miles per gallon |
| wt | Vehicle weight (1000 lbs) |
| hp | Horsepower |

---

# Regression Model

The fitted regression model obtained from the data was:

\[
\widehat{mpg} = 37.22727 - 3.87783(wt) - 0.03177(hp)
\]

Interpretation:

- Vehicle weight negatively affects fuel efficiency.
- Horsepower also negatively affects fuel efficiency.
- Heavier and more powerful vehicles generally consume more fuel.

---

# Statistical Tests Performed

## 1. Overall Model Significance

The model significance was tested using the F-test.

### Results

| Statistic | Value |
|---|---|
| F-statistic | 69.21 |
| p-value | 9.109e-12 |

### Conclusion

The model was statistically significant at the 5% significance level.

---

## 2. Goodness of Fit

| Measure | Value |
|---|---|
| Multiple R-squared | 0.8268 |
| Adjusted R-squared | 0.8148 |

### Interpretation

Approximately 82.68% of the variation in fuel efficiency was explained by vehicle weight and horsepower.

---

# Regression Assumption Checks

## Linearity

Residuals versus fitted value plots were used to assess linearity.

### Finding

The residuals showed mild curvature, suggesting slight deviation from perfect linearity, though the model remained reasonably adequate.

---

## Independence of Errors

The Durbin Watson test was performed.

### Finding

The residuals were found to be reasonably independent.

---

## Homoscedasticity

Residual plots and the Breusch Pagan test were used.

### Finding

The residual spread appeared relatively constant, suggesting acceptable homoscedasticity.

---

## Normality of Residuals

The following methods were used:

- Histogram of residuals
- Q-Q plot
- Shapiro Wilk test

### Shapiro Wilk Results

| Statistic | Value |
|---|---|
| W | 0.92792 |
| p-value | 0.03427 |

### Conclusion

The residuals showed slight deviation from normality at the 5% significance level.

---

## Multicollinearity

Variance Inflation Factor (VIF) analysis was conducted.

### Finding

No severe multicollinearity was detected between `wt` and `hp`.

---

# Case Diagnostics

The following influence diagnostics were performed:

- Standardized residuals
- Cook’s Distance
- Leverage
- Covariance Ratio

## Influential Observations Identified

The following vehicles showed notable influence on the fitted model:

| Observation | Vehicle |
|---|---|
| 17 | Chrysler Imperial |
| 18 | Fiat 128 |
| 20 | Toyota Corolla |
| 31 | Maserati Bora |

These observations exceeded the Cook’s Distance threshold:

\[
\frac{4}{n} = \frac{4}{32} = 0.125
\]

---

# Technologies Used

- R Programming Language
- RStudio
- R Markdown

---

# Project Structure

```text
.
├── Statistical_Linear_Models.Rmd
├── Statistical_Linear_Models.docx
├── README.md
├── figures/
└── outputs/
```

---

# Running the Project

## Clone the repository

```bash
git clone https://github.com/your-username/your-repository-name.git
```

## Open the project in RStudio

Open the `.Rmd` file and knit the document to generate the final report.

---

# Required R Packages

```r
install.packages("lmtest")
install.packages("car")
```

---

# Example Libraries Used

```r
library(lmtest)
library(car)
```

---

# Author(s)

- Patrick Dhatemwa
- Ian Mulindwa
- Cynthia Musangi
- Francis Gitau

---

# Final Remarks

This project demonstrates the application of multiple linear regression analysis and regression diagnostics using real automobile performance data in R.

The analysis highlights both the strengths and limitations of linear modeling when applied to observational datasets and emphasizes the importance of validating regression assumptions before interpreting results.

Because regression without diagnostics is basically statistical astrology.
