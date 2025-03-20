---create the nomnom table if it does not exists
CREATE TABLE IF NOT EXISTS nomnom(
NAME TEXT,
NEIGHBOURHOOD TEXT,
CUISINE TEXT,
REVIEW REAL,
PRICE TEXT,
HEALTH TEXT);

---Insert sample data into nomnom table
INSERT INTO nomnom(NAME,NEIGHBOURHOOD,CUISINE,REVIEW,PRICE,HEALTH) VALUES
('Peter','Brooklyn','Steak',4.4,'$$$$','A'),
('Jongro','Midtown','Korean',3.5,'$$','A'),
('Pocha','Midtown','Pizza',4,'$$$','B'),
('Lighthouse','Queens','Chinise',3.9,'$','A'),
('Minca','Downtown','American',4.8,'$$','B'),
('Louis','Chinatown','Japnese',4.5,'$$$$','A'),
('Simra','Midtown','Chinese',3,'$$','B'),
('Cheong sun','Downtown','Italian',5,'$$$','A'),
('Candy','Midtown','Korean',4.5,'$$','B');

---select all the records from the nomnom table
SELECT * FROM nomnom;

---select distinct neighbours from the nomnom table
SELECT DISTINCT NEIGHBOURHOOD FROM nomnom;

---select distinct cusine from nomnom table
SELECT DISTINCT CUISINE FROM nomnom;

---select distinct cusine from nomnom table
SELECT * FROM nomnom WHERE CUISINE='Chinise';

---select all records with a review rating of 4 or higher
SELECT * FROM nomnom WHERE REVIEW >=4;

---select all records with cusine and $$$ price
SELECT * FROM nomnom WHERE CUSINE ='Italian' AND PRICE='$$$';

---select all records where name contains 'Candy'
SELECT * FROM nomnom WHERE NAME LIKE '%Candy%';

---select all records where the neighbours is Midtown,Downtown, or China town
SELECT * FROM nomnom WHERE NEIGHBOURHOOD IN ('Midtown','Downtown','Chinatown');

---select the top 4 records ordered by review rating in desecending order
SELECT * FROM nomnom ORDER BY REVIEW DESC LIMIT 4;





