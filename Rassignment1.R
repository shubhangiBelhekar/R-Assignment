#{1].Try to write a code for printing sequence of numbers from 1 to 50 with the differences of 3, 5, 10 
a <- seq(1,50)

#[2]. What are the different data objects in R? and write syntax and example for each and every object
#R consists of a number of data objects to perform various functions
# Six type of data objects
#1.vectors
#2.list
#3.matrix
#4.array
#5.factors
#6.data frame

#(1)Vectors:-Vectors are one of the basic R programming data objects. 
   #six types of atomic vectors 
      #1.logical
      #2.integer 
      #3.character 
      #4.raw
      #5.double
      #6.complex
#(2)Lists:-Lists are data objects of R.
   #Types of elements
      #1.strings
      #2.numbers
      #3.vectors
      #4.nested list
#(3)Matrix:- Matrices used to arrange elements in the two-dimensional layout. 
              #They contain elements of the same data type. 
              #They contain numeric values in order to perform mathematical operations.
#(4)Array:- array is used to store data in more than just 2 dimensions. 
             #It is used to store multidimensional data in the required format. 
             #array created with the help of an array() function.
#(5)Factors:-factors are used in order to categorize and store data as levels. 
            #They can be strings or integers.
            # factors created using factor() function.
#(6)Data frame:-data frame is a two-dimensional data structure.
               #Each column consists of the value of one variable and each row consists of a value set from each column.


#[3]. Create Data frame with 3 columns and 5 rows and write a code to fetch and delete row and a column using index and add new column and row to the existed data frame

df <- data.frame(name=c('Jonny','Rocky','Rita','Tom','Sunny'),age=c(23,25,23,21,22),sub=c('SQL','PHP','HTML','PYTHON','PANDAS'))
df
df1 <- df[-3,-2]
df2 <- df[,-2]
df2
x <- c(89,98,70,67,97)
df['marks']=x
 
 #(4).Write nested if else statements to print whether the given number is negative, positive or Zero 
x <- 0
if (x == 0)  {
  print('Zero')
   } else if (x > 0)  {
  print('Positive number')
  } else print('Negative Number')

#(5).write a program to input any value and check whether it is character, numeric or special character
x <- '@'
if(x>='a' && x<='z'){
  print('charater')
}else if(x>='0' && x<='9'){
  print('numeric')
  }else print('special character')

#(6).write difference between break and next also write examples for both 
#Break statement:-
      # A break statement is used inside a loop to stop the iterations and flow the control outside of the loop.
      #break statement used inside  that loop repeat, for, while. 
      #The break statement can also be used inside the else branch of if...else statement.
#Example:
x <-1:7
for (value in x) {
  if (value == 5){
    break
  }
  print(value)
}
#Next statement:-
        #A next statement is useful when we want to skip the current iteration of a loop without terminating it. 
        #On encountering next, the R parser skips further evaluation and starts next iteration of the loop.

x <- 1:8
for (value in x){
   if(value==5){
     next
   }
  print(value)
}


#(7).write a program to print a given vector in reverse format  
  x= c(1,5.6,3,10,3.5,5)
x <- c(1,5,6,3,10,3,5,5)
r <- rev(x)
r
 
#(8).write a program to get the mode value of the given vector 
    #('a','b','c','t','a','c','r','a','c','t','z','r','v','t','u','e','t')

x <- c('a','b','c','t','a','c','r','a','c','t','z','r','v','t','u','e','t')
m <- table(x)
m
y <- names(table(x))[table(x)==max(table(x))]
y
   #OR
z <- names(m)[m==max(m)]
z

#(9).Write a function to filter only data belongs to 'setosa' in species of Iris data set.( using dplyr package) 

iris <- read.csv('C:/Users/Satish1/Desktop/SQL/iris.csv')
iris
View(iris)
install.packages('dplyr')
library(dplyr)
filter(iris, Species=='setosa')


#(10).Create a new column for iris data set with the name of Means_of_obs, which contains mean value of each row.( using dplyr package)
Mean_of_obs <- mean(iris$Sepal.Length)
df <- cbind(iris,Mean_of_obs)
head(df)

#(11).Filter data for the "versicolor" and get only 'sepel_length' and Sepel _width' columns.( using dplyr package)

select=select(iris,Sepal.Length,Sepal.Width,Species)
select
fe <- filter(select(iris,Sepal.Length,Sepal.Width,Species),Species=='versicolor')
head(fe)

#(12).create below plots for the mtcars also write your inferences for each and every plot (use ggplot package) Use Different ( Size , Colour )

install.packages('ggplot2')
library('ggplot2')

install.packages("GGally")
library(GGally)
   
data(mtcars)
View(mtcars)

   #scatter plot
ggplot(mtcars, aes(x=disp,y=hp))+geom_point()
ggplot(mtcars, aes(x=disp,y=hp))+geom_point(size=3,color="blue")

   
   #box plot
boxplot(mtcars$disp,col='brown',border='blue',horizontal = TRUE,notch = TRUE)

   #histogram
hist(mtcars$disp,col='gray',border='red')

   #line graph
plot(mtcars$disp,type='o',col='black')

   #bar graph
barplot(mtcars$disp,col='brown',border = 'blue')




