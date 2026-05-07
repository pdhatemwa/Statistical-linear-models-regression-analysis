data(mtcars)
attach(mtcars)

View(mtcars)

#----------------------------------------
#          QUESTION 1 (a)
#----------------------------------------
# Set mpg as the independent variable. (Y)
Y <- (mtcars$mpg)
# View(Y)

# Set wt as the dependent variable. (X)
X <- cbind(wt, hp)
X_t <- t(X) # find the transpose of X.
X_t # Call the function.

# Fitting the linear model.
# Step 1: OLS formulation.
N <- X_t%*%X
N # Call the function

# Step 2: Obtain the inverse of the matrix using the solve function.
solve(N)

# Step 3: 
f <- X_t%*%Y
f

# Note: according to OLS, B = [([X_t][X])^-1] * [(X_t)*(Y)]
# But according to our code, that will be Solve(N) * f

# Step 4 : Final OLS formulation.
# -------------------------------
B = solve(N)%*%f
B # Call B
# -------------------------------

# Step 5 : The linear model.
model <- lm(mpg ~ wt + hp, data = mtcars)
show(model)
summary(model)
plot(model)
