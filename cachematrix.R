## Put comments here that give an overall description of what your
## functions do

## This function creates an enhanced matrix that contains
## functions for storing and retrieving the inverse of the matrix

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

## This function uses the enhanced cache matrix to return the inverse

## If the inverse has already been calculated then it simply looks up and returns

##Otherwise, the inverse is calculated and stored in the cacheMatrix and then returned.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)) {
        message("getting cached inverse of matrix")
        return(inv)
        }
        inv <- solve(x$getmatrix(), ...)
        x$setinverse(inv)
        inv
}
