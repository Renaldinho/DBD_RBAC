-- Database creation
CREATE TABLE users (
                       user_id SERIAL PRIMARY KEY,
                       username VARCHAR(50) UNIQUE NOT NULL,
                       password VARCHAR(100) NOT NULL
);

CREATE TABLE roles (
                       role_id SERIAL PRIMARY KEY,
                       role_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE permissions (
                             permission_id SERIAL PRIMARY KEY,
                             permission_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE user_role_assignments (
                                       user_id INTEGER REFERENCES users(user_id) ON DELETE CASCADE,
                                       role_id INTEGER REFERENCES roles(role_id) ON DELETE CASCADE,
                                       PRIMARY KEY (user_id, role_id)
);

CREATE TABLE role_permission_assignments (
                                             role_id INTEGER REFERENCES roles(role_id) ON DELETE CASCADE,
                                             permission_id INTEGER REFERENCES permissions(permission_id) ON DELETE CASCADE,
                                             PRIMARY KEY (role_id, permission_id)
);
