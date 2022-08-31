#################################################################
#Class 2 R walk through
# Descriptive Stats and data plots
# Introduction to libraries 
# 
# 0. data types 
# 1. Summarize Data- mean , median mode
# 2. Outliers 
# 3. SD, Varaiance, Covaraince(MAtrix)
# 4. Skew + Distrubtions
# 5. customize R if time permits
#################################################################

#library
  library(ggplot2)
  library(moments)
#data
  data("iris") #built in data





#################################################################
#0. What are the data types
#   1. varaible: int, string, function
#   2. data frame
#   3. matrix
#   4. vector
#   5. Null, NA, TRUE/FALSE
#   6. List
#################################################################
  
############################################
  #0.1 int, string, func
###########################################
    #string
      name <- "John"
    #int
      age <- 40
    #numeric/flot
      num = 4.4
    #function
      # Create a function to print squares of numbers in sequence.
      new.function <- function(a) {
        for(i in 1:a) {
          b <- i^2
          print(b)
        }
      }
      
      # Call the function new.function supplying 6 as an argument.
      new.function(6)



#################################################################
# 1. Summarize Data- mean , median, mode

#   1. mean
#   2. median
#   3. mode
    
#################################################################

  #1.1 mean
    mean(iris$Sepal.Length)
      
  #1.2 median
    median(iris$Sepal.Length) 
  
  #1.3 mode
    mode(iris$Sepal.Length)
      
#################################################################
# 2. Outliars
    
#   1. math
#   2. graph

#################################################################    
    
    #2.1 math
        summary(iris)
        summary(iris$Sepal.Length)
    
    #2.2 graph
        boxplot(Sepal.Length~Species,data=iris, main="Iris Data", 
                xlab="Species", ylab="Length")
        
        
 
#################################################################
#   3. SD, Varaiance, Covaraince(MAtrix)

#   1. SD
#   2. Variance
#   3. covar        

#################################################################  

  #3.1 sd
        sd(iris$Sepal.Length)
  
  #3.2 Var
        var(iris$Sepal.Length)
        
  #3.3 covar
        cov(iris$Sepal.Length,iris$Sepal.Width)
        
        #matrix
        cov(iris) # not only numerics
        
        #solution 1 bad
        iris_numeric_full <- sapply( iris, as.numeric )
        cov(iris) 
        
        #solution 2 good
        iris_numeric = subset(iris, select = -c(Species))
        cov(iris_numeric) 

        

#################################################################
#   4. Skew + Distrubtions

#   1. libraries
#   2. Graph
#   3. Math

#################################################################  

        #4.1. packages ## call at first and dont leave installs in code
          install.packages("ggplot2")
          library(ggplot2)
          
        #4.2 density plot
        # Histogram overlaid with kernel density curve
        ggplot(iris, aes(x=Sepal.Length)) + 
          geom_histogram(aes(y=..density..),      # Histogram with density instead of count on y-axis
                         binwidth=.5,
                         colour="black", fill="white") +
          geom_density(alpha=.2, fill="#FF6666")  # Overlay with transparent density plot
        
        
        #4.3 math- kurtosis coefficient
  
          #calculate skewness
           skewness(iris$Sepal.Length)
          
          #calculate kurtosis
           kurtosis(iris$Sepal.Length)
          
          
        
        
        
        