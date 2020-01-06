h8 <- hilbert(8)
h8_cache <- hilbert(8)
h8_cache <- makeCacheMatrix(h8)

# first run
cacheSolve(h8_cache)

# check cache
cacheSolve(h8_cache)
