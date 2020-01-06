## Part of R Programming module Week 3, this is the project assignment to create a square
## matrix and its inverse. To then store this in cache and retrieve it from cache

## functions do

## Calculate the Inverse of a Square matrix

makeCacheMatrix <- function(x = matrix()) {
    im <- NULL
    set <- function(y) {
        x <<- y
        im <<- NULL
    }
    get <- function() x
    setinv <- function(invmatrix) im <<- invmatrix
    getinv <- function() im
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv
         )
}


## Use the cache to find the inverse of a Square Matrix already calculated, or calculate it

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    invmatrix <- x$getinv()
    if(!is.null(invmatrix)) {
        message("getting cached data")
        return(invmatrix)
    }
    data <- x$get()
    invmatrix <- solve(data, ...)
    x$setinv(invmatrix)
    invmatrix
}
