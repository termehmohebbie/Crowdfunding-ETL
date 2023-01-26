DROP TABLE IF EXISTS campaigns;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS subcategories;

CREATE TABLE contacts (
  contact_id int not null,
  first_name varchar(15),
  last_name varchar(15),
  email varchar,
  PRIMARY KEY (contact_id)
  );
  
CREATE TABLE categories (
  category_id varchar not null,
  category varchar(15),
  PRIMARY KEY (category_id)
  );
  
CREATE TABLE subcategories (
  subcategory_id varchar not null,
  subcategory varchar,
  PRIMARY KEY (subcategory_id)
  );
  
CREATE TABLE campaigns (
   cf_id int not null,
   contact_id int,
   company_name varchar,
   description varchar,
   goal float,
   pledged float,
   outcome varchar(25),
   backers_count int,
   country varchar(4),
   currency varchar(6),
   launch_date date,
   end_date date,
   category_id varchar,
   subcategory_id varchar,
   PRIMARY KEY (cf_id),
   FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
   FOREIGN KEY (category_id) REFERENCES categories(category_id),
   FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id)
 );
 
 SELECT * FROM contacts;
 SELECT * FROM categories;
 SELECT * FROM subcategories;
 SELECT * FROM campaigns;