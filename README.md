# Simulation OLS Application
Cristian Santa  
<div align='center'>

#### Introduction

</div>
<div align='justify'>
<b>Ordinary least squares (OLS)</b> or linear least squares is a method for estimating the unknown parameters in a linear regression model, with the goal of minimizing the differences between the observed responses in some arbitrary dataset and the responses predicted by the linear approximation of the data (visually this is seen as the sum of the vertical distances between each data point in the set and the corresponding point on the regression line - the smaller the differences, the better the model fits the data). The resulting estimator can be expressed by a simple formula, especially in the case of a single regressor on the right-hand side. The OLS estimator is consistent when the regressors are exogenous and there is no perfect multicollinearity, and optimal in the class of linear unbiased estimators when the errors are homoscedastic and serially uncorrelated. Under these conditions, the method of OLS provides minimum-variance mean-unbiased estimation when the errors have finite variances.</div>

<div align='center'>

#### About App

</div>
<div align='justify'>
This is an interactive application to see different linear regressions with the fit plot and summary of coefficients and some stats. You can choose a data generating process, and different ecuation for fit your model:</div>

---------------------------------------------------- ---------------------------
<b>Data Generatin Process</b>                        <b>Fit Models</b>         
---------------------------------------------------- ---------------------------
$y=2+3x+u$<br>                                       $y\sim x$<br>             
$y=2+3x-0.5x^2+u$<br>                                $y\sim x^2$<br>           
$y=-10-1.5x+x^2+u$<br>                               $y\sim e^{x}$<br>         
$y=-2x-0.5x^2+u$<br>                                 $y\sim x+x^2$<br>         
$y=5+x-0.1e^{x}+u$<br>                               $y\sim x+e^{x}$<br>       
$y=0.2e^{x}+u10$<br>                                 $y\sim x+x^2+e^{x}$<br>   
$y=-4-2x^2+0.4e^{x}-x^2+u^5$<br>                     $y\sim x+x^2+x^3+x^4+x^5$ 
$y=-1-2x+1.5x^2-1.5x^3-0.05x^4+10^{-4}x^5+u^5$<br>                             
---------------------------------------------------- ---------------------------
<div align='justify'>
In the same way you can choose the `set.seed` to randomize the process, select the size sample, and you can set the standar deviations of the variables $x\sim N(0,\sigma_{x}+2)$ and $u\sim N(0,\sigma_{u})$.
</div>
