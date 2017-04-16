## This file contains mackeCacheMatrix and cacheSolve Functions
## According witht Data Science WEEK 3 of R Programing course
##
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cache.
##

#' en: This function creates a matrix that can caches its inverse
#' Pt: Essa função cria uma matrix que consegue pré-calcular ( cache) o seu inverso
#' @param x A matrix
#' 
#' @return a list of four functions
#'     
makeCacheMatrix <- function(x = matrix()) {
  m1 <- NULL
  set <- function(value) {
    x <<- value
    m <<- NULL 
  }
  
  get <- function() x
  setInv <- function(inverse) m <<- inverse
  getInv <- function() m1
  
  list(set = set, get = get, setInv = setInv, getInv = getInv)
}


#' Returns a Matrix X inversed
#' 
#' 
#' @param x a matrix created with makeCacheMatrix function
#' 
#' @return new_x, where new_x is defined as the inverse of X.
#' 
cacheSolve <- function(mtx) {
  m <- mtx$getInv() 
  if(!is.null(m)) { 
    message("retrieving cached data from object")
    return(m)
  }
  # Case Empty: Calculating and creating cache values
  data <- x$get()  
  m <- solve(data) 
  mtxx$setInv(m)  
  m            
}