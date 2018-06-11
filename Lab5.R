specdata = "/home/vladimir/bash/labs_R/my_dyrectory/specdata"
pmean <- function(directory, pollutant, id=1:332)
 {
   file_names = paste0(directory, "/", id, ".csv")

   ## first, create empty vector
   pollutant_data = c()

   for(csv_file in file_names)
   {
     ## read only needed part of csv file and add it to existing vector
     pollutant_data = c(pollutant_data, c(read.csv(csv_file)[, pollutant]))
   }

   return(mean(pollutant_data, na.rm = TRUE))
 }




  complete <- function(directory, id = 1:332)
 {
   file_names = paste0(directory, "/", id, ".csv")

   nobs = c()

   for(csv_file in file_names)
   {
     ## read from csv and append completely observed cases to vector
     nobs = c(pollutant_data, sum(complete.cases(read.csv(csv_file))))
   }

   ## form two columns
   return(data.frame(id, nobs))
 }



 corr <- function(directory, threshold = 0)
 {
   completeMonitors = complete(directory)
   ## read only useful - where there are more than ${threshold} nobs
   id_complete = subset(completeMonitors, nobs > threshold)$id

   result = numeric()

   file_complete = paste0(directory, "/", id_complete, ".csv")
   for (csv_file in file_complete)
   {
     csv = read.csv(csv_file)
     completeData = csv[complete.cases(csv),]
     result = c(result, cor(completeData$sulfate, completeData$nitrate))
   }

   return(result)
 }
#1

> pmean(specdata, "sulfate", 1:10)
[1] 4.064128
> pmean(specdata, "sulfate", 55)
[1] 3.587319
> pmean(specdata, "nitrate")
[1] 1.702932


#2
> complete(specdata, 1)
id nobs
1  1  117
> complete(specdata, c(2, 4, 8, 10, 12))
  id nobs
1  2 1041
2  4  474
3  8  192
4 10  148
5 12   96
> complete(specdata, 50:60)
   id nobs
1  50  459
2  51  193
3  52  812
4  53  342
5  54  219
6  55  372
7  56  642
8  57  452
9  58  391
10 59  445
11 60  448
#3
> cr <- corr(specdata, 150)
> head(cr); summary(cr)
[1] -0.01895754 -0.14051254 -0.04389737 -0.06815956 -0.12350667 -0.07588814



