makeCacheMatrix <- function(x = matrix())  {
  n <- NULL
  
  get <- function() x
  p <- function(inverse) {
    n <<- inverse
  }
  q <- function() n
  list(set = set, get = get, p =p, q= q)
}

cacheSolve <- function(x, ...) {
  n <- x$q()
  if(!is.null(m)) {
    print("data is bieng ca c hed")
    
    n
    
  }
  
  data <- x$get()
  
  n <- solve(data)
  x$p(n)
  
  n
}
