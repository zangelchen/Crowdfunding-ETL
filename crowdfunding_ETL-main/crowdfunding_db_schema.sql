
CREATE TABLE categories(
  category_id VARCHAR NOT NULL,
  category VARCHAR NOT NULL,
  PRIMARY KEY (category_id)
);

CREATE TABLE subcategories(
  subcategory_id VARCHAR NOT NULL,
  subcategory VARCHAR NOT NULL,
  PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts(
  contact_id int NOT NULL,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  email VARCHAR NOT NULL,
  PRIMARY KEY (contact_id)
);

CREATE TABLE campaign(
  category_id VARCHAR NOT NULL,
  cf_id INT NOT NULL,
  contact_id INT NOT NULL,
  company_name VARCHAR NOT NULL,
  description VARCHAR NOT NULL,
  goal REAL NOT NULL,
  pledged REAL NOT NULL,
  outcome VARCHAR NOT NULL,
  backers_count INT NOT NULL,
  country VARCHAR NOT NULL,
  currency VARCHAR NOT NULL,
  launch_date VARCHAR NOT NULL,
  end_date VARCHAR NOT NULL,
  subcategory_id VARCHAR NOT NULL,
  FOREIGN KEY (category_id) REFERENCES categories (category_id),
  FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
  FOREIGN KEY (subcategory_id) REFERENCES subcategories (subcategory_id),
  PRIMARY KEY (cf_id)
);