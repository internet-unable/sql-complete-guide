INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES('Google', 'USA, California, Main street 12', '100', TRUE);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES('Apple', 'USA, California, Second street 32', '200', FALSE);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES('Nvidia', 'USA, California, Third street 48', '300', TRUE);

INSERT INTO conversations (user_name, employer_name, message, date_sent)
VALUES('Konstantin', 'Google', 'Hello Google', '2024-05-01 19:14:15');

INSERT INTO conversations (user_name, employer_name, message, date_sent)
VALUES('Andrew', 'Apple', 'Hello Apple', '2024-05-10 19:24:15');

INSERT INTO conversations (user_name, employer_name, message, date_sent)
VALUES('Alex', 'Nvidia', 'Hello Nvidia', '2024-05-20 19:34:15');