#QUES1
#1 a
dataset=read.csv(file.choose())

#1 b
nrow(dataset)
head(dataset,10)
dim(dataset)

#1 c
thick_mean=mean(dataset[[1]])
thick_mean
hist(dataset[[1]],xlab="Thickness")

#1 d 
abline(v=mean(dataset[[1]]),col="red" ,lwd=2)

#1 e
sample_sizes=c(10, 50, 500, 9000)
sample_means_plot_multiple=function(sample_sizes, num_samples = 1000) {
  par(mfrow = c(2, 2))
  for (n in sample_sizes) {
    sample_means=replicate(num_samples, mean(sample(dataset[[1]], n, replace = TRUE)))
    hist(sample_means)
    abline(v = mean(sample_means), col = "red", lwd = 2)
  }
}
sample_means_plot_multiple(sample_sizes)

#QUES2
age=c(58,69,43,39,63,52,47,31,74,36)
chol=c(189,235,193,177,154,191,213,165,198,181)
plot(age,chol)
model=lm(chol~age) #regression_line_command lm(y ~ x)
abline(model,col="blue",lwd=5)
predict_chol=predict(model,data.frame(age=60))
predict_chol

#QUES3
before=c(145,173,158,141,167,159,154,167,145,153)
after=c(155,167,156,149,168,162,158,169,157,161)
test_res=t.test(before,after,alternative="greater",conf.level=0.95)
test_res