
library(plyr)
library(readr)
library(readxl)  
library(tidyr)

VOBs <- "/Users/samantha/Desktop/Pullling/Master List of VOBs.xlsx"
# Before reading data, we will return the names of the sheets for later use:
excel_sheets(path = VOBs)
# 1. U.S. Department of Veterans Affairs Office of Small & Disadvantaged Business Utilization

#############################################################################
# 2. Arkansas Economic Development Commission
df_VOBs_02 <- read_excel(path = VOBs, sheet = '2')
rowcount <- nrow(df_VOBs_02)
# create a null value dataframe based on the final mapping structure
VOBs_2 <- setNames(data.frame(matrix(ncol = 21, nrow = rowcount)), 
                   c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                     "Website","HomePhone", "Phone",
                     "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                     "Position",  "Description",  "Industry",
                     "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                     "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
View(VOBs_2)
# load data from source 2
colnames(df_VOBs_02)
VOBs_2[c("AccountName","Description",
         'FirstName',"LastName","Position",
         "HomePhone","Email","MailingAddress",
         "MailingCity","MailingState","MailingZipCode",
         "NAICS-Code","AdditionalDesignation")] <- df_VOBs_02[c("Company Name","Business Description",
                                                  "ContactFirstName","ContactLastName",  "ContactTitle",      
                                                   "ContactPhone","ContactEmail", "Street" ,"City","State" ,              
                                                   "Zip" ,"NaicsCode" ,
                                                   "BusinessDesignation")]
VOBs_2["DirectoryName"]<- 'Arkansas Economic Development Commission'

#############################################################################
# 3. New Jersey Veterans Chamber of Commerce
df_VOBs_03 <- read_excel(path = VOBs, sheet = '3')
nrow(df_VOBs_03)
# create a null value dataframe based on the final mapping structure
VOBs_3 <- setNames(data.frame(matrix(ncol = 21, nrow = 235)), 
                   c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                     "Website","HomePhone", "Phone",
                     "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                     "Position",  "Description",  "Industry",
                     "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                     "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 3
colnames(df_VOBs_03)
VOBs_3[c("Position","Email", "Website",
         "HomePhone","Phone","MailingAddress",
         "MailingCity","MailingState","MailingZipCode",
         "AdditionalDesignation")] <- df_VOBs_03[c("Title" ,"Email" ,"Website" ,
                                                                "Cell Phone","Work Phone" , "Address 1" ,  "City" ,      
                                                                "State"  ,  "Zip"  ,  "Designation")]
VOBs_3["DirectoryName"]<- 'New Jersey Veterans Chamber of Commerce'

#############################################################################
# 4. State of California DBE/MBE/WBE Directory
df_VOBs_04 <- read_excel(path = VOBs, sheet = '4')
nrow(df_VOBs_04)
# create a null value dataframe based on the final mapping structure
VOBs_4 <- setNames(data.frame(matrix(ncol = 21, nrow = 1644)), 
                   c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                     "Website","HomePhone", "Phone",
                     "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                     "Position",  "Description",  "Industry",
                     "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                     "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 4
colnames(df_VOBs_04)
VOBs_4[c("FirstName","LastName","AccountName",
         "Website","HomePhone", 
         "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
         "Description","AdditionalDesignation" )] <- df_VOBs_04[c("Owner First" ,"Owner Last","Company Name" ,"Website" ,
                                         "Phone", "Physical Address","City..6","State..7","Zip..8", "Capability","Certification Type" )]
VOBs_4["DirectoryName"]<- 'State of California DBE/MBE/WBE Directory'

#############################################################################
# 5. State of California DVBE Directory
df_VOBs_05 <- read_excel(path = VOBs, sheet = '5')
nrow(df_VOBs_05)
# create a null value dataframe based on the final mapping structure
VOBs_5 <- setNames(data.frame(matrix(ncol = 21, nrow = 1641)), 
                   c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                     "Website","HomePhone", "Phone",
                     "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                     "Position",  "Description",  "Industry",
                     "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                     "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 5
colnames(df_VOBs_05)
VOBs_5[c("FirstName","LastName","Email",	"AccountName",
         "Website","HomePhone", 
         "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
         "Description", "AdditionalDesignation",  "NAICS-Code" )] <- df_VOBs_05[c( "First Name","Last Name","Email ID",
                                                                                   "Legal Business Name","URLID", "Telephone","Address Line 1",
                                                                                   "City" ,"State" ,"Postal Code","Keywords" ,
                                                                                   "Certification Type", "UNSPSC"  )]
VOBs_5["DirectoryName"]<- 'State of California DVBE Directory'

#############################################################################
# 8. Florida Department of Management Services
df_VOBs_08 <- read_excel(path = VOBs, sheet = '8')
# create a null value dataframe based on the final mapping structure
VOBs_8 <- setNames(data.frame(matrix(ncol = 21, nrow =nrow(df_VOBs_08) )), 
                    c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                      "Website","HomePhone", "Phone",
                      "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                      "Position",  "Description",  "Industry",
                      "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                      "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 8
colnames(df_VOBs_08)
# For first & last name, we need to split from contact name, use last whitspace to separate
df_VOBs_08_name <- separate (df_VOBs_08, col = "Contact", into = c("FirstName", "Lastname"), sep="\\s+(?=\\S*$)")
colnames(df_VOBs_08_name)
VOBs_8[c("FirstName","LastName","Email",	"AccountName", "HomePhone",
         "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
         "AdditionalDesignation")] <- df_VOBs_08_name [c("FirstName","Lastname" , "Email","Name" ,
                                                "Phone" ,"Address","City" ,"State", "Postal Code","Designations" )]
VOBs_8["DirectoryName"]<- 'Florida Department of Management Services'

#############################################################################
# 9. State of Illinois Department of Central Management Services
df_VOBs_09 <- read_excel(path = VOBs, sheet = '9')
nrow(df_VOBs_09)
# create a null value dataframe based on the final mapping structure
VOBs_9 <- setNames(data.frame(matrix(ncol = 21, nrow = 169)), 
                   c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                     "Website","HomePhone", "Phone",
                     "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                     "Position",  "Description",  "Industry",
                     "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                     "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 9
colnames(df_VOBs_09)
VOBs_9[c("FirstName","LastName","Email",	"AccountName",
         "Website","HomePhone",
         "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
         "AdditionalDesignation")] <- df_VOBs_09[c( "Owner First" ,"Owner Last", "Email" ,"Company Name" ,"Website" ,
                                                    "Phone", "Physical Address","City..6","State..7","Zip..8", "Certification Type"  )]
VOBs_9["DirectoryName"]<- 'State of Illinois Department of Central Management Services'

#############################################################################
# 10. State of Indiana Division of Supplier Diversity
df_VOBs_10 <- read_excel(path = VOBs, sheet = '10')
# create a null value dataframe based on the final mapping structure
VOBs_10 <- setNames(data.frame(matrix(ncol = 21, nrow =nrow(df_VOBs_10) )), 
                   c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                     "Website","HomePhone", "Phone",
                     "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                     "Position",  "Description",  "Industry",
                     "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                     "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 10
colnames(df_VOBs_10)
VOBs_10[c("FirstName","LastName","Email",	"AccountName",
         "HomePhone","MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
         "Description", "AdditionalDesignation" )] <- df_VOBs_10[c( "First Name","Last Name","Email ID",
                                                                    "Company Name", "Phone","Mailing Address 1",
                                                                     "City" ,"State" ,"Zip Code" , "UNSPSC Category" ,
                                                                    "Application Type" )]
VOBs_10["DirectoryName"]<- 'State of Indiana Division of Supplier Diversity'

#############################################################################
# 11. State of Iowa Economic Development Authority
df_VOBs_11 <- read_excel(path = VOBs, sheet = '11')
# create a null value dataframe based on the final mapping structure
VOBs_11 <- setNames(data.frame(matrix(ncol = 21, nrow =nrow(df_VOBs_11) )), 
                    c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                      "Website","HomePhone", "Phone",
                      "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                      "Position",  "Description",  "Industry",
                      "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                      "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 11
# For first & last name, we need to split from contact name
df_VOBs_11_name <- separate (df_VOBs_11, col = "Contact Name", into = c("FirstName", "Lastname"), sep=" ")
colnames(df_VOBs_11_name)
VOBs_11[c("FirstName","LastName","Email",	"AccountName",
          "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
          "Description",  "Industry","NAICS-Code")] <- df_VOBs_11_name [c("FirstName","Lastname" ,"E-Mail" ,"Business Name" ,
                                                                          "Business Address" ,"Business City" , "Business State","Business Zip",
                                                                          "Description", "Category" ,"NAICS Code")]
VOBs_11["DirectoryName"]<- 'State of Iowa Economic Development Authority'

#############################################################################
# 12. State of Kentucky Finance & Administration Cabinet
df_VOBs_12 <- read_excel(path = VOBs, sheet = '12')
# create a null value dataframe based on the final mapping structure
VOBs_12 <- setNames(data.frame(matrix(ncol = 21, nrow =nrow(df_VOBs_12) )), 
                    c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                      "Website","HomePhone", "Phone",
                      "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                      "Position",  "Description",  "Industry",
                      "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                      "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 12
colnames(df_VOBs_12)
# For first & last name, we need to split from contact name, use last whitspace to separate
df_VOBs_12_name <- separate (df_VOBs_12, col = "Owner", into = c("FirstName", "Lastname"), sep="\\s+(?=\\S*$)")
df_VOBs_12_city <- separate (df_VOBs_12_name, col = "City/State", into = c("City", "State"), sep=", ")
colnames(df_VOBs_12_city)
VOBs_12[c("FirstName","LastName","Email",	"AccountName","Website","HomePhone", 
          "MailingCity",  "MailingState", 
          "Description",  "Industry")] <- df_VOBs_12_city [c("FirstName","Lastname" ,"E-Mail" ,"Name" ,
                                                                          "Web", "Phone #", "City" , "State",
                                                                          "Product or Service(s)" , "Business Type")]
VOBs_12["DirectoryName"]<- 'State of Kentucky Finance & Administration Cabinet'

#############################################################################
# 13. State of Massachusetts Operational Services Division
df_VOBs_13 <- read_excel(path = VOBs, sheet = '13')
# create a null value dataframe based on the final mapping structure
VOBs_13 <- setNames(data.frame(matrix(ncol = 21, nrow =nrow(df_VOBs_13) )), 
                    c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                      "Website","HomePhone", "Phone",
                      "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                      "Position",  "Description",  "Industry",
                      "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                      "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 13
colnames(df_VOBs_13)
VOBs_13[c("FirstName","LastName","Email",	"AccountName",
          "Website","HomePhone", 
          "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
          "Position",  "Description", "Dun-and-Bradstreet-Number",
          "AdditionalDesignation", "NAICS-Code" )] <- df_VOBs_13[c( "BusinessContact_FirstName" , "BusinessContact_LastName",
                                                                    "BusinessContact_Email" ,"Business_Name","Business_HomePageURL" ,
                                                                    "Business_Phone","Business_Addressline1"  ,  "Business_City",
                                                                    "Business_State"  , "Business_Zip5", "BusinessContact_Title" ,
                                                                    "Business_Services" ,"BusinessDuns_No","Certification_Type" ,
                                                                    "PrimaryNAICSCodeSDO" )]
VOBs_13["DirectoryName"]<- 'State of Massachusetts Operational Services Division'

#############################################################################
# 14. State of Minnesota Department of Administration
df_VOBs_14 <- read_excel(path = VOBs, sheet = '14')
# create a null value dataframe based on the final mapping structure
VOBs_14 <- setNames(data.frame(matrix(ncol = 21, nrow =nrow(df_VOBs_14) )), 
                    c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                      "Website","HomePhone", "Phone",
                      "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                      "Position",  "Description",  "Industry",
                      "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                      "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 14
colnames(df_VOBs_14)
# For first & last name, we need to split from contact name, use last whitspace to separate
df_VOBs_14_name <- separate (df_VOBs_14, col = "Owner", into = c("FirstName", "Lastname"), sep="\\s+(?=\\S*$)")
colnames(df_VOBs_14_name)
VOBs_14[c("FirstName","LastName","Email",	"AccountName","HomePhone","Phone" ,
          "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
          "Description",   "AdditionalDesignation")] <- df_VOBs_14_name [c("FirstName","Lastname" , "Email"   , "Business Name" ,
                                                                           "Phone 1" , "Phone 2" ,"Street Address",
                                                                           "City" , "State","Zip" , "description" ,"Designation" )]
VOBs_14["DirectoryName"]<- 'State of Minnesota Department of Administration'

#############################################################################
# 15. State of Missouri Office of Administration
df_VOBs_15 <- read_excel(path = VOBs, sheet = '15')
# create a null value dataframe based on the final mapping structure
VOBs_15 <- setNames(data.frame(matrix(ncol = 21, nrow =nrow(df_VOBs_15) )), 
                    c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                      "Website","HomePhone", "Phone",
                      "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                      "Position",  "Description",  "Industry",
                      "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                      "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 15
colnames(df_VOBs_15)
# For first & last name, we need to split from contact name, use last whitspace to separate
df_VOBs_15_name <- separate (df_VOBs_15, col = "Contact Name", into = c("FirstName", "Lastname"), sep="\\s+(?=\\S*$)")
colnames(df_VOBs_15_name)
VOBs_15[c("FirstName","LastName","Email",	"AccountName","Website","HomePhone",
          "Description")] <- df_VOBs_15_name [c("FirstName","Lastname" , "Email","CDVE Name" ,"Website" ,
                                                 "Phone" ,"Services" )]
VOBs_15["DirectoryName"]<- 'State of Missouri Office of Administration'

#############################################################################
# 16. State of Nevada Department of Administration
df_VOBs_16 <- read_excel(path = VOBs, sheet = '16')
# create a null value dataframe based on the final mapping structure
VOBs_16 <- setNames(data.frame(matrix(ncol = 21, nrow =nrow(df_VOBs_16) )), 
                    c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                      "Website","HomePhone", "Phone",
                      "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                      "Position",  "Description",  "Industry",
                      "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                      "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 16
colnames(df_VOBs_16)
# For first & last name, we need to split from contact name, use last whitspace to separate
df_VOBs_16_name <- separate (df_VOBs_16, col = "Contact Name", into = c("FirstName", "Lastname"), sep="\\s+(?=\\S*$)")
colnames(df_VOBs_16_name)
VOBs_16[c("FirstName","LastName",	"AccountName","HomePhone",
          "MailingAddress","MailingCity",  "MailingState", "MailingZipCode"
        )] <- df_VOBs_16_name [c("FirstName","Lastname" , "Vendor Name","Phone",
                                 "Address"   ,  "City" ,       "State"      , "Postal Code"
                                 )]
VOBs_16["DirectoryName"]<- 'State of Nevada Department of Administration'

#############################################################################
# 17. State of New Jersey Department of the Treasury
df_VOBs_17 <- read_excel(path = VOBs, sheet = '17')
# create a null value dataframe based on the final mapping structure
VOBs_17 <- setNames(data.frame(matrix(ncol = 21, nrow =nrow(df_VOBs_17) )), 
                    c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                      "Website","HomePhone", "Phone",
                      "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                      "Position",  "Description",  "Industry",
                      "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                      "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 17
colnames(df_VOBs_17)
# For first & last name, we need to split from contact name, use last whitspace to separate
VOBs_17[c("FirstName","LastName",	"Email","AccountName","HomePhone",
          "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
          "AnnualRevenue",   "AdditionalDesignation"
          )] <- df_VOBs_17[c("Contact First Name","Contact Last Name", "E-MAIL Address" ,
                             "Business Name" , "Primary Phone" , "Business Address 1" ,
                             "Business City" ,"Business State" , "Business Zip",
                             "Gross Sale Revnue"  ,"Designation")]
VOBs_17["DirectoryName"]<- 'State of New Jersey Department of the Treasury'


#############################################################################
# 18. State of New Mexico General Services Department
df_VOBs_18 <- read_excel(path = VOBs, sheet = '18')
# create a null value dataframe based on the final mapping structure
VOBs_18 <- setNames(data.frame(matrix(ncol = 21, nrow =nrow(df_VOBs_18) )), 
                    c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                      "Website","HomePhone", "Phone",
                      "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                      "Position",  "Description",  "Industry",
                      "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                      "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 18
colnames(df_VOBs_18)
# For first & last name, we need to split from contact name, use last whitspace to separate
df_VOBs_18_Address <- separate (df_VOBs_18, col = "Address", into = c("Address","Zip"), sep=",\\s*(?=[^,]+$)")
df_VOBs_18_Address <- separate (df_VOBs_18_Address, col = "Address", into = c("Address","State"), sep=",\\s*(?=[^,]+$)")
df_VOBs_18_Address <- separate (df_VOBs_18_Address, col = "Address", into = c("Address","City"), sep=",\\s*(?=[^,]+$)")
colnames(df_VOBs_18_Address)
VOBs_18[c("Email",	"AccountName","HomePhone", 
          "MailingAddress", "MailingCity",  "MailingState", "MailingZipCode"
          )] <- df_VOBs_18_Address [c( "Email", "Vendor Name", "Phone",
                                    "Address" ,  "City" , "State","Zip")]
VOBs_18["DirectoryName"]<- 'State of New Mexico General Services Department'

#############################################################################
# 19. State of New York Office of General Services
df_VOBs_19 <- read_excel(path = VOBs, sheet = '19')
# create a null value dataframe based on the final mapping structure
VOBs_19 <- setNames(data.frame(matrix(ncol = 21, nrow =nrow(df_VOBs_19) )), 
                    c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                      "Website","HomePhone", "Phone",
                      "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                      "Position",  "Description",  "Industry",
                      "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                      "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 19
colnames(df_VOBs_19)
df_VOBs_19_Name <- separate (df_VOBs_19, col = "Primary SDV Name"  , into = c("FirstName","LastName"), sep=" , ")
colnames(df_VOBs_19_Name)
# For first & last name, we need to split from contact name, use last whitspace to separate
VOBs_19[c("FirstName","LastName",	"Email","AccountName", "Website", "HomePhone",
          "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
          "Description",  "Industry",
          "AnnualRevenue",  "NAICS-Code")] <- df_VOBs_19_Name[c("FirstName","LastName","Contact Email Address","Business Name", 
                                                                "Business Webpage","Phone Number",
                                                                "Street" ,  "City" , "State","Zip",
                                                                "Categories","Classification" ,"Business Size","NAICS Code(s)" )]
VOBs_19["DirectoryName"]<- 'State of New York Office of General Services'


#############################################################################
# 20. State of Pennsylvania Department of General Services
df_VOBs_20 <- read_excel(path = VOBs, sheet = '20')
# create a null value dataframe based on the final mapping structure
VOBs_20 <- setNames(data.frame(matrix(ncol = 21, nrow =nrow(df_VOBs_20) )), 
                    c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                      "Website","HomePhone", "Phone",
                      "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                      "Position",  "Description",  "Industry",
                      "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                      "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 20
colnames(df_VOBs_20)
# For first & last name, we need to split from contact name, use last whitspace to separate
df_VOBs_20_name <- separate (df_VOBs_20, col = "Name", into = c("FirstName", "Lastname"), sep="\\s+(?=\\S*$)")
# concatenate phone number
df_VOBs_20_name$phone <- paste(df_VOBs_20_name$PhoneAreaCode, "-", df_VOBs_20_name$PhoneNumber)
colnames(df_VOBs_20_name)
VOBs_20[c("FirstName","LastName","Email",	"AccountName","Website","HomePhone", 
          "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
          "Position",  "Description")] <- df_VOBs_20_name [c("FirstName","Lastname" ,"Email" ,"Supplier Name",
                                                             "Web Site" , "phone","Address Line 1", "City" , "State","Postal Code" ,
                                                             "Title" ,"Capabilities" )]
VOBs_20["DirectoryName"]<- 'State of Pennsylvania Department of General Services'

#########################################################
# 21. State of Tennessee Department of General Services
df_VOBs_21 <- read_excel(path = VOBs, sheet = '21')
# create a null value dataframe based on the final mapping structure
VOBs_21 <- setNames(data.frame(matrix(ncol = 21, nrow =nrow(df_VOBs_21) )), 
                    c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                      "Website","HomePhone", "Phone",
                      "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                      "Position",  "Description",  "Industry",
                      "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                      "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 21
colnames(df_VOBs_21)
VOBs_21[c("FirstName","LastName","Email",	"AccountName","Website","HomePhone", 
          "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
          "Description", "AdditionalDesignation")] <- df_VOBs_21[c("Owner First","Owner Last","Email", "Company Name",
                                                                    "Website" ,"Phone",  "Physical Address" ,"City..6" ,
                                                                    "State..7" ,"Zip..8","Capability","Certification Type" )]
VOBs_21["DirectoryName"]<- 'State of Tennessee Department of General Services'

#########################################################
# 23. State of Washington Department of Veterans Affairs
df_VOBs_23 <- read_excel(path = VOBs, sheet = '23')
# create a null value dataframe based on the final mapping structure
VOBs_23 <- setNames(data.frame(matrix(ncol = 21, nrow =nrow(df_VOBs_23) )), 
                    c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                      "Website","HomePhone", "Phone",
                      "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                      "Position",  "Description",  "Industry",
                      "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                      "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 23
colnames(df_VOBs_23)
VOBs_23[c("Email",	"AccountName","Website","HomePhone", 
         "MailingCity",  "MailingState")] <- df_VOBs_23[c("EmailAddress","CompanyName","WebAddress",  "Phone",  
                                                          "City" ,"State")]
VOBs_23["DirectoryName"]<- 'State of Washington Department of Veterans Affairs'


#############################################################################
# 24. State of Wisconsin Department of Administration
df_VOBs_24 <- read_excel(path = VOBs, sheet = '24')
# create a null value dataframe based on the final mapping structure
VOBs_24 <- setNames(data.frame(matrix(ncol = 21, nrow =nrow(df_VOBs_24) )), 
                    c("DirectoryName","FirstName","LastName","Email",	"AccountName",
                      "Website","HomePhone", "Phone",
                      "MailingAddress","MailingCity",  "MailingState", "MailingZipCode",
                      "Position",  "Description",  "Industry",
                      "Size(Employees)", "IndustryOther", "Dun-and-Bradstreet-Number",
                      "AnnualRevenue",   "AdditionalDesignation",  "NAICS-Code"))
# load data from source 24
colnames(df_VOBs_24)
# For first & last name, we need to split from contact name, use last whitspace to separate
df_VOBs_24_name <- separate (df_VOBs_24, col = "Contact"  , into = c("FirstName", "Lastname"), sep="\\s+(?=\\S*$)")
colnames(df_VOBs_24_name)
VOBs_24[c("FirstName","LastName",	"AccountName","HomePhone",
          "MailingAddress","MailingCity",  "MailingState", "AdditionalDesignation"
        )] <- df_VOBs_24_name [c("FirstName","Lastname" , "Business Name","Phone",
                         "Address","City" , "State", "Type")]
VOBs_24["DirectoryName"]<- 'State of Wisconsin Department of Administration'



#combine datasets to one final dataset
VOBs_final <- do.call("rbind", list(VOBs_2,VOBs_3,VOBs_4,VOBs_5,
                                    VOBs_8,VOBs_9,VOBs_10,VOBs_11,
                                    VOBs_12,VOBs_13,VOBs_14,VOBs_15,VOBs_16,
                                    VOBs_17,VOBs_18,VOBs_19,VOBs_20,VOBs_21,
                                    VOBs_23,VOBs_24))
# Export final VOBs dataset
write.csv(VOBs_final,"VOBs_final.csv",row.names = FALSE)


