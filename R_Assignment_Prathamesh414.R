# 1.Try to write a code for printing sequence of numbers from 1 to 50 with the differences of 3, 5, 10
seq_with_diff_3 <- seq(1,50,3)
seq_with_diff_3

seq_with_diff_5 <- seq(1,50,5)
seq_with_diff_5

seq_with_diff_10 <- seq(1,50,10)
seq_with_diff_10

# 2. What are the different data objects in R? and write syntax and example for each and every object
# Vector
# syntax a <- c(data1, data2, data3, etc)
#1 Logical Vector Example
a <- c(TRUE, FALSE, TRUE, FALSE)
a

#2 Numeric Vector Example
b <- c(1, 2, 3, 4)
b

#3 Integer Vector Example
c <- c(2L, 4L, 8L)
c

#4 Complex Vector Example
d <- 5+9i
d

#5 Character Vector Example
e <- c("I", "am", "doing", "assignments")
e

#List Example
f <- list(23, 45.678, c(3, 6, 0), "Hi")
f

#Matrix Example
g <- matrix(c(5,15,25), nrow = 3, ncol = 2, byrow = FALSE, dimnames = list(c('r1', 'r2', 'r3'), c('c1', 'c2')))
g

#Array Example
h <- array(c('Hornet', 'Gixer', 'FZ'), dim = c(2, 5, 4))
h

#Factor Example
i <- c('Honda', 'Hyundai', 'Honda', 'Yamaha', 'Toyota', 'Honda', 'Yamaha')
factor_i <- factor (i)
factor_i

#Data Frame Example
j <- data.frame(Animal_Name = c('Tiger', 'Dog', 'Cat'), Animal_Type = c('Wild', 'Pet', 'Pet'), Age = c(14, 12, 11))
j

#3. Create Data frame with 3 columns and 5 rows and write a code to fetch and delete row and a column using index and add new column and row to the existed data frame
df1 <- data.frame(Animal_Name = c('Tiger', 'Dog', 'Cat', 'Lion', 'Horse'), Animal_Type = c('Wild', 'Pet', 'Pet', 'Wild', 'Pet'), Age = c(14, 12, 11, 15, 13))
df1

#To fetch data using indexing
df1 [1:3]

#To delete row & column using indexing
df2 <- df1[-c(2)] # this will delete 2nd column
df2

df1
df3 <- df1[-c(1), -c(1)] #this will delete 1st row and 1st column
df3

#Add new column & new row
df1
l <- c('Sheep', 'Pet', 8)
df3 <- rbind(df1, l) #this will add new row to existing data frame
df3

Population <- c(5000, 20000, 22000, 4000, 10000, 25000)
df4 <- cbind(df3, Population) # this will add new column to existing data frame
df4

#4.Write nested if else statements to print whether the given number is negative, positive or Zero
m <- -9
if (m == 0) {
  print("Zero")
} else if (m > 0) {
  print("Positive number")
} else print("Negative Number")

#5.write a program to input any value and check whether it is character, numeric or special character
n <- c(7)
Result <- c(is.character(n), is.numeric(n))
Result

#6.write difference between break and next also write examples for both 
#Next Statement will skip the current iteration of a loop without terminating the loop.
#Break Statement terminates the loop statement and transfers execution to the statement immediately following the loop.

#Example of Next Statement
o <- c('Raj', 'Ram', 'Ash', 'Mark', 'Panta')
for(p in o) {
  if (p == 'Ash') {
    next
  }
  print(p)
}

#Example for Break Statement
q <- c("Namaskar")
cnt <- 1

repeat {
  print(q)
  cnt <- cnt + 1
  
  if(cnt > 4) {
    break
  }
}

#7.write a program to print a given vector in reverse format  
r <-  c(1,5.6,3,10,3.5,5)
Reverse <- rev(r)
Reverse

#8.write a program to get the mode value of the given vector ('a','b','c','t','a','c','r','a','c','t','z','r','v','t','u','e','t')
s <- c('a', 'b', 'c', 't', 'a', 'c', 'r', 'a', 'c', 't', 'z', 'r', 'v', 't', 'u', 'e', 't')
library(modeest)
mlv (s, method = "mfv")

#9.Write a function to filter only data belongs to 'setosa' in species of Iris dataset.( using dplyr package) 
data("iris")
View(iris)
library(dplyr)
filter(iris, Species == 'setosa')

#10.Create a new column for iris dataset with the name of Means_of_obs, which contains mean value of each row.( using dplyr package)
data("iris")
View(iris)
library(dplyr)
df5 <- iris[-c(5)] #first we delete species column because it is  non numeric column
df5
df6 <- mutate(iris, Means_of_obs = rowMeans(df5)) #to create new column using dplyr we use mutate and to calculate mean of each row we use rowMeans
df6

#11.Filter data for the "versicolor" and get only 'sepel_length' and Sepel _width' columns.( using dplyr package)
data("iris")
View(iris)
library(dplyr)
t <- filter(iris, Species == 'versicolor') #first we filter iris dataset and stored it in t variable
t
u <- t[-c(3:5)] #delete the columns which we dont want in new filtered dataset
u

#12.create below plots for the mtcars also write your inferences for each and every plot (use ggplot package) Use Different ( Size , Colour )
#scatter plot, boxplot, histogram, line graph, bar graph
data("mtcars")
View(mtcars)
install.packages("ggplot2")
library(ggplot2)

#Histogram
x1 <- ggplot(data = mtcars, aes(x = mpg, col = cyl)) + geom_histogram(binwidth = 5, col = "black", fill = "red")
x1
x2 <- x1 + labs (title = "Histogram", x = "Miles Per Gallon")
x2

#Scatter Plot
x3 <- ggplot(data = mtcars, aes(x = mpg, y = hp, col = factor(cyl), size = factor(gear))) + geom_point() + labs (size = "gear", col = "blue")
x3
x4 <- x3 + labs (title = "Scatter Plot", x = "Miles Per Gallon", y = "Horse Power")
x4

#Box Plot
x5 <- ggplot(data = mtcars, aes(x = mpg, y = hp, fill = cyl)) + geom_boxplot(col = "black", fill = "yellow")
x5
x6 <- x5 + labs (title = "Box Plot", x = "Miles Per Gallon", y = "Horse Power")
x6

#Line Graph
x7 <- ggplot(data = mtcars, aes(x = mpg, y = hp, fill = cyl)) + geom_smooth(col = "green")
x7
x8 <- x7 + labs (title = "Line Graph", x = "Miles Per Gallon", y = "Horse Power")
x8

#Bar Graph
x9 <- ggplot(data = mtcars, aes(x = mpg, fill = cyl)) + geom_bar(col = "brown")
x9
x10 <- x9 + labs (title = "Line Graph", x = "Miles Per Gallon")
x10
