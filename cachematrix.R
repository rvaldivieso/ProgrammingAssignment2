## This function computes the inverse of a matrix 
## First, creates a matrix in cache

## this function builds a special matrix cache

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
	set <- function(y) {
		x <<- y
		i <<- NULL
		}
		get <- function() x
		setImatrix <- function(inverse) i <<- inverse
		getImatrix <- function() i
		list(set = set, get = get,
		setImatrix = setImatrix,
		getImatrix = getImatrix)

}


## This function computes the inverse of the special matrix obtained above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getImatrix()
	if(!is.null(i)) {
		message("getting cached data")
		return(i)
		}
		matrix <- x$get()
		i <- solve(matrix, ...)
		x$setImatrix(i)
		i
        
}
