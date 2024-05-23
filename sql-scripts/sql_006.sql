-- Assigning some roles to users

-- Assign admin role to admin user
INSERT INTO user_role_assignments (user_id, role_id)
VALUES ((SELECT user_id FROM users WHERE username = 'admin'),
        (SELECT role_id FROM roles WHERE role_name = 'admin'));

-- Assign manager role to manager user
INSERT INTO user_role_assignments (user_id, role_id)
VALUES ((SELECT user_id FROM users WHERE username = 'manager1'),
        (SELECT role_id FROM roles WHERE role_name = 'manager'));

-- Assign base-user role to regular users
INSERT INTO user_role_assignments (user_id, role_id)
SELECT u.user_id, (SELECT role_id FROM roles WHERE role_name = 'base-user')
FROM users u
WHERE u.username IN ('user1', 'user2');

-- Assign public-user role to 'guest user 
INSERT INTO user_role_assignments (user_id, role_id)
VALUES ((SELECT user_id FROM users WHERE username = 'guest'),
        (SELECT role_id FROM roles WHERE role_name = 'public-user'));