## Put comments here that give an overall description of what your
## functions do

## to create the inverse of a matrix (matrix should be inversible)

makeCacheMatrix <- function(x = matrix()) {
invs <- NULL
set <- function(y){
	x<<-y
	inverse<<-NULL }            #set inverse as NULL
	get <- function()x            #get matrix x
	setinv <- function(inverse)invs<<-inverse
	getinv <- function(){invs}         #to get inverse of this matrix
	list(set = set, get = get , setinv = setinv, getinv= getinv)
}


## to retrieve the cache data 


cacheSolve <- function(x, ...) {
	m <- x$getinv()
	if(!is.null(m)){      #to see if inverse is null 
		message("getting cached data")
		return(m) }
		matrix <- x$get()
		invs <- solve(matrix,...)           # to get the inverse value, if matrix is inversible
		x$setinv(invs)
		invs
       }
