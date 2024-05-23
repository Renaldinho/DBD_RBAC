-- checking some users for permissions and roles

SELECT EXISTS (
    SELECT 1
    FROM users u
             JOIN user_role_assignments ura ON u.user_id = ura.user_id
             JOIN role_permission_assignments rpa ON ura.role_id = rpa.role_id
             JOIN permissions p ON rpa.permission_id = p.permission_id
    WHERE u.user_id = 2
      AND p.permission_id = 23
);

SELECT EXISTS (
    SELECT 1
    FROM users u
             JOIN user_role_assignments ura ON u.user_id = ura.user_id
             JOIN roles r ON ura.role_id = r.role_id
    WHERE u.user_id = 1
      AND r.role_name = 'admin'
);