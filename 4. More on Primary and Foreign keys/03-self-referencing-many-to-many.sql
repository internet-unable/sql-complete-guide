CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL
);

CREATE TABLE user_friends(
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    friend_id INT REFERENCES users(id) ON DELETE CASCADE,
    CHECK (user_id < friend_id),
    PRIMARY KEY (user_id, friend_id)
);

INSERT INTO users(first_name, last_name)
VALUES ('Max', 'Bar'), ('Manual', 'Tar'), ('July', 'Hope');

INSERT INTO user_friends(user_id, friend_id)
VALUES (1, 2), (1, 3);