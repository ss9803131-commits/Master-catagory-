CREATE DATABASE master;
USE master

DROP TABLE category_data;


-- Country Table
CREATE TABLE country_category (
      category_id INT PRIMARY KEY,
      country TEXT
);

-- Main Data Table
CREATE TABLE category_data (
    category_id INT,
    year INT,
    sex TEXT,
    suicides_no INT,
    population INT,
    suicides_per_100k FLOAT,
    gdp_for_year TEXT,
    gdp_per_capita FLOAT,
    generation TEXT,
    FOREIGN KEY (category_id)
        REFERENCES country_category(category_id)
);

SELECT * FROM category_data;


SELECT *
FROM country_category c
JOIN category_data d
ON c.category_id = d.category_id;



SELECT c.country,
       SUM(d.suicides_no) AS total_suicides
FROM country_category c
JOIN category_data d
ON c.category_id = d.category_id
GROUP BY c.country;


