#READ ALL
SELECT * FROM doctors 

#READ ONE
www.airbnb.com/flats/524
SELECT * FROM flats
WHERE flats.id = 524


#READ ONE NO ID
www.github.com/users/l-laurencich
SELECT * FROM users
WHERE users.username = 'l-laurencich'

#CREATE 
INSERT INTO doctors (name, age, specialty)
VALUES ("Meredith Grey", 39, "General Surgery")

#UPDATE
UPDATE doctors SET age = 40, specialty = "Heart Surgery"
WHERE id = 3

#DELETE
DELETE FROM doctors
WHERE id = 11

#DELETE BY SPECIALTY
DELETE FROM doctors
WHERE specialty = "Cardiologist"
AND age = 31

