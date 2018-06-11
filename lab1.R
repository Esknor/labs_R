1

> data_name <- "No honey no honey"
> data_name
[1] "No honey no honey"

> numeric_num <- 42
> numeric_num
[1] 42

> integer_nobody <- 8L
> integer_nobody
[1] 8

> complex_num <- 3i+5
> complex_num
[1] 5+3i

> isBool <- TRUE
> isBool
[1] TRUE

2

> sequence <- 5:75
> print(sequence)
 [1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29
[26] 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
[51] 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75

> some_nums <- c(3.14, 2.71, 0, 13)
> print(some_nums)
[1]  3.14  2.71  0.00 13.00

> boleans_vec <- vector(mode = "logical", length = 100)
> boleans_vec
  [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [13] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [25] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [37] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [49] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [61] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [73] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [85] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [97] FALSE FALSE FALSE FALSE

3

> create_matrix = matrix( 
+ c(0.5, 1.3, 3.5, 3.9, 131, 2.8, 0, 2.2, 4.6, 2, 7, 5.1),
+ nrow=3,
+ ncol=4,
+ byrow=TRUE)
> create_matrix
      [,1] [,2] [,3] [,4]
[1,]   0.5  1.3  3.5  3.9
[2,] 131.0  2.8  0.0  2.2
[3,]   4.6  2.0  7.0  5.1

> A1 <- c(0.5, 1.3, 3.5, 3.9)
> A2 <- c(131, 2.8, 0, 2.2)
> A3 <- c(4.6, 2, 7, 5.1)
> rbind(A1, A2, A3)
    [,1] [,2] [,3] [,4]
A1   0.5  1.3  3.5  3.9
A2 131.0  2.8  0.0  2.2
A3   4.6  2.0  7.0  5.1

4

> global_list = list("a", 1.2, 5L, TRUE, c(1, 5))
> global_list
[[1]]
[1] "a"

[[2]]
[1] 1.2

[[3]]
[1] 5

[[4]]
[1] TRUE

[[5]]
[1] 1 5

5

> factors <- factor( c("adult", "baby", "baby", "child"),
+ levels=c("baby", "child", "adult")
+ )
> factors
[1] adult baby  baby  child
Levels: baby child adult

6

> find_na <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
> which(is.na(find_na))[1]
[1] 5

> sum(is.na(find_na))
[1] 3


7

> d_frame <- data.frame(abc = 1:4, xyz = c("one", "two", "three", "four"))
> d_frame
  abc   xyz
1   1   one
2   2   two
3   3 three
4   4  four

> colnames(d_frame) <- c("numbers", "names")
> d_frame
  numbers names
1       1   one
2       2   two
3       3 three
4       4  four




