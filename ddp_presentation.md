Shiny application - Exploring Iris Data Set
========================================================

author: romkhot


See https://romkhot.shinyapps.io/Developing-Data-Products


About the Iris Dataset
========================================================

The iris dataset has been used for classification in many research publications. It consists of 50
samples from each of three classes of iris owers [Frank and Asuncion, 2010]. One class is linearly
separable from the other two, while the latter are not linearly separable from each other. There
are 5 attributes in the dataset:
* sepal length in cm,
*  sepal width in cm,
*  petal length in cm,
*  petal width in cm, and
*  class: Iris Setosa, Iris Versicolour, and Iris Virginica.


Iris Dataset - Quick summary
========================================================

```r
head(iris)
```

```
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
```


```r
summary(iris)
```

```
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
 Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  
 1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  
 Median :5.800   Median :3.000   Median :4.350   Median :1.300  
 Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  
 3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  
 Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  
       Species  
 setosa    :50  
 versicolor:50  
 virginica :50  
                
                
                
```

Iris Dataset - Scatter Plot
========================================================

![plot of chunk unnamed-chunk-3](ddp_presentation-figure/unnamed-chunk-3-1.png) 

Iris Dataset - Histogram for the versicolor
===========================================================

![plot of chunk unnamed-chunk-4](ddp_presentation-figure/unnamed-chunk-4-1.png) 

