context( 'Class usage')
set.seed(1)
dat = matrix(round(rnorm(10000,mean = 1, sd = 1)),ncol=100)
colnames(dat) <- paste('cell', 1:100)
rownames(dat) <- paste( 'gene', 1:100)
x <- new('scell', data=dat)

exp = 'scell'
attr(exp, 'package') = "MyFirstPackage"
#message(class( x ))
expect_equal( class( x ), exp )

