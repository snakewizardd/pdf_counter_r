# This program requires the use of four packages
# 1. pdftools
  # -  to run operations on the PDFs
# 2. fs 
  # - to run operations on the directories
# 3. data.table
  # - for the 'like' operation
# 4. xlsx
  # - to output in XLSX format
# 5. - writexl
  # - If you don't have Java, use writexl

#Only run this code if the packages are not installed yet.
#If using the accompanied Docker image, the packages are pre-installed.
#install.packages(c('pdftools','fs','data.table','xlsx'))

#Load libraries
library(pdftools)
library(fs)
library(data.table)
#library(xlsx)
library(writexl)

#Store (as list contents) the full list of items in the working directory
current_directory <- dir_ls()

#Identifying which items in the directory contain the phrase .pdf
#We will store this reduced list in an object called all_pdfs
all_pdfs <- current_directory[which(current_directory %like% '.pdf')]

#Initiating an empty output parameter to contain the contens of our loop
output <- NULL

#Initiating a counter variable to be used as the SEQ (sequence) in the output file
SEQ <- 1

#Beginning the iteration through all the PDF documents
for(pdf_document in all_pdfs){
  
  #Capturing the name of the PDF
  document_name <- pdf_document
  
  #Capturing the number of pages, as contained in the pdf_info() output
  number_of_pages <- pdf_info(pdf_document)$pages 
  
  #Creating the row format
  row_to_bind <- data.frame(SEQ, document_name, number_of_pages)
  
  #Binding the row to the output vector
  output <- rbind(output,row_to_bind)
  
  #Iterating the counter by 1
  SEQ <- SEQ + 1
  
}

#Writing the output file to the directory
#The name is a concatentation of 
#1. System.time() output (for uniqueness)
#2. the phrase _Output_file.xlsx

#We have named the first sheet 'Summary of Pages'
#xlsx requires Java - if that is a problem- use Windows option below

#Java Enabled:
#write.xlsx(output, paste0(Sys.time(),'_Output_file.xlsx'), 
#           sheetName = "Summary of Pages")

#For Windows Scoop Users
writexl::write_xlsx(output,paste0(Sys.time(),'_Output_file.xlsx'))