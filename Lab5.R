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


## 2

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


## 3

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

pmean(specdata, "sulfate", 1:10)
#2
complete(specdata, 1)
complete(specdata, c(2, 4, 8, 10, 12))
complete(specdata, 50:60)
#3
cr <- corr(specdata, 150)
head(cr); summary(cr)


