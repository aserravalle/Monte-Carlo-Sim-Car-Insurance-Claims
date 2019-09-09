# Scenario
You are an actuarial analyst at Skippie Insurance. Your company offers a No-Claim-Discount (NCD) car insurance scheme with 10,000 policyholders in the current policy year. Details of the current scheme is as follows:

- The standard premium applied to all policyholders is $300 per annum. The average claim cost is $2,000 (for sake of simplicity, you can use this as individual claim costs).
- There are 5 levels of discount from -20% to +20%
- New policyholders enter the scheme on discount Level 0. If a policyholder has one free claim year, he/she moves up to the next higher level of discount in the following year unless he/she is already on the highest level (Level 2). If a policyholder has one claim during a year, he/she moves down to the next lower level of discount, and with two claims, he/she moves down 2 levels unless he/she is already on the lowest level (Level -2). Each policyholder can only have a maximum of 2 claims a year.
- Your company has been modelling transitions for all policyholders in the current portfolio using a discretetime stationary Markov chain.
- The record of policyholder' levels at the beginning of 2018 and 2019 and their claims over 2018 are provided in a separate spreadsheet (claimsdata.csv).

# Task
Estimate the probability transition matrix for the Markov chain for the current scheme using the above claims record. Project the total expected premium from this portfolio of policyholders at the beginning of 2020. Provide suggestions to improve the design and profitability of the scheme and justify your suggestions.

# Execution
Run the R Script to conduct the simulation and output the expected premium. The R Notebook contains more detailed analysis and explanations. The report has the recommendations made to the insurer.
