1)
n=100
df=n-1
vals=rt(n,df)
hist(vals)

2)
n=100
hist(rchisq(n,df=2))
hist(rchisq(n,df=2))
hist(rchisq(n,df=2))

3)
x=seq(-6,6,length=100)
df1=dt(x,df=1)
df2=dt(x,df=4)
df3=dt(x,df=10)
df4=dt(x,df=30)

plot(x,df1,type="l",col="red",ylim=c(0,0.4))
lines(x,df2,col="blue")
lines(x,df3,col="yellow")
lines(x,df4,col="green")


4)
i)
qf(0.95,df1=10,df2=20)

ii)
val=pf(1.5,df1=10,df2=20)
val
val_a=1-val
val_a

iii)
qf(0.25,df1=10,df2=20)
qf(0.5,df1=10,df2=20)
qf(0.75,df1=10,df2=20)
qf(0.999,df1=10,df2=20)

iv)
val=rf(1000,df1=10,df2=20)
hist(val)