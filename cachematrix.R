## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        setmatrix <- function(y) {
        x <<- y
        inv <<- NULL
        }
        getmatrix <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(setmatrix = setmatrix, getmatrix = getmatrix,
        setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
