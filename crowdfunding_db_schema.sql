DROP TABLE IF EXISTS crowdfunding_db_schema.contacts;
DROP TABLE IF EXISTS crowdfunding_db_schema.category;
DROP TABLE IF EXISTS crowdfunding_db_schema.subcategory;
DROP TABLE IF EXISTS crowdfunding_db_schema.campaign;

CREATE TABLE crowdfunding_db_schema.contacts (
	contact_id int NOT NULL,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	email varchar NOT NULL,
	PRIMARY KEY (contact_id)
);

SELECT * FROM crowdfunding_db_schema.contacts;

CREATE TABLE crowdfunding_db_schema.category (
	category_id varchar NOT NULL,
	category varchar NOT NULL,
	PRIMARY KEY (category_id)
);

SELECT * FROM crowdfunding_db_schema.category;

CREATE TABLE crowdfunding_db_schema.subcategory (
	subcategory_id varchar NOT NULL,
	subcategory varchar NOT NULL,
	PRIMARY KEY (subcategory_id)
);

SELECT * FROM crowdfunding_db_schema.subcategory;

CREATE TABLE crowdfunding_db_schema.campaign (
	cf_id int NOT NULL,
	contact_id int NOT NULL,
	company_name varchar NOT NULL,
	description varchar NOT NULL,
	goal float NOT NULL,
	pledged float NOT NULL,
	outcome varchar NOT NULL,
	backers_count int NOT NULL,
	country varchar NOT NULL,
	currency varchar NOT NULL,
	launched_date date NOT NULL,
	end_date date NOT NULL,
	category_id varchar NOT NULL,
	subcategory_id varchar NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY(contact_id) REFERENCES crowdfunding_db_schema.contacts(contact_id),
	FOREIGN KEY(category_id) REFERENCES crowdfunding_db_schema.category(category_id),
	FOREIGN KEY(subcategory_id) REFERENCES crowdfunding_db_schema.subcategory(subcategory_id)
);

SELECT * FROM crowdfunding_db_schema.campaign;
