

#rbinom(n, size, prob)

results = rbinom(500, 10, .3)

results2 = rbinom(500, 5, .3)

w_one = rbinom(500, 15, .3)

new_sum=results+results2

hist(new_sum)

hist(w_one, add=T)


X=rexp(5000, rate = 1)
Y=rexp(5000, rate = 1)
W=Y/X

invcdf <- function(r) {1/(1-r)}-1
rands=runif(5000)
Wdev=invcdf(rands)

W = sort(W)
W = W[1:4750]

Wdev = sort(Wdev)
Wdev = Wdev[1:4750]

plot(W, Wdev)
