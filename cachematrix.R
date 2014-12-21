## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
   #input:matrix
    #output: vector with x as matrix, inv as the cached
    #  inverse of the matrix
    inv<-NULL
    set <- function(y){
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) inv <<- inverse 
    getInverse <- function () inv
    list(set = set, get = get,
        setInverse = setInverse,
        getInverse= getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        i <- x$getInverse()
	    if(!is.null(i)){
	        message("getting cached data")
	        return(i)
	    }
	    data <- x$get()
	    i <- solve(data)
	    x$setInverse(i)
	    i
}
