For example, two sons are born a year apart. The year each is born a grandparent deposits $100 in a retirement account as a gift. It grows an average of 10 percet each year with the market. 

In year 2 the first son has \$110 in his acccount (\$100 + \$10 interest from the previous year). The second son has exactly \$100. Notice that although they start out only $10 apart in wealth and they both earn the same rate of return on their savings. Over time, though, the magic of compound interest widens the wealth gap. Compounding processes can amplify small differences over time:

```{r, fig.width=6}
time <- 1:65
y1 <- 100 * (1.1)^time  # son 2
y2 <- 110 * (1.1)^time  # son 1
wealth.gap <- y2 - y1

plot( time, wealth.gap, bty="n", pch=19, type="b",
      xlab="Age of Son 2", ylab="Wealth Gap: Son 1 and Son 2" )
abline( h=seq(1000,5000,1000), lty=3, col="gray" )
```

