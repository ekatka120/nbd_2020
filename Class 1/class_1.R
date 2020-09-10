
# Data types and structures -------------------------------------------------

## Integer

5L

## Double

2.32
# 2,32 # comma does not mean real numbers

## Logical

T
FALSE

## Character

'Hello '
"Goodbye"
"Hi, 'bye'" # On using two types

## Missing values

NA

## Vectors with several elements

#1, 2, 3

c(1, 2, 3, 4) * c(1, 2)
'1, 2, 3' * 2

### Attributes

class(1.0)

typeof(5L)
typeof(5.0)
typeof(T)

### Implicit coercion

c(1L, 2.0)
typeof(c(1L, 2.0))
c(TRUE, 1L)
typeof(c(TRUE, 1L))
c(T, 1.0, "2")
typeof(c(TRUE, 1.0, "2"))

### Explicit coercion

as.logical(c(-1, 0, 1, 0, -1000))
as.integer(c(2.5, 2.4, 0.21))
as.double('test')
as.character()

# Matrices ----------------------------------------------------------------

matrix(c(1, 2, 3, 4), nrow = 2)
matrix(c(1, 2, 3, 4), nrow = 2, byrow = TRUE)
matrix(1, 2, 3, 4)
?matrix()


matrix(c('a','b', 'c', 'd'), nrow = 2)
matrix(c('a','b', 'c', 'd'), nrow = 2, byrow = 'T')

dim(matrix(c('a', 'b', 'c'), ncol=3))
matrix(c('a', 'b', 'c'), byrow = T)
matrix(c('a', 'b', 'c'), ncol=3)

# Factors -----------------------------------------------------------------

factor(c(1, 2, 1, 2, 1),
       levels = c(1, 2),
       labels = c('Мужчина', 'Женщина'))

# Lists -------------------------------------------------------------------

list(
  T, 
  c(1, 2, 3),
  NA
)

list(
  T,
  list(
    c(1, 2, 3),
    list(
      T, F, c(1, 2)
    )
  )
)

c(
  list(c(1, 2, 3)),
  list(c(4, 5, 6))
)

str(c(
  list(c(1, 2, 3)),
  list(c(4, 5, 6))
)
)

str(list(
  list(c(1, 2, 3)),
  list(c(4, 5, 6))
))

str(list(
  list(list(1, 2, 3)),
  list(list(4, 5, 6))
))

# Data frames -------------------------------------------------------------

data.frame(
  column_1 = c(1, 2, 3),
  column_2 = c(1, 2, 3),
  column_3 = c('word 1', 'word 2', 'word 3')
)