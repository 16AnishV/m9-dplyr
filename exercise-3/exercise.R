# Exercise 3: Data Frame Practice with `dplyr`.
# Use a different appraoch to accomplish the same tasks as exercise-1


# Install devtools package: allows installations from GitHub
install.packages('devtools')
# install.packages('dplyr')

# Install "fueleconomy" package from GitHub
devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package
library(fueleconomy)
library(dplyr)

View(vehicles)

# Which Accura model has the best hwy MPG in 2015? (without method chaining)
only.acuras <- filter(vehicles, make %in% 'Acura')
acuras.2015 <- filter(only.acuras, year %in% 2015)
acuras.2015.best.hwy.mpg <- filter(acuras.2015, hwy == max(hwy))

# Which Accura model has the best hwy MPG in 2015? (nesting functions)


# Which Accura model has the best hwy MPG in 2015? (pipe operator)


### Bonus ###

# Write 3 functions, one for each approach.  Then, 
# Test how long it takes to perform each one 1000 times
