library(pracma)
#QUES1 i)

fx=function(x,y) 2*(2*x +3*y)/5
valid_joint_density=integral2(fx,0,1,0,1)$Q
if(valid_joint_density-1<10e-9){
	print("Its a valid joint density function")
} else{
	print("Its an invalid joint density function")
}

#ques1 1 ii)

gx=function(y) fx(1,y) 	
marginal_gx=integral(gx,0,1)
marginal_gx

#ques 1 iii)

hy=function(x) fx(x,0)
marginal_hy=integral(hy,0,1)
marginal_hy

#ques 1 iv)

gxy=function(x,y) x*y*fx(x,y)
expected_val=integral2(gxy,0,1,0,1)$Q
expected_val

#ques 2 i)

xval=0:3
yval=0:2
func=function(x,y)  (x+y)/30
matrix=outer(x,y,func)
matrix	

#ques 2 ii)

ifJointMassFunc=sum(matrix)
if(ifJointMassFunc==1){
	print("Its a valid joint mass function")
} else{
	print("Its an invalid joint mass function")
}

#ques 2 iii)

g_x=apply(matrix,1,sum)
g_x

#ques 2 iv)

h_y=apply(matrix,2,sum)
h_y
	
#ques 2 v)

find=matrix[1,2]
condprob=find/h_y[2]
condprob

#ques 2 vi)

Ex=sum(xval*g_x)
Ex

Ey=sum(yval*h_y)
Ey

Exy=0
for(i in 1:4){
	for(j in 1:3){
		Exy=Exy+xval[i]*yval[j]*matrix[i,j]
	}
}
Exy

varx=sum(xval*xval*g_x)-Ex^2
varx
					
vary=sum(yval*yval*h_y)-Ey^2
vary

covxy=Exy-Ex*Ey
covxy

corr=covxy/(sqrt(varx*vary))
corr
