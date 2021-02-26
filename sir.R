deriv(S) <- births - b * S - beta * S * I / N
deriv(I) <- beta * S * I / N - (b + sigma) * I
deriv(R) <- sigma * I - b * R

initial(S) <- N - I0
initial(I) <- I0
initial(R) <- 0

output(pop) <- S + I + R

N <- 1e6                 # total population size
I0 <- user(1)            # num infectious cases at start of epidemic
beta <- R0 * (sigma + b) # transmission parameter
sigma <- user(2)         # recovery rate (1/mean duration infectiousness)
R0 <- user(5)            # av num new cases caused by single infectious case
b <- user(0.02)          # death rate
births <- b * N          # number of births (for a constant population size)
