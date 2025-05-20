exp 5

ques1
prob1 = 1 - punif(45, 0, 60)
prob1
prob2 = punif(30, 0, 60) - punif(20, 0, 60)
prob2

ques2
a)
density_3 = dexp(3, rate = 1/2)
density_3

b)
xval = seq(0, 5)
pdval = dexp(xval, rate = 1/2)
plot(xval, pdval, type = "l", col = "red", main = "Exponential probability distribution")

c)
prob2 = pexp(3, rate = 1/2)
prob2

d)
cdval = pexp(xval, rate = 1/2)
plot(xval, cdval, type = "l", col = "green", main = "Cumulative exponential probabilities")

e)
sim = rexp(1000, rate = 1/2)
plot(density(sim), col = "blue", main = "Exponential distributed random numbers")

ques3
a) #remember probability at a point here we found the density
densityat3 = dgamma(3, shape = 2, scale = 1/3)
densityat3
atleast1 = 1- pgamma(1, shape = 2, scale = 1/3)
atleast1

b)
cval = qgamma(0.7, shape = 2, scale = 1/3)
cval
