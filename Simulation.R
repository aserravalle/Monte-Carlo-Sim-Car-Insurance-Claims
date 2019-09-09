
# Load the dataset

#setwd("C:/Users/Ariel/Google Drive/UNI/ACTL2102/Assignment")
claims = read.csv('claimsdata.csv')
attach(claims)

# Create the transition matrix

P = table(claims$ncdlevel18, claims$ncdlevel19)
Ni = rowSums(P)
P = (P/Ni)
P

# Define a function to run the Monte-Carlo Simulation

Run_MC_Sim <- function(PT.matrix = P, init = 0, num.sims = 1000){
  sim.j = numeric(num.sims)
  # Determine the probability distribution by the row of the Markov Chain
  # init + 3 --> To match to index
  p = PT.matrix[init+3, ]
  for (n in 1:num.sims){
    # Sample a random variable with probability distribution above
    sim.j[n] = which(rmultinom(1,1,p) == 1) - 3
  }
  # Use simulated discount level to calculate the premium (vector)
  Premium = 300*(1-(sim.j*0.1))
  return(mean(Premium))
}

# Run function on the NCDlevel19 variable to produce the simulated expected premium income

claims$Simulated.Premium = rep(0,length(claims$X))

for (i in 1:length(claims$X) ){
  claims$Simulated.Premium[i]  = Run_MC_Sim(PT.matrix = P, init = claims$ncdlevel19[i], num.sims = 1000)
}

# The sum of this Simulated Premium column is our expected total premium income for 2020
sum(claims$Simulated.Premium)