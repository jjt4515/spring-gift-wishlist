CREATE TABLE product (
                         id BIGINT AUTO_INCREMENT PRIMARY KEY,
                         name VARCHAR(255) NOT NULL,
                         price BIGINT NOT NULL,
                         imageUrl VARCHAR(255)
);
CREATE TABLE wishlist (
                          id BIGINT AUTO_INCREMENT PRIMARY KEY,
                          member_id BIGINT NOT NULL,
                          item_name VARCHAR(255) NOT NULL,
                          CONSTRAINT fk_member
                              FOREIGN KEY (member_id)
                                  REFERENCES member(id)
                                  ON DELETE CASCADE
);