CREATE TABLE Users(
    id INT PRIMARY KEY,
    user_name VARCHAR(200) NOT NULL,
    real_name VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL,
    passaword VARCHAR(255) NOT NULL
);


CREATE TABLE Events(
   id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   name VARCHAR(200) NOT NULL,
   organizer_id INT NOT NULL,
   description TEXT NOT NULL,
   start_date DATETIME,
   end_date DATETIME,
   FOREIGN KEY (organizer_id) REFERENCES Users(id)
);

CREATE TABLE `Groups`(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    event_id INT,
    user_id INT,
    name VARCHAR(200) NOT NULL,
    limit_participant INT(3),
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (event_id) REFERENCES Events(id)
);


