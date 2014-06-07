#This File Contain a function that would repruduce data processing if the data is not been already processed

GetMyDataEPC <- function()
{
	if(NROW(objects(pattern='EPCData')) > 0) 
	{	
		print("The Data is Available")
		return(EPCData)
	}
	else
	{
		#Set The working directory first

		download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",method="curl")
		
		unzip('exdata_data_household_power_consumption.zip',exdir=getwd())
		file <- paste(getwd(),"household_power_consumption.txt",sep='/')

		#file <- paste(getwd(),'exdata_data_household_power_consumption.zip',sep='/')
		#install.packages('sqldf')
		#path <- 'F:/Courses/Data Science/Exploratory Analysis/Project 1/exdata_data_household_power_consumption'	
		
		library(sqldf)
		EPCData <- read.csv.sql(file, sql = "select * from file where (Date = '1/2/2007' OR Date = '2/2/2007')",sep=';')
		EPCData$DateTime <- strptime(paste(EPCData$Date,EPCData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

		return(EPCData)
	}
}