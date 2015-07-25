## These fucntions calcualte the inverse of a matrix and cache the value for later use if needed

## This function creates a matric, calculates, then stores the inverse of the matrix in the cache

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  set <- function(y){
  x <<- y
  m <<- NULL
}
get <- function() x
setinverse <- function(solve) m <<- solve
getinverse <- function() m
list(set = set, get = get,
   setinverse = setinverse,
   getinverse = getinverse)
}


## This function calculates the inverse of the matric created in the function above. If the inverse was already calculated it uses the cached inverse value

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix <- x$get()
    m <- solve(matrix, ...)
    x$setinverse(m)
    m
}
