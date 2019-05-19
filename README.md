# ETL-Project-2
ETL Project-2


EXTRACT:
	Data Source: 
	1. Green Card and H1B (2014-2018): https://www.kaggle.com/jonamjar/green-card-h1b-20142018/activity
	2. US Permanent Visa Applications: https://www.kaggle.com/jboysen/us-perm-visas
	
	-In Green Card and H1B (2014-2018), I took data details related only to H1B from 2015 to 2018 xlsx files
	-In US Permanent Visa Applications, I took data details pertaining to year 2012-2017, which is a CSV file.
	
Transform:
	Procedure:
	1.Pandas for data sorting and data cleanup.
	- I converted xlsx files of H1B from 2015 to 2018, to CSV to read.
	- Renaming 2017 and 2018 column name to match the rest of the CSV files in H1B and joining all 3 years data files.
	- To do analysis, I chose 3 columns [CASE_STATUS(Certified, CERTIFIED-WITHDRAWN, WITHDRAWN, and DENIED), NAIC_CODE, VISA_CLASS]
	- After dropping Nan, did groupby on NAIC_CODE, taking only certiified and Denied in Case_status column.
	- After that claculated Denied percentage in decimal for each NAIC_CODE.
	- Repeated the same on US_PERM data, but here the columns chosen are[case_status((Certified, CERTIFIED-WITHDRAWN, WITHDRAWN, and DENIED), class_of_admission,
	  NAIC_CODE, naics_title]
    
LOAD:
	I used relational database mysql to load and search the final database 
	- my analysis is forming 2 tables,
	- ##Table-1
		#Finalized_H1B
        #NAIC_CODE
        #CASE_STATUS_CERTIFIED
        #CASE_STATUS_DENIED
        #PERCENTAGE_DENIED
		
	- ##Table-2
        #Finalized_US_Perm
        #NAIC_CODE
        #case_status_Certified
        #case_status_Denied
        #percentage_Denied
		
		Studying number of certified and denied cases for particular NAIC_Code(primary key)
		
		NAIC_CODE- What is a NAICS Code?
        A NAICS (pronounced NAKES) Code is a classification within the North American Industry Classification System. The NAICS System was developed for
        use by Federal Statistical Agencies for the collection, analysis and publication of statistical data related to the US Economy.
		This helps in checking the status of VISA.
		
		