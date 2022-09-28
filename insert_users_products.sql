select current_timestamp;
use ordermanagement;
INSERT INTO `user`(email, `password`, `role`, `name`, last_name, age) VALUES("jcampos.jc38@gmail.com", "$2a$12$xvH0d3xlbokfSeHkT7PTIunSVYuQ8WCmmDR7jIFZ8gGCY6PwXG.CC", "USER,ADMIN", "Jesus", "Campos", 27);
INSERT INTO `user`(email, `password`, `role`, `name`, last_name, age) VALUES("jcampos.martinez38@gmail.com", "$2a$12$xvH0d3xlbokfSeHkT7PTIunSVYuQ8WCmmDR7jIFZ8gGCY6PwXG.CC", "USER,ADMIN", "Antonio", "Martinez", 27);
INSERT INTO `user`(email, `password`, `role`, `name`, last_name, age) VALUES("JesusantonioC@gmail.com", "$2a$12$xvH0d3xlbokfSeHkT7PTIunSVYuQ8WCmmDR7jIFZ8gGCY6PwXG.CC", "USER", "John", "Smith", 37);
SELECT * FROM `user`;

INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product1", "Description 1", 564.22, 10, "");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product11", "Description 2", 234.67, 100, "");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product2", "Description 3", 654.78, 20, "");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product22", "Description 4", 332.53, 7, "");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product3", "Description 5", 785.11, 0, "");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product33", "Description 6", 11.44, 234, "");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product4", "Description 7", 87.0, 12, "");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product44", "Description 8", 12.65, 1, "");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product5", "Description 9", 65.12, 0, "");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product5", "Description 10", 123.09, 34, "");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product6", "Description 11", 65.12, 0, "");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product66", "Description 12", 123.09, 34, "");

INSERT INTO address(user_id, street_address, city, state, country, zip_code) VALUES(1, "5786 Peachtree Dunwoody Rd", "Atlanta", "GA", "USA", 30342);
INSERT INTO address(user_id, street_address, city, state, country, zip_code) VALUES(1, "Orizaba 266 La Roma", "CDMX", "Mexico", "Mexico", 10394);
INSERT INTO address(user_id, street_address, city, state, country, zip_code) VALUES(1, "3125 Evergreen St", "San Diego", "CA", "USA", 12343);

INSERT INTO 

INSERT INTO product VALUES()