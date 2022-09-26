select current_timestamp;

INSERT INTO `user`(email, `password`, `role`, `name`, last_name, age) VALUES("jcampos.jc38@gmail.com", "password", "USER,ADMIN", "Jesus", "Campos", 27);
INSERT INTO `user`(email, `password`, `role`, `name`, last_name, age) VALUES("jcampos.martinez38@gmail.com", "password", "USER,ADMIN", "Antonio", "Martinez", 27);
INSERT INTO `user`(email, `password`, `role`, `name`, last_name, age) VALUES("JesusantonioC@gmail.com", "password", "USER", "John", "Smith", 37);

SELECT * FROM `user`;
commit;