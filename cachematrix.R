## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
#This function creates a special "matrix" object that can cache its inverse
  inv <-NULL  #initialize inv as a null value,it will store the inverse values of the
  #matrix
  set <- function(y) {  ##define the set function to assign new 
    x <<- y
    inv <<- NULL

}
get <- function() x 
  setinverse <- function(inverse) inv <<- inverse #assigns value of inv in parent 
  #environment
  getinverse <- function() inv
  list(set = set,get = get,setinverse = setinverse,getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
if(!is.null(inv)) {
  message("getting cached data")
  return(inv)
}
data <- x$get()
inv <- solve(data,...)
x$setinverse(inv)
inv
}
