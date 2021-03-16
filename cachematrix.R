

## Firstly we create function for matrix that can cash its inverse/
makeCacheMatrix <- function(x = matrix()) {
s <- NULL
set <- function(y) {
  x <<- y
  s <<- NULL
}
  get <- function() x
  settinginverse <- function(inverse) s <<- inverse
  gettinginverse <- function() s
  list(set = set,
       get = get,
       setttinginverse = settinginverse,
       getttinginverse = gettinginverse)
}

## Then we create function that makes the inverse of original
cacheSolve <- function(x, ...) {
  t <- x$getinverse()
  if (!is.null(t)) {
          message("cash")
          return(t)
  }
  data <- x$get()
  t <- solve(data, ...)
  x$setinverse(t)
  t # getting inversed matrix
}
