## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	im <- NULL
	
	# set the matrix function
	set <- function(mtrix) {
		m <<- mtrix
		im <<- NULL
	}
	
	# function that return the matrix
	get <- function() m
	
	# function that set the inverse matrix 
	setInverse <- function(inverseMatrix) im <<- inverseMatrix
	
	# function that retrieve the inverse matrix
	getInverse <- function() im
	
	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
	im <- x$getInverse()
	
	# if is not null, return the data
	if(!is.null(im)) {
		message("getting cached inverse matrix")
		return(im)
	}
	
	om <- x$get()
	im <- solve(om)
	
	x$setInverse(im)
	
	im
}
