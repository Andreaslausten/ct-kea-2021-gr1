# Statement <CREATE DATA BASE Quiz;> Opretter en database med navnet "Quiz"
CREATE DATABASE Quiz;

# <USE Quiz;> Gør det muligt at operere i databasen "Quiz"
USE Quiz;

# <CREATE TABLE USERS> Opretter tabellen 
# I parantesen tilføjes kolonner
# <VARCHAR(55)> betyder at værdien der insættes er bogstaver og kan holde op til 55 bogstaver
# <INT> betyder at værdien der insættes er tal
# <PRIMARY KEY (User_ID> betyder vi gør kollonen "User_ID" til primær nøgel i tabellen
CREATE TABLE Users (
  User_ID INT,
  Email VARCHAR(55),
  Reg_date VARCHAR(55),
  First_name VARCHAR(55),
  Last_name VARCHAR(55),
  Phone_number VARCHAR(55),
  Password VARCHAR(30),
  PRIMARY KEY (User_ID)
);

# Her oprettes tabellen Topics. Her er ingen statements, som ikke allerede er beskrevet. 
CREATE TABLE Topics (
 Topic_ID INT,
 Topic_name VARCHAR(55),
 Content VARCHAR(55),
 PRIMARY KEY (Topic_ID)
);

# Her oprettes tabellen Questions. Her er ingen statements, som ikke allerede er beskrevet. 
CREATE TABLE Questions (
 Question_ID INT,
 Topic_ID INT,
 Desciption VARCHAR(255),
 Is_Active INT,
 PRIMARY KEY (Question_ID)
);

# Her oprettes tabellen results.
# Statement <FOREIGN KEY (User_ID) REFERENCES Users(User_ID)> Betyder at kollonen "User_ID" tilføjes som fremmednøgle -->
# Fremmednøglen refererer til tabellen Users, hvorfra den "henter" fremmednøglen "User_ID"
CREATE TABLE Results (
 Result_ID INT,
 User_ID INT,
 Creative_result VARCHAR(55),
 Development_result VARCHAR(55),
 Digital_Marketing_result VARCHAR(55),
 PRIMARY KEY (Result_ID),
 FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

# UsersQuestions er tabel bestående af de 2 primære nøgler fra tabellen "Users" og "Questions"
# Tabellen for derved 2 primære nøgler som tilføjes ved statement <PRIMARY KEY (User_ID, Question_ID)
# De 2 primærnøgler tilføjes også som fremmednøgler i samme tabel. Dette statement er forklaret. 
CREATE TABLE UsersQuestions (
 User_ID INT,
 Question_ID INT,
 Point_score INT,
 PRIMARY KEY (User_ID, Question_ID),
 FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
 FOREIGN KEY (Question_ID) REFERENCES Questions(Question_ID) 
);

# <ALTER TABLE UsersQuestions> betyder at vi ønsker at tilføje en ændring i kolonnen "UsersQuestions"
# < ALTER TABLE UsersQuestions <ADD CONSTRAINT Point_score CHECK (Point_Score=0 OR Point_Score=5);> -->
# betyder at vi ønsker at tilføje en begrænsning. Begrænsning er i kolonnen "Point_Score". Kolonnen begrænses til kun at kunne være 0 eller 5
ALTER TABLE UsersQuestions
ADD CONSTRAINT Point_score CHECK (Point_Score=0 OR Point_Score=5);