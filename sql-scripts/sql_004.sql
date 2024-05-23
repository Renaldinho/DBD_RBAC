-- Assigning permissions to roles

-- Admin Role (all permissions)
INSERT INTO role_permission_assignments (role_id, permission_id)
SELECT r.role_id, p.permission_id
FROM roles r, permissions p
WHERE r.role_name = 'admin';

-- Manager Role (most permissions, excluding user/database management)
INSERT INTO role_permission_assignments (role_id, permission_id)
SELECT r.role_id, p.permission_id
FROM roles r, permissions p
WHERE r.role_name = 'manager'
  AND p.permission_name NOT IN ('create_users', 'edit_users', 'delete_users', 'reset_passwords',
                                'manage_database', 'backup_database', 'restore_database');

-- Base User (access to basic data and some actions)
INSERT INTO role_permission_assignments (role_id, permission_id)
SELECT r.role_id, p.permission_id
FROM roles r, permissions p
WHERE r.role_name = 'base-user'
  AND p.permission_name IN ('create', 'read', 'update', 'view_customer_data', 'generate_reports',
                            'access_dashboard', 'send_notifications');

-- Public User (very limited access)
INSERT INTO role_permission_assignments (role_id, permission_id)
SELECT r.role_id, p.permission_id
FROM roles r, permissions p
WHERE r.role_name = 'public-user'
  AND p.permission_name IN ('read', 'view_customer_data', 'access_dashboard');