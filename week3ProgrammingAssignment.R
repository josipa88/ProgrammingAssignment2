makeCacheMatrix <- function(x = matrix()) {
        
        inverse <- NULL
        
        
        set <- function(value) {
                x <<- value
                inverse <<- NULL
                
        }
        
        get <- function() x
        
        setinverse <- function(inverse_matrix) {
                inverse <<- inverse_matrix
        }
        
        getinverse <- function() inverse
        
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
        
}        


cacheSolve <- function(a) {
        value <<- a$getinverse()
        
        if(!is.null(value)) {
                print("getting cached data")
                return(value)
        } else {
                data <- a$get()
                value <<- solve(data)
                a$setinverse(value)
                value
        }
}

