## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
invs <- NULL
set <- function(y){
	x<<-y
	inverse<<-NULL }
	get <- function()x
	setinv <- function(inverse)invs<<-inverse
	getinv <- function(){invs}
	list(set = set, get = get , setinv = setinv, getinv= getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	m <- x$getinv()
	if(!is.null(m)){
		message("getting cached data")
		return(m) }
		matrix <- x$get()
		invs <- solve(matrix,...)
		x$setinv(invs)
		invs
       }
