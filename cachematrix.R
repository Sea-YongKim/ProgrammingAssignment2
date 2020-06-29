## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { # define the argument with default 
      inv <- NULL                           #initialize inv as NULL 
      set <- function(y) {         # define the set function  
            x <<- y                         
            inv <<- NULL                    # if there is a new matrxi, reset inv to NULL 
      }
      get <- function() x                   #defince the get function 
      setinverse <- function(inverse) {inv <<- inverse}
      getinverse <- function() {inv}                    
      list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) { inv <- x$getinverse()
if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
}
data <- x$get()
inv <- solve(data, ...)
x$setinverse(inv)
inv
        ## Return a matrix that is the inverse of 'x'
}
