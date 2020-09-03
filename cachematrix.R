## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  ainv <- NULL
  
  set <- function(newMatrix)
  {
    x  <<-  newMatrix
    ainv <<- NULL
  }
  
  get <- function() x
  setInv <- function(inv) ainv <<- inv
  getInv <- function() ainv
  
  list (set=set,get=get,setInv=setInv,getInv=getInv)
  
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  if (is.null(x$getInv()))
  {
    message("calculating Inverse  ::")
    inv <- solve(x$get(),...)
    x$setInv(inv)
  }
  else
    message("Getting Inv from cache:")
  x$getInv()
  
}
