## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ## Created a metriz object 
        inv <- NULL                                         # initialize with NULL vector
        setMatrix <- function(m) {                          # Created a new function for setting matrix
        x <<- m
        inv <<- NULL
    }
        getMatrix <- function() x                           # Created a new function to access the matrix
        setInverse <- function(inverse) inv <<- inverse     # Created a function for inverse
        getInverse <- function() inv                        # Created a function for getting inverse
        
        list(set = setMatrix, get = getMatrix,              # Created and return a list containing all function before made
         setinverse = setInverse, 
         getinverse = getInverse)               
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()           # Save the cached value of inverse 
        
        if(!is.null(inv)) {         # checks if the the matrix has not null values and returns cache the inverse
        return(inv)                
    }
         data <- x$get()                 # otherwise, fetches the new/updated matrix
         inv <- solve(data, ...)         # Save the inverse of matrix fetched above in inv.
         x$setinverse(inv)               # call the caches the value of inverse computed above
         inv                             # returns the freshly computed value of inverse
}





