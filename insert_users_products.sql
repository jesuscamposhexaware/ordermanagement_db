select current_timestamp;
use ordermanagement;
INSERT INTO `user`(email, `password`, `role`, `name`, last_name, age) VALUES("jcampos.jc38@gmail.com", "$2a$12$xvH0d3xlbokfSeHkT7PTIunSVYuQ8WCmmDR7jIFZ8gGCY6PwXG.CC", "USER,ADMIN", "Jesus", "Campos", 27);
INSERT INTO `user`(email, `password`, `role`, `name`, last_name, age) VALUES("jcampos.martinez38@gmail.com", "$2a$12$xvH0d3xlbokfSeHkT7PTIunSVYuQ8WCmmDR7jIFZ8gGCY6PwXG.CC", "USER,ADMIN", "Antonio", "Martinez", 27);
INSERT INTO `user`(email, `password`, `role`, `name`, last_name, age) VALUES("JesusantonioC@gmail.com", "$2a$12$xvH0d3xlbokfSeHkT7PTIunSVYuQ8WCmmDR7jIFZ8gGCY6PwXG.CC", "USER", "John", "Smith", 37);
SELECT * FROM `user`;

INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product1", "This is the description for product 1", 564.22, 10, "https://picsum.photos/id/1/300/200");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product11", "This is the description for product 2", 234.67, 100, "https://picsum.photos/id/11/300/200");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product2", "This is the description for product 3", 654.78, 20, "https://picsum.photos/id/2/300/200");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product22", "This is the description for product 4", 332.53, 7, "https://picsum.photos/id/22/300/200");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product3", "This is the description for product 5", 785.11, 0, "https://picsum.photos/id/3/300/200");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product33", "This is the description for product 6", 11.44, 234, "https://picsum.photos/id/33/300/200");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product4", "This is the description for product 7", 87.0, 12, "https://picsum.photos/id/4/300/200");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product44", "This is the description for product 8", 12.65, 1, "https://picsum.photos/id/44/300/200");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product5", "This is the description for product 9", 65.12, 0, "https://picsum.photos/id/5/300/200");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product5", "This is the description for product 10", 123.09, 34, "https://picsum.photos/id/55/300/200");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product6", "This is the description for product 11", 65.12, 0, "https://picsum.photos/id/6/300/200");
INSERT INTO product(`name`, `description`, price, stock, picture) VALUES("Product66", "This is the description for product 12", 123.09, 34, "https://picsum.photos/id/66/300/200");

INSERT INTO address(user_id, street_address, city, state, country, zip_code) VALUES(1, "5786 Peachtree Dunwoody Rd", "Atlanta", "GA", "USA", 30342);
INSERT INTO address(user_id, street_address, city, state, country, zip_code) VALUES(1, "Orizaba 266 La Roma", "CDMX", "Mexico", "Mexico", 10394);
INSERT INTO address(user_id, street_address, city, state, country, zip_code) VALUES(1, "3125 Evergreen St", "San Diego", "CA", "USA", 12343);

SELECT * FROM orderdetail;
SELECT * FROM `order`;
INSERT INTO product VALUES()