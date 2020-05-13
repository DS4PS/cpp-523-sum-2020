b0 <- rnorm(1000,60,10)
summary( b0 )

b1 <- b0 + rnorm(1000,0,5)

b2



suburban.tfa <- 80
suburban.reg <- 80
urban.tfa <- 75
urban.reg <- 60


d1 <- rnorm(800,75.5,10)  # suburban tfa
d2 <- rnorm(1500,75,10) # suburban reg
d3 <- rnorm(1200,66,10) # urban tfa
d4 <- rnorm(500,57,10)  # urban reg

suburban <- rep( c(1,0), times=c(2300,1700) )
urban <- rep( c(0,1), times=c(2300,1700) )
tfa <- rep( c(1,0,1,0), times=c(800,1500,1200,500) )
regular <- rep( c(0,1,0,1), times=c(800,1500,1200,500) )




set.seed( 99 )

d1 <- rnorm( 400,75.5,10)  # suburban tfa
d2 <- rnorm( 700,75,10)    # suburban reg
d3 <- rnorm( 600,66,10)    # urban tfa
d4 <- rnorm( 300,57,10)    # urban reg


d1[ d1 > 100 ] <- mean(d1)
d2[ d2 > 100 ] <- mean(d2)
d3[ d3 > 100 ] <- mean(d3)
d4[ d4 > 100 ] <- mean(d4)

summary( c(d1,d3) )
summary( c(d2,d4) )

d <- c(d1,d2,d3,d4)

summary(d)

hist( d )



# library( scales )
# y <- rescale( d, to=c(30,100) )


suburban <- rep( c(1,0), times=c(1100,900) )
urban <- rep( c(0,1), times=c(1100,900) )
tfa <- rep( c(1,0,1,0), times=c(400,700,600,300) )
regular <- rep( c(0,1,0,1), times=c(400,700,600,300) )

suburban.tfa <- suburban*tfa
urban.tfa <- urban*tfa
suburban.reg <- suburban*regular
urban.reg <- urban*regular 

percentile <- d

m1 <- lm( percentile ~ suburban.reg + suburban.tfa + urban.reg + urban.tfa - 1 )
summary( m1 )


m2 <- lm( percentile ~ tfa )
summary( m2 )

m3 <- lm( percentile ~ suburban )
summary( m3 )


m4 <- lm( percentile ~ suburban + tfa )
summary( m4 )


d1 <- rnorm( 400,75.5,10)  # suburban tfa
d2 <- rnorm( 700,75,10)    # suburban reg
d3 <- rnorm( 600,66,10)    # urban tfa
d4 <- rnorm( 300,57,10)    # urban reg


y <- rep( c(75,75,66,57), c(4,7,6,3) ) 

suburban <- rep( c(1,0), times=c(11,9) )
urban <- rep( c(0,1), times=c(11,9) )
tfa <- rep( c(1,0,1,0), times=c(4,7,6,3) )
regular <- rep( c(0,1,0,1), times=c(4,7,6,3) )
suburban.tfa <- suburban*tfa
urban.tfa <- urban*tfa
suburban.reg <- suburban*regular
urban.reg <- urban*regular 

dat <- data.frame( y, d.sub=suburban, d.urb=urban, d.tfa=tfa, d.reg=regular,
                   d.sub.tfa=suburban.tfa, d.sub.reg=suburban.reg, 
                   d.urb.tfa=urban.tfa, d.urb.reg=urban.reg )

dat



#################################

dat <- data.frame( y, d.sub=suburban, d.urb=urban, d.tfa=tfa, d.reg=regular,
                   d.sub.tfa=suburban.tfa, d.sub.reg=suburban.reg, 
                   d.urb.tfa=urban.tfa, d.urb.reg=urban.reg )




