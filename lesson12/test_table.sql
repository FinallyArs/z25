CREATE TABLE user_table (
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(60) NOT NULL,
    age smallint NOT NULL,
    email varchar(60) NOT NULL UNIQUE
);

CREATE TABLE questions_table (
    question_id SERIAL PRIMARY KEY,
    question TEXT NOT NULL,
    user_id INTEGER references user_table(user_id)
);

CREATE TABLE answers_table (
    answer_id SERIAL PRIMARY KEY,
    answer TEXT NOT NULL,
    user_id INTEGER references user_table(user_id),
    question_id INTEGER references questions_table(question_id)
);


INSERT INTO user_table VALUES (
1, 'Ronald', 23, 'jim@mail.ru'), (2, 'John', 35, 'john@gmail.com'), (3, 'George', 44, 'george@gmail.com') (
4, 'Mike', 30, 'Mike@gmail.com');

INSERT INTO questions_table VALUES (
1, 'Do you ....'), (2, 'Have you ever ...'), (3, 'Did you ..'), (4, 'Are you ..');

INSERT INTO answers_table VALUES (
1, 'YES'), (2, 'NO'), (3, 'SOMETIMES'), (4, 'SELDOM');

UPDATE questions_table SET user_id = 2 WHERE question_id = 1;
UPDATE questions_table SET user_id = 3 WHERE question_id = 2
UPDATE questions_table SET user_id = 1 WHERE question_id = 4
UPDATE questions_table SET user_id = 4 WHERE question_id = 3;

UPDATE answers_table SET user_id = 2, question_id = 1  WHERE answer_id = 3;
UPDATE answers_table SET user_id = 3, question_id = 2 WHERE answer_id = 4;
UPDATE answers_table SET user_id = 1, question_id = 4 WHERE answer_id = 2;
UPDATE answers_table SET user_id = 4, question_id = 3 WHERE answer_id = 1;

SELECT * FROM answers_table ORDER BY answers_id;

