
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## creating matrix object to cache its inverse 
makeCacheMatrix <- function(x = matrix()) {             
i <- NULL                   ##initialize inverse as i 
  set <- function(y) {
          x <<- y           ##setting the matrix
          i <<- NULL
  }
  get <- function() x       ##getting the matrix
  setinverse <- function(inverse) i <<- inverse     ##set inverse of matrix
  getinverse <- function() i                        ##get inverse of matrix and return matrix i   
  list(set = set, get = get,
       setinverse = setinverse,              ##return list of methods
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		i <- x$getinverse()
  if (!is.null(i)) {                          ##return the inverse if it exists already
          message("getting cached data")
          return(i)
  }
  data <- x$get()                ##get the matrix from object
  i <- solve(data, ...)
  x$setinverse(i)                ##set the inverse to the object
  i                               ##return the matrix i 
}
