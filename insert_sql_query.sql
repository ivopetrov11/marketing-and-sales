INSERT INTO company.leads (event_id, email, server_date, advertisement_id)
VALUES 
  (1,'vera@gmail.com','2017-01-04',12), 
  (2,'vera@gmail.com','2017-02-20',23), 
  (3,'chuck@yahoo.com','2017-02-03',40), 
  (4,'dave@gmail.com','2017-02-03',40),
  (5,'dave00@hotmail.com','2017-04-07',27);

INSERT INTO company.advertisements (advertisement_id, website_id)
VALUES
  (12, 1),
  (23, 2),
  (40, 3),
  (27, 4);

INSERT INTO `company.websites` (website_id, website_name)
VALUES
  (1, 'Yahoo'),
  (2, 'MSN'),
  (3, 'Google'),
  (4, 'Facebook');
