# Crowdfunding_ETL

On this project, we practiced building an ETL pipeline using Python, Pandas, Python dictionary methods and regular expressions to extract and transform the data. After transforming the data, we created four CSV files and used the CSV file data to create an ERD and a table schema. Finally, we uploaded the CSV file data into a Postgres database.

## Category DataFrame
* The DataFrame contains a "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
* The DataFrame has a "category" column that contains only the category titles
* The category DataFrame is exported as category.csv

## Subcategory DataFrame
* The DataFrame contains a "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
* The DataFrame contains a "subcategory" column that contains only the subcategory titles
* The subcategory DataFrame is exported as category.csv

## Campaign DataFrame
The DataFrame has the following columns:
* A "cf_id" column
* A "contact_id" column
* A "company_name" column
* A "description" column
* A "goal" column that is a float data type
* A "pledged" column that is a float data type
* An "outcome" column
* A "backers_count" column
* A "country" column
* A "currency" column
* A "launch_date" with the time formatted as "YYYY-MM-DD"
* An "end_date" with the time formatted as "YYYY-MM-DD"
* A "category_id" column that contains the unique identification numbers matching those in the "category_id" column of the category DataFrame
* A "subcategory_id" column that contains the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
The campaign DataFrame is exported as campaign.csv

## Contacts DataFrame
The DataFrame has the following columns:
* A "contact_id" column
* A "first_name" column
* A "last_name" column
* An "email" column
The contacts DataFrame is exported as contacts.csv 

## Crowdfunding Database
* A database schema labeled, crowdfunding_db_schema.sql is created
* A crowdfunding_db is created using the crowdfunding_db_schema.sql file
* The database has the primary and foreign keys and relationships
* Each CSV file is imported into the appropriate table
* The data from each table is displayed 
