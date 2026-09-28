# 1. Matrix Addition & Subtraction 
A <- matrix(c(2,0,1,3), ncol = 2)
B <- matrix(c(5,2,4,-1), ncol = 2)

A + B 
A - B

# 2. Create a Diagonal Matrix
D <- diag(c(4,1,2,3))
D

# 3. Construct a Custom 5 x 5 Matrix
E <- diag(c(3,3,3,3,3))
E[,1] <- c(3,2,2,2,2)
E[1,] <- c(3,1,1,1,1)


C <- matrix(0, nrow = 5, ncol = 5)
diag(C) <- 3
C[,1] <- c(3,2,2,2,2)
C[1, 2:5] <- 1
C
