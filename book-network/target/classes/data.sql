-- Insert roles
INSERT INTO role (name) VALUES
    ('USER'),
    ('ADMIN')
ON CONFLICT (name) DO NOTHING;

-- Insert a test admin user (password should be hashed in production)
INSERT INTO _user (firstname, lastname, date_of_birth, email, password, account_locked, enabled, created_date, last_modified_date) VALUES
('John', 'Doe', '1990-01-15', 'john.doe@example.com', '$2a$12$gwIvFmrT8kIOzFHJQqLzFuFYR2B8VWyA9lMpk3qSggeqMLqzYaXeO', FALSE, TRUE, NOW(), NOW());

-- Assign admin role to admin user
INSERT INTO _user_roles (user_id, roles_id)
SELECT u.id, r.id
FROM _user u, role r
WHERE u.email = 'john.doe@example.com' AND r.name = 'ADMIN'
ON CONFLICT DO NOTHING;
