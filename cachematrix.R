## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Similar to the given 'Make Vector' function but for matrices, the function
## sets and gets the value of the mean and the inverse of the matrix. 
makeCacheMatrix <- function(x = matrix()) {
                m <- NULL
                set <- function(y) {
                        x <<- y
                        m <<- NULL
                }
                get <- function() x
                setinverse <- function(mean) m <<- mean
                getinverse <- function() m
                list(set = set, get = get,
                     setinverse = setinverse,
                     getinverse = getinverse)
}


## Write a short comment describing this function
## Returns the inverse of matrix X 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}        cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached inverse matrix, getting matrix")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}

