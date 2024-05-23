-- Creating some users


CREATE EXTENSION pgcrypto; -- Extension for creating password hash for a level of real-ness

-- Creating Admin User
INSERT INTO users (username, password)
VALUES ('admin', crypt('admin_password', gen_salt('bf', 8)));

-- Creating Manager User
INSERT INTO users (username, password)
VALUES ('manager1', crypt('manager_password', gen_salt('bf', 8)));

-- Creating Base Users
INSERT INTO users (username, password)
VALUES ('user1', crypt('user_password', gen_salt('bf', 8)));
INSERT INTO users (username, password)
VALUES ('user2', crypt('user_password', gen_salt('bf', 8)));

-- Creating Public User
INSERT INTO users (username, password)
VALUES ('guest', crypt('guest_password', gen_salt('bf', 8)));