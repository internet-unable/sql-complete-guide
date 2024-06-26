INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES('Google', 'USA, California, Main street 12', '100', TRUE);

INSERT INTO employers (company_name, company_address, yearly_revenue)
VALUES('Apple', 'USA, California, Second street 32', '200');

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES('Nvidia', 'USA, California, Third street 48', '300', TRUE);

INSERT INTO conversations (user_name, employer_name, message)
VALUES('Konstantin', 'Google', 'Hello Google');

INSERT INTO conversations (user_name, employer_name, message)
VALUES('Andrew', 'Apple', 'Hello Apple');

INSERT INTO conversations (user_name, employer_name, message)
VALUES('Alex', 'Nvidia', 'Hello Nvidia');