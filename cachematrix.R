## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  i <- NULL

  # sets the matrix
  set <- function(some_matrix) {
    x <<- matrix
    i <<-NULL
  }
  
  # returns the matrix
  get <- function() {
    x
  }
  
  # sets inverse
  setinverse <- function(inverse_matix) {
    i <<- inverse_matrix
  }
  
  # returns inverse
  getinverse <- function(){
    i
  }
  
  # list of all the functions 
  list(set = set, get = get, setinverse, getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m <- x$getinverse()
  
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  
  #Matrix from object x
  data <- x$get()
  
  # Calculating inverse
  m <- solve(data) %*% data
  
  # Set the inverse
  x$setInverse(m)
  
  ## Return the matrix
  m
}
  

