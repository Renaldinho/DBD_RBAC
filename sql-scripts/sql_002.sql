-- Creating some permissions

-- Basic CRUD Permissions (for any data type)
INSERT INTO permissions (permission_name) VALUES
                                              ('create'),
                                              ('read'),
                                              ('update'),
                                              ('delete');
    
-- Data-Specific Permissions
INSERT INTO permissions (permission_name) VALUES
                                              ('view_customer_data'),
                                              ('edit_customer_data'),
                                              ('view_financial_reports'),
                                              ('generate_reports'),
                                              ('export_data'),
                                              ('approve_orders'),
                                              ('cancel_orders');

-- User Management Permissions
INSERT INTO permissions (permission_name) VALUES
                                              ('create_users'),
                                              ('edit_users'),
                                              ('delete_users'),
                                              ('reset_passwords'),
                                              ('assign_roles');

-- System Administration Permissions
INSERT INTO permissions (permission_name) VALUES
                                              ('manage_database'),
                                              ('backup_database'),
                                              ('restore_database'),
                                              ('configure_settings');

-- Application-Specific Permissions
INSERT INTO permissions (permission_name) VALUES
                                              ('access_dashboard'),
                                              ('send_notifications'),
                                              ('schedule_tasks'),
                                              ('view_audit_logs');