# 1. Create the matrices
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

# 2. Inspect dimensions
dim(A) # should be 10 x 10 
dim(B) # 10 x 100 - not square

# 3. Compute inverse and determinant
# for A
invA <- solve(A)
invA
detA <- det(A)
detA

# for B, use tryCatch to capture errors
invB <- tryCatch(solve(B), error = function(e) e)
invB
detB <- tryCatch(det(B), error = function(e) e)
detB
